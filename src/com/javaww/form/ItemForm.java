package com.javaww.form;

import org.apache.struts.action.ActionForm;

public class ItemForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private int itemid;
	
	private String itemname;

	public int getItemid() {
		return itemid;
	}

	public void setItemid(int itemid) {
		this.itemid = itemid;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
}
