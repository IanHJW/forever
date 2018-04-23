package com.lph.forever.interceptors;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FileFilter implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 获得在下面代码中要用的request,response,session对象
		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpServletResponse servletResponse = (HttpServletResponse) response;
		HttpSession session = servletRequest.getSession();
		// 获得用户请求的URI
		String path = servletRequest.getRequestURI();
		
		if (path.indexOf("LoginOut.action") > -1) {
			servletRequest.getRequestDispatcher("/index.jsp").forward(servletRequest, servletResponse);
			session.removeAttribute("user");
			return;
		}
		
		if (path.indexOf("Register") > 0) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		
		if (path.indexOf("Login.jsp") > -1 || path.indexOf("Login.action") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		
		if (session.getAttribute("user") == null) {
			servletRequest.getRequestDispatcher("/Login.jsp").forward(servletRequest, servletResponse);
		}else {
			chain.doFilter(request, response);	
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}
}
