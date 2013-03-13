package com.javaww.form;

import org.apache.struts.action.ActionForm;

public class UserForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private int userid;
	
	private String username;
	
	private String userpwd;
	
	private String confirmpwd;
	
	private String userques;
	
	private String userans;
	
	private String usermail;
	
	private int integral;
	
	private int grade;
	
	private String sex;
	
	private String realname;
	
	private String checkcode;

	public String getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUserques() {
		return userques;
	}

	public void setUserques(String userques) {
		this.userques = userques;
	}

	public String getUserans() {
		return userans;
	}

	public void setUserans(String userans) {
		this.userans = userans;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public int getIntegral() {
		return integral;
	}

	public void setIntegral(int integral) {
		this.integral = integral;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getConfirmpwd() {
		return confirmpwd;
	}

	public void setConfirmpwd(String confirmpwd) {
		this.confirmpwd = confirmpwd;
	}

}
