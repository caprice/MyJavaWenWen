package com.javaww.model;

public class Admin {

	private int adminid;
	
	private String adminname;
	
	private String adminpwd;
	
	private int adminlevel;

	public int getAdminlevel() {
		return adminlevel;
	}

	public void setAdminlevel(int adminlevel) {
		this.adminlevel = adminlevel;
	}

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
	
}
