package com.javaww.form;

import org.apache.struts.action.ActionForm;

public class AdminForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private int adminid;
	
	private String adminname;
	
	private String adminpwd;
	
	private String confirmpwd;
	
	private int adminlevel;

	public int getAdminid() {
		return adminid;
	}

	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getAdminpwd() {
		return adminpwd;
	}

	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}

	public int getAdminlevel() {
		return adminlevel;
	}

	public void setAdminlevel(int adminlevel) {
		this.adminlevel = adminlevel;
	}

	public String getConfirmpwd() {
		return confirmpwd;
	}

	public void setConfirmpwd(String confirmpwd) {
		this.confirmpwd = confirmpwd;
	}

	
}
