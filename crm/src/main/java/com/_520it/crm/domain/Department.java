package com._520it.crm.domain;

public class Department {
    private Long id;
	
    private String sn;

    private String name;

    private Employee manger;

    private Department parent;

    private Boolean state;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Employee getManger() {
		return manger;
	}

	public void setManger(Employee manger) {
		this.manger = manger;
	}

	public Department getParent() {
		return parent;
	}

	public void setParent(Department parent) {
		this.parent = parent;
	}

	public Boolean getState() {
		return state;
	}

	public void setState(Boolean state) {
		this.state = state;
	}

   
}
