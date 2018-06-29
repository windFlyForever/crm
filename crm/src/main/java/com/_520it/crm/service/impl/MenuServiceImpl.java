package com._520it.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com._520it.crm.domain.Menu;
import com._520it.crm.mapper.MenuMapper;
import com._520it.crm.service.IMenuService;

@Service
public class MenuServiceImpl implements IMenuService {
	
	@Autowired
	private MenuMapper menuDao;
	
	@Override
	public List<Menu> queryForRoot() {
		// TODO Auto-generated method stub
		return menuDao.queryForRoot();
	}

}
