package com.javaww.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

public class AnswerForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private int aid;
	
	private String quesans;
	
	private Date anstime;
	
	private int status;
	
	private int qid;

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getQuesans() {
		return quesans;
	}

	public void setQuesans(String quesans) {
		this.quesans = quesans;
	}

	public Date getAnstime() {
		return anstime;
	}

	public void setAnstime(Date anstime) {
		this.anstime = anstime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}
	
}
