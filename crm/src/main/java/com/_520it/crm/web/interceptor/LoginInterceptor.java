package com._520it.crm.web.interceptor;

import static org.hamcrest.CoreMatchers.instanceOf;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com._520it.crm.domain.Employee;
import com._520it.crm.util.PermissionUtil;
import com._520it.crm.util.UserContext;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		UserContext.set(request);
		Employee emp=(Employee) request.getSession().getAttribute(UserContext.USERINSESSION);
		if(emp==null) {
			response.sendRedirect("/login.jsp");
			return false;
		}
		//已经登录成功，在检查权限	
		if(handler instanceof HandlerMethod) {
			HandlerMethod methObj=(HandlerMethod) handler;		
			String function=methObj.getBean().getClass().getName()+":"+methObj.getMethod().getName();
			boolean flag=PermissionUtil.checkPermission(function);
			
			if(flag) {
				return true;
			}else {

				if(methObj.getMethod().isAnnotationPresent(ResponseBody.class)) {
					//如果是ajax
					response.sendRedirect("/nopermission.json");
				}else {
					//如果是页面
					response.sendRedirect("/nopermission.jsp");
				}			
				return false;
			}
		}
		return true;
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
