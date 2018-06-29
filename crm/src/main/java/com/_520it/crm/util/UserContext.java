package com._520it.crm.util;

import javax.servlet.http.HttpServletRequest;

public class UserContext {
	
	public static final String USERINSESSION="USER_IN_SESSION";

	public static final String PERMISSIONINSESSION = "PERMISSION_IN_SESSION";

	public static final String MENUINSESSION = "MENU_IN_SESSION";
	
	private static ThreadLocal<HttpServletRequest> local=new ThreadLocal<HttpServletRequest>();
	
	
	public static void set(HttpServletRequest httpServletRequest) {
		local.set(httpServletRequest);
	}
	
	public static HttpServletRequest get() {
		return local.get();
	}

}
