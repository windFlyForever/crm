package com._520it.crm.util;

public class AjaxResult {
	
	private boolean success=false;
	private String msg;
	
	public AjaxResult(String msg) {
		super();
		this.msg = msg;
	}
	
	
	public AjaxResult(boolean success, String msg) {
		super();
		this.success = success;
		this.msg = msg;
	}
	
	 


	public AjaxResult() {
		super();
		// TODO Auto-generated constructor stub
	}


	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	

}
