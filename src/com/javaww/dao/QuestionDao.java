package com.javaww.dao;

import java.util.List;

import com.javaww.model.Question;
import com.javaww.model.User;

public interface QuestionDao {

	public void addQuestion(Question question);
	
	public List<Question> queryAllQuestion();
	
	public List<Question> queryQuestionByUser(User user);
	
	public Question queryQuestinByQid(Question question);
	
	public void modifyQuestion(Question question);
	
	public List<Question> queryQuestionByTid(int itemid, int subid);
	
	public List<Question> queryQuestionByTime();
	
	public List<Question> queryQuestionByStatus(int status);
}
