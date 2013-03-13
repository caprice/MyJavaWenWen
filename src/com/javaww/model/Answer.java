package com.javaww.model;

import java.util.Date;

public class Answer {

	private int aid;
	
	private String quesans;
	
	private Date anstime;
	
	private int status;
	
	private Question question;
	
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

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
	
}
