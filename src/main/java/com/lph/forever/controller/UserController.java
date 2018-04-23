package com.lph.forever.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lph.forever.po.BbsAgree;
import com.lph.forever.po.BbsCustom;
import com.lph.forever.po.User;
import com.lph.forever.po.UserInfo;
import com.lph.forever.po.UserInfoCostom;
import com.lph.forever.service.BbsAgreeService;
import com.lph.forever.service.BbsCustomService;
import com.lph.forever.service.UserInfoCostomService;
import com.lph.forever.service.UserInfoService;
import com.lph.forever.service.UserService;
import com.lph.forever.util.FileUpLoad;


/**  
* @ClassName: UserController  
* @Description: 用户功能基本实现Service
* @author 黄军武
* @date 2017年12月6日  
*/  
@Controller
@RequestMapping("/User")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserInfoCostomService userInfoCostomService;
	@Autowired
	private UserInfoService userInfoservice;
	@Autowired
	private BbsCustomService bbsCustomService;
	@Autowired
	private BbsAgreeService bbsAgreeService;

	// 登录 （硬编码不推荐使用）
	@RequestMapping("/Login")
	public ModelAndView Login(String username,String password,String user_input_verifyCode,HttpSession session) {
		ModelAndView model = new ModelAndView();
		session.removeAttribute("error");
		String random = (String) session.getAttribute("verifyCodeValue");
		UserInfoCostom user = userInfoCostomService.selcetUserInfoCostom(username,password);		
		
		if (!user_input_verifyCode.toLowerCase().equals(random.toLowerCase())) 
			session.setAttribute("error", "验证码错误");
		
		if (username == "" || password == "" || user == null) 
			session.setAttribute("error", "密码或用户名错误");	
			
		if (session.getAttribute("error")!= null) {
			model.setViewName("redirect:Login");
			return model;
		}
		
		// 登录成功，将user对象设置到HttpSession作用范围域中
		session.setAttribute("user", user);
		model.setViewName("UserIndex");
		return model;
	}

	// 信息更新 
	@RequestMapping("/userInfoCostom")
	public ModelAndView UserInfoCostom(MultipartFile file,UserInfoCostom userInfoCostom, HttpSession session)
			throws Exception {
		ModelAndView model = new ModelAndView();
		session.removeAttribute("error");
		UserInfoCostom a = (UserInfoCostom) session.getAttribute("user");
		User user = a.getUser();
		userInfoCostom.setUserid(a.getUserid());

		if (userInfoCostom.getUser().getUsername().length() != 0) {
			if (userService.findUserByName(userInfoCostom.getUser().getUsername()) == "ERROR") {
				session.setAttribute("error", "用户已存在");
				model.setViewName("UserCenter/UserInfoModify");
				return model;
			}
			user.setUsername(userInfoCostom.getUser().getUsername());
			userService.update(user);
		}

		if (userInfoCostom.getAdress().length() != 0 || userInfoCostom.getEducation().length() != 0
				|| userInfoCostom.getUserhobby().length() != 0 || userInfoCostom.getSex() != a.getSex()) {
				userInfoCostomService.updateUserInfoCostom(userInfoCostom);				
		}
		
		//图片上传
		FileUpLoad fileUpLoad = new FileUpLoad();
		List<String> list = fileUpLoad.FileUpLoad(file);
		user.setUserimgpath(list.get(0));
		userService.update(user);
		
		UserInfoCostom userInfo = userInfoCostomService.selcetUserInfoCostom(user);
		session.setAttribute("user", userInfo);
		model.setViewName("UserCenter/UserInfo");
		return model;
	}

	// 注册
	@RequestMapping("/Register")
	public String Register(User user, String pasw2, HttpSession session) {
		session.removeAttribute("error");
		if (userService.findUserByName(user.getUsername()) == "ERROR")
			session.setAttribute("error", "用户已存在");

		if (!pasw2.equals(user.getPassword()))
			session.setAttribute("error", "密码不一致");

		if (session.getAttribute("error") != null) {
			return "Register";
		}
		
		userService.insert(user);
		
		User find = userService.validate(user);
		
		UserInfo useInfo = new UserInfo();
		useInfo.setUserid(find.getUserid());
		userInfoservice.insert(useInfo);
		return ("Register");
	}

	// @ResponseBody 返回类型注解成ajxa类型 ，
	// 用户安全设置
	@RequestMapping("/userInfoSafe")
	public ModelAndView UserInfoSafe(String password,String password1, 
			String email, String phone , UserInfoCostom userInfoCostom,
			HttpServletRequest req, HttpSession session) {
		
		ModelAndView model = new ModelAndView();
		session.removeAttribute("error");
		UserInfoCostom update = (UserInfoCostom) session.getAttribute("user");
		User user = update.getUser();
		userInfoCostom.setUserid(update.getUserid());
		

		if (!email.isEmpty()) {
			user.setEmail(email);
		}
		if(!phone.isEmpty()) {
			userInfoCostom.setPhone(phone);
			userInfoCostomService.updateUserInfoCostom(userInfoCostom);			
		}
		if (!password.isEmpty() && !password1.isEmpty()  ) {
			if(!password.equals(password1)) {
				session.setAttribute("error", "密码错误");
				model.setViewName("UserCenter/UserInfoSafe");
				return model;
			}
			user.setPassword(password);
		}
		userService.update(user);
		
		// 查询数据
		UserInfoCostom userInfo = userInfoCostomService.selcetUserInfoCostom(user);

		// 通过session传值给前台
		session.setAttribute("user", userInfo);
		model.setViewName("UserCenter/UserInfo");
		return model;

	}

	// 判断是否加入家族
	@RequestMapping("/judgment")	
	public @ResponseBody String Judgment(ModelMap model, HttpSession session, int userId) {
		User user1 = userService.findUserById(userId);
		if (!user1.getGroupname().equals(null)&&!user1.getGroupname().isEmpty()) {
			return "success";
		}
		return "no";
	}
	
	//游客进入论坛
		@RequestMapping("forun")
		public ModelAndView Forum(HttpSession session) {
			ModelAndView model = new ModelAndView();
			UserInfoCostom userInfoCostom = (UserInfoCostom) session.getAttribute("user");
			User user = userInfoCostom.getUser();
			ArrayList<BbsCustom> bbs = bbsCustomService.findTouristBbs();
			ArrayList<BbsAgree> bbsagree = bbsAgreeService.selectByUserId(user.getUserid());
			//判断 是否点赞
			for(int i=0;i<bbs.size();i++) {
				for(int j=0;j<bbsagree.size();j++) {
					if(bbs.get(i).getPostid()==bbsagree.get(j).getPostid()) 
					{
						bbs.get(i).setJudgment(1);
						break;
					}else 
					{
						bbs.get(i).setJudgment(0);
					}
				}
			}
			//查询用户图片
			for(int i=0;i<bbs.size();i++) {
				User user1 = userService.selectByUsername(bbs.get(i).getUsername());
				bbs.get(i).setUserimgpath(user1.getUserimgpath());
				bbs.get(i).setGroupname(user1.getGroupname());
			}
			session.setAttribute("bbs", bbs);
			model.setViewName("UserBbs");
			return model;		
		}
		
		
}
