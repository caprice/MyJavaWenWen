package com.javaww.form;

import org.apache.struts.action.ActionForm;

public class SubItemForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private int subid;
	
	private String subname;
	
	private int itemid;

	public int getSubid() {
		return subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}

	public String getSubname() {
		return subname;
	}

	public void setSubname(String subname) {
		this.subname = subname;
	}

	public int getItemid() {
		return itemid;
	}

	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	
}
