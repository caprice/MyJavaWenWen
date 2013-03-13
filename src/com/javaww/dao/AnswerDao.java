package com.javaww.dao;

import java.util.List;

import com.javaww.model.Answer;

public interface AnswerDao {

	public void addAnswer(Answer answer);
	
	public List<Answer> queryAnswerByQid(int qid);
	
	public List<Answer> queryAnswer();
	
	public Answer queryAnswerByAid(int aid);
	
	public void modifyAnswer(Answer answer);
}
