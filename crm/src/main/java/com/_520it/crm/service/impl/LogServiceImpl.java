package com._520it.crm.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com._520it.crm.domain.Log;
import com._520it.crm.mapper.LogMapper;
import com._520it.crm.page.PageResult;
import com._520it.crm.service.ILogService;

@Service
public class LogServiceImpl implements ILogService {
	
	@Autowired
	private LogMapper logDao;
	
	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return logDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Log record) {
		// TODO Auto-generated method stub
		int row=logDao.insert(record);
	
		return row;
	}

	@Override
	public Log selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return logDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Log> selectAll() {
		// TODO Auto-generated method stub
		return logDao.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Log record) {
		// TODO Auto-generated method stub
		return logDao.updateByPrimaryKey(record);
	}

}
