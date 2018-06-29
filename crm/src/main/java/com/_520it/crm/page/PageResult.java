package com._520it.crm.page;

import java.util.List;

/**
 * Created by Administrator on 2016/9/14.
 */
public class PageResult {
    private Integer total; // 总条数
    private List rows; // 结果集
//    private Map<String,Object> data=new HashMap();
//    public static final PageResult EMPTY = new PageResult(0, Collections.EMPTY_LIST); // 空的结果集

    public PageResult(Integer total, List rows) {
        this.total = total;
        this.rows = rows;
    }

    public PageResult() {
    }

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}
    
    
}
