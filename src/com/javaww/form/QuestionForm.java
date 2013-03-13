package com.javaww.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class QuestionForm extends ActionForm {

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
	
	private int itemid;
	
	private int subid;
	
	private String  itemname;
	
	private String subname;

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

	public int getItemid() {
		return itemid;
	}

	public void setItemid(int itemid) {
		this.itemid = itemid;
	}

	public int getSubid() {
		return subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getSubname() {
		return subname;
	}

	public void setSubname(String subname) {
		this.subname = subname;
	}
	
}
