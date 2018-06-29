package com._520it.crm.util;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com._520it.crm.domain.Employee;
import com._520it.crm.domain.Menu;
import com._520it.crm.domain.Permission;
import com._520it.crm.service.IPermissionService;


@Component
public class PermissionUtil {
	
	
	private  static IPermissionService permissionService;
	
	
	@Autowired
	public void setPermissionService(IPermissionService permissionService) {
		PermissionUtil.permissionService = permissionService;
	}



	public static boolean checkPermission(String function) {
		// TODO Auto-generated method stub
		Employee currentUser=(Employee) UserContext.get().getSession().getAttribute(UserContext.USERINSESSION);
		//如果是超级管理员放行
		if(currentUser.getAdmin()) {
			return true;
		}
		
		//获得所有权限
		if(CommonUtil.allPermission.size()==0) {
			List<Permission> permissions=permissionService.selectAll();
			for (Permission p : permissions) {
				CommonUtil.allPermission.add(p.getResource());
			}
		}
		
		if(CommonUtil.allPermission.contains(function)) {
			//如果有，该地址进行权限控制
			//先拿到用户的权限集合,从session获得该用户的所有权限
			List<String> userPsermission=(List<String>) UserContext.get().getSession().getAttribute(UserContext.PERMISSIONINSESSION);
			if(userPsermission.contains(function)) {
				return true;
			}else {
				//ALL权限匹配
				String allPermission=function.split(":")[0]+":"+"ALL";
				if(userPsermission.contains(allPermission)) {
					return true;
				}else {
					return false;
				}				
			}
		}else {
			//如果没有，不需要权限控制放行
			return true;
		}
	}



	public static void checkMenuPermission(List<Menu> menus) {
		// TODO Auto-generated method stub
		
		List<String> userPermission=(List<String>) UserContext.get().getSession().getAttribute(UserContext.PERMISSIONINSESSION);
		
		for (int i = menus.size()-1; i >=0; i--) {
			Menu menu=menus.get(i);
			if(StringUtils.isNotBlank(menu.getFunction())) {
				if(!userPermission.contains(menu.getFunction())) {
					menus.remove(i);
				}
			}
			
			if(menu.getChildren()!=null&&menu.getChildren().size()>0) {
				checkMenuPermission(menu.getChildren());
			}
			
		}
	}

}
