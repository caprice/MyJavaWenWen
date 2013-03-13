package com.javaww.model;

import java.util.Date;

public class Question {

	private int qid;
	
	private String title;
	
	private String content;
	
	private int offerscore;

	//回答状态 1--未解决  2--已解决  3--无满意答案
	private int status;
	
	private Date questiontime; 
	
	private int clickcount;
	
	//是否采纳 1--已采纳 2--未采纳
	private int acceptflag;
	
	private Item item;
	
	private User user;
	
	private SubItem subItem;

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public SubItem getSubItem() {
		return subItem;
	}

	public void setSubItem(SubItem subItem) {
		this.subItem = subItem;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getOfferscore() {
		return offerscore;
	}

	public void setOfferscore(int offerscore) {
		this.offerscore = offerscore;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getQuestiontime() {
		return questiontime;
	}

	public void setQuestiontime(Date questiontime) {
		this.questiontime = questiontime;
	}

	public int getClickcount() {
		return clickcount;
	}

	public void setClickcount(int clickcount) {
		this.clickcount = clickcount;
	}

	public int getAcceptflag() {
		return acceptflag;
	}

	public void setAcceptflag(int acceptflag) {
		this.acceptflag = acceptflag;
	}
	
}
