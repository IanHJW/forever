package com.lph.forever.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

/**
 * @ClassName: LoginInterceptor
 * @Description: 登陆拦截器实现
 * @author Hr222
 * @date 2017年12月7日
 * 
 *       注：Spring拦截器只会对请求进行拦截。对于访问静态资源是不会进行拦截的因此对于直接访问静态资源需要在进一步的拦截
 */
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		String url = request.getRequestURI();

		if (url.indexOf("Login.action") >= 0 || url.indexOf("getVerifyCode.action") > 0
				|| url.indexOf("Register.action") > 0) {
			return true;
		}

		HttpSession session = request.getSession();

		if (session.getAttribute("user") != null) {
			return true;
		}

		request.getRequestDispatcher("/Login.jsp").forward(request, response);
		return false;
	}

}
