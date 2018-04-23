package com.lph.forever.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lph.forever.po.Bbs;
import com.lph.forever.po.BbsAgree;
import com.lph.forever.po.BbsCustom;
import com.lph.forever.po.BbsMsg;
import com.lph.forever.po.BbsMsgReply;
import com.lph.forever.po.BbsMsgo;
import com.lph.forever.po.Group;
import com.lph.forever.po.GroupInfoCostom;
import com.lph.forever.po.GroupVideo;
import com.lph.forever.po.User;
import com.lph.forever.po.UserInfoCostom;
import com.lph.forever.service.BbsAgreeService;
import com.lph.forever.service.BbsCustomService;
import com.lph.forever.service.BbsMsgAgreeService;
import com.lph.forever.service.BbsMsgReplyService;
import com.lph.forever.service.BbsMsgService;
import com.lph.forever.service.BbsMsgoService;
import com.lph.forever.service.BbsService;
import com.lph.forever.service.GroupInfoCostomService;
import com.lph.forever.service.GroupService;
import com.lph.forever.service.GroupVideoService;
import com.lph.forever.service.UserService;
import com.lph.forever.util.FileUpLoad;

@Controller
@RequestMapping("/UserFamily")
public class UserFamilyController extends FileUpLoad{
	@Autowired
	private UserService userService;
	@Autowired
	private GroupInfoCostomService groupInfoCostomService;
	@Autowired
	private GroupVideoService groupVideoService;
	@Autowired
	private GroupService groupService;
	@Autowired
	private BbsCustomService bbsCustomService;
	@Autowired
	private BbsAgreeService bbsAgreeService;
	@Autowired
	private BbsService bbsService;
	@Autowired
	private BbsMsgService bbsmsgService;
	@Autowired
	private BbsMsgReplyService bbsmsgReplyService;
	@Autowired
	private BbsMsgAgreeService bbsMsgAgreeService;
	@Autowired
	private BbsMsgoService bbsMsgoService;
	
	// 进入家族
	@RequestMapping("/userFamily")
	public ModelAndView UserFamily(HttpSession session) {
		ModelAndView model = new ModelAndView();
		
		UserInfoCostom user = (UserInfoCostom)session.getAttribute("user");
		//查询家族视频
		ArrayList<GroupVideo> groupVideo = groupVideoService.findGroupVideoByList(user.getUser().getGroupname());
		//查询家族论坛
//		GroupInfoCostom groupInfo = groupInfoCostomService.selectByGroupName(user.getUser());
//		ArrayList<Bbs> bbs = bbsService.selectByGroupIdList(groupInfo.getGroupid());
//		session.setAttribute("bbs", bbs);
		
		session.setAttribute("groupVideo", groupVideo);
		model.setViewName("/User/UserFamily/EditGroup");
		return model;
	}
	
	
	
	// 进去家族论坛
	@RequestMapping("/userFamilyBbs")
	public ModelAndView UserFamilyBbs(HttpSession session) {
		ModelAndView model = new ModelAndView();
		UserInfoCostom userInfoCostom = (UserInfoCostom) session.getAttribute("user");
		User user = userInfoCostom.getUser();
		GroupInfoCostom groupInfo = groupInfoCostomService.selectByGroupName(user);
		ArrayList<BbsCustom> bbs = bbsCustomService.selectByGroupIdAndGrorpNameList(groupInfo.getGroupid(),groupInfo.getGroupname());
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
		}
		session.setAttribute("bbs", bbs);
		model.setViewName("/User/UserFamily/UserFamilyBbs");
		return model;
	}

	//发布话题
	@RequestMapping("InsertTopic")
	public @ResponseBody String InsertTopic(HttpSession session,String postname,String postdetail) {
		ModelAndView model = new ModelAndView();
		UserInfoCostom userInfo = (UserInfoCostom) session.getAttribute("user");
		User user = userInfo.getUser();
		Group group = groupService.selectByGroupName(user.getGroupname());
		Bbs b = new Bbs();
		if(!postdetail.isEmpty()&& !postname.isEmpty()) {			
			b.setPostdetail(postdetail);
			b.setPostname(postname);
			b.setUsername(user.getUsername());
			b.setGroupid(group.getGroupid());
			b.setAgreenumber(0);
			Date dt = new Date();
			b.setPosttime(dt);
			bbsService.insertSelective(b);
		
		//查询bbs所有数据		
		ArrayList<BbsCustom> bbs= bbsCustomService.selectByGroupIdAndGrorpNameList(group.getGroupid(),group.getGroupname());
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
		}
		session.setAttribute("bbs", bbs);
		return "success";
		}
		return "error";
	}



	// 上传家族视频
	@RequestMapping("/familyVideoUpload")
	public ModelAndView FamilyVideoUpload ( HttpSession session, MultipartFile file, HttpServletRequest req) 
			throws Exception {
		ModelAndView model = new ModelAndView();
		UserInfoCostom userInfoCostom = (UserInfoCostom) session.getAttribute("user");
		User user = userInfoCostom.getUser();
		GroupInfoCostom groupInfo = groupInfoCostomService.selectByGroupName(user);
		
		GroupVideo groupVideo1 = new GroupVideo();
		
		//视频上传
		FileUpLoad fileUpLoad = new FileUpLoad();
		List<String> list=fileUpLoad.FileUpLoad(file);
		//视频路径名
		groupVideo1.setVideopath(list.get(0));
		groupVideo1.setGroupname(user.getGroupname());
		//视频名称
		groupVideo1.setVideoname(list.get(1));
		//上传时间
		Date dt = new Date();
		groupVideo1.setUpload(dt);
		groupVideoService.insertByGroupName(groupVideo1);
		
		ArrayList<GroupVideo> groupVideo = groupVideoService.findGroupVideoByList(user.getGroupname());
		session.setAttribute("groupVideo", groupVideo);
		model.setViewName("/User/UserFamilyVedio/UserFamilyVedio");
		return model;
	}
	
	//点赞
	@RequestMapping("/like")	
	@ResponseBody
	public String Like( Integer postId ,  HttpSession session) {
		UserInfoCostom userInfoCostom = (UserInfoCostom) session.getAttribute("user");
		User user = userInfoCostom.getUser();
		ArrayList<BbsAgree> bbsAgree = bbsAgreeService.selectByUserIdAndpostId(user.getUserid(), postId);
		if(bbsAgree != null && bbsAgree.size()>0) {
			//找到记录删除
			BbsAgree bag = bbsAgree.get(0);
			//删除
			bbsAgreeService.deleteByPrimaryKey(bag.getUserid(),bag.getPostid());
			//文章点赞数减一
			Bbs bbs = bbsService.selectByPrimaryKey(postId);
			bbs.setAgreenumber(bbs.getAgreenumber()-1);
			bbsService.updateByPrimaryKeySelective(bbs);
			return "del";		
		}else {
			//没有找到记录，添加记录，点赞加一
			BbsAgree bag = new BbsAgree();
			bag.setPostid(postId);
			bag.setUserid(user.getUserid());
			//添加记录
			bbsAgreeService.insert(bag);
			//点赞加一
			Bbs bbs = bbsService.selectByPrimaryKey(postId);
			bbs.setAgreenumber(bbs.getAgreenumber()+1);
			bbsService.updateByPrimaryKeySelective(bbs);
			return "add";		
		}		
	}
	
	//插入第一层回复
	@RequestMapping("/insertPostOne")
	public @ResponseBody String InsertPostOne(Integer postId, String msg,HttpSession session) {
		UserInfoCostom userInfoCostom = (UserInfoCostom) session.getAttribute("user");
		User user = userInfoCostom.getUser();
		//插入
		BbsMsgo bbs = new BbsMsgo(); 
		if(!msg.isEmpty()) {
			bbs.setMsg(msg);
			bbs.setPostid(postId);
			bbs.setUsername(user.getUsername());
			Date dt = new Date();
			bbs.setMsgtime(dt);			
			bbs.setAgreetime(0);
			bbsMsgoService.insertSelective(bbs);			
			//查询数据
			ArrayList<BbsMsgo> bbsmsg = bbsMsgoService.selectByOnepost(postId);		
			//查询用户图片
			for(int i=0;i<bbsmsg.size();i++) {
				User user1 = userService.selectByUsername(bbsmsg.get(i).getUsername());
				bbsmsg.get(i).setUserimgpath(user1.getUserimgpath());
				bbsmsg.get(i).setGroupname(user1.getGroupname());
			}
			session.setAttribute("bbsmsg", bbsmsg);
			session.setAttribute("postId", postId);
			
			return "success";		
		}else {
			session.setAttribute("error","内容不能为空");			
			return "error";	
		}
		
	}
	
	//插入第二层回复
	@RequestMapping("/insertPostTow")
	public ModelAndView InsertPostTow(String username,Integer postId, String msg,HttpSession session) {
		ModelAndView model = new ModelAndView();
		BbsMsg bbs = new BbsMsg();
		BbsMsgReply bmr = new BbsMsgReply();
		ArrayList<BbsMsgo> bmo = bbsMsgoService.selectByOnepost(postId);
		for(int j=0;j<bmo.size();j++) {
			if(!bmo.get(j).getUsername().equals(username)&&! bmo.get(j).getPostid().equals(postId)&&!msg.isEmpty()) {
				bbs.setMsg(msg);
				bbs.setPostid(postId);
				bbs.setUsername(username);
				Date dt = new Date();
				bbs.setMsgtime(dt);	
				bbs.setReplyid(postId);
				bbsmsgService.insertSelective(bbs);
				
				//查询Bbs_msgo表			
				bmr.setMsgid(bmo.get(j).getMsgoid());//msgoId				
				bmr.setReplyid(postId);			
				bbsmsgReplyService.insert(bmr);
				
				session.setAttribute("bbsITow", bbs);
				model.setViewName("/User/UserFamily/UserFamilyBbsRight");
			}else {
				session.setAttribute("error","内容为空或者已经评论");			
				model.setViewName("/User/UserFamily/UserFamilyBbsRight");
			}
		}
		return model;
	}
	
	//查询第一层回复
//		@RequestMapping("/findOnepost")
//		public ModelAndView FindOnepost(	Integer postId,HttpSession session) {
//			ModelAndView model = new ModelAndView();
//			ArrayList<BbsMsgo> bbsmsg = bbsMsgoService.selectByOnepost(postId);		
//			//查询用户图片
//			for(int i=0;i<bbsmsg.size();i++) {
//				User user1 = userService.selectByUsername(bbsmsg.get(i).getUsername());
//				bbsmsg.get(i).setUserimgpath(user1.getUserimgpath());
//			}
//			session.setAttribute("bbsmsg", bbsmsg);
//			model.setViewName("/User/UserFamily/UserFamilyPeople");		
//			return model;		
//		}

		@RequestMapping("/findOnepost")
		public @ResponseBody String FindOnepost(	Integer postId,HttpSession session) {
			//第一层回复查询
			ArrayList<BbsMsgo> bbsmsg = bbsMsgoService.selectByOnepost(postId);		
			//查询用户图片
			for(int i=0;i<bbsmsg.size();i++) {
				User user1 = userService.selectByUsername(bbsmsg.get(i).getUsername());
				bbsmsg.get(i).setUserimgpath(user1.getUserimgpath());
				bbsmsg.get(i).setGroupname(user1.getGroupname());
			}
			session.setAttribute("bbsmsg", bbsmsg);
			session.setAttribute("postId", postId);
			
			
			return "success";		
		}


	//查询第二层回复
	@RequestMapping("/findTowpost")
	public ModelAndView FindTowpost(	Integer postId,HttpSession session) {
		System.out.println(postId);
		ModelAndView model = new ModelAndView();
		ArrayList<BbsMsg> bbsmsgT = bbsmsgService.selectByTowpost(postId);
		//查询用户图片
		for(int i=0;i<bbsmsgT.size();i++) {
			User user1 = userService.selectByUsername(bbsmsgT.get(i).getUsername());
			bbsmsgT.get(i).setUserimgpath(user1.getUserimgpath());
			bbsmsgT.get(i).setGroupname(user1.getGroupname());
		}
		session.setAttribute("bbsmsgT", bbsmsgT);
		model.setViewName("/User/UserFamily/UserFamilyPeople");		
		return model;		
	}
	
	
	
	
}
