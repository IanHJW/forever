package com.lph.forever.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;


public class SecondInterceptor implements HandlerInterceptor {
		
	public boolean preHandler(HttpServletRequest req, HttpServletResponse rep, Object handler) throws Exception{
		//获取请求的url
		String url = req.getRequestURI();
		if(url.indexOf("User/Login.action")>0) {
			return true;
		}
		//获取session
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		
		if(username != null){
			return true;
		}
		//不符合的，跳转到登陆界面
		req.getRequestDispatcher("/User/Login.jsp").forward(req, rep);;
		return false;
	}
}
