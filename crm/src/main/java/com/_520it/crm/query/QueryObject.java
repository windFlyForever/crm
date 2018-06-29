package com._520it.crm.query;



public class QueryObject {
	
	private Integer page;
	private Integer rows;
	private Integer start;
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getStart() {
		return this.page==null?0:(this.page-1)*rows;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	
	
}
