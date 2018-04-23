package com.lph.forever.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lph.forever.po.BbsCustom;
import com.lph.forever.service.BbsCustomService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月19日 上午9:26:50
* @Function: TouristController.java
* @version 1.0 
* @Description: 游客控制台
* @parameter  
* @return  
*/
@Controller
@RequestMapping("/Tourist")
public class TouristController {
	@Autowired
	private BbsCustomService bbsCustomService;
	
	//游客进入论坛
	@RequestMapping("/TouristBbs")
	public ModelAndView TouristBbs(HttpSession session) {
		ModelAndView model = new ModelAndView();
		
		ArrayList<BbsCustom> bbs = bbsCustomService.findTouristBbs();
		
		session.setAttribute("bbs",bbs );
		
		model.setViewName("TouristBbs");
		return model;		
	}
	

}
