package com._520it.crm.util;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;

import com._520it.crm.domain.Employee;
import com._520it.crm.domain.Log;
import com._520it.crm.service.ILogService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class LogUtil {
	@Autowired
	private ILogService logService;
	
	public void writeLog(JoinPoint jp) {
		if(jp.getTarget() instanceof ILogService) {
			return;
		}
		Log log=new Log();		
		log.setOpip(UserContext.get().getRemoteAddr());
		log.setOptime(new Date());
		Employee currUser=(Employee) UserContext.get().getSession().getAttribute(UserContext.USERINSESSION);
		log.setOpuser(currUser);
		String function=jp.getTarget().getClass().getName()+":"+jp.getSignature().getName();
		log.setFunction(function);
		
		ObjectMapper om=new ObjectMapper();
		String params;
		try {
			params = om.writeValueAsString(jp.getArgs());
			log.setParams(params);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logService.insert(log);
	}

}
