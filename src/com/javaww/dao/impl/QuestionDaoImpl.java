package com.javaww.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.javaww.dao.QuestionDao;
import com.javaww.model.Question;
import com.javaww.model.User;

public class QuestionDaoImpl extends HibernateDaoSupport implements QuestionDao {

	public void addQuestion(Question question) {

		this.getHibernateTemplate().save(question);
	}

	@SuppressWarnings("unchecked")
	public List<Question> queryAllQuestion() {
		List<Question> questionList = this.getHibernateTemplate().find("from Question ");
		return questionList;
	}

	@SuppressWarnings("unchecked")
	public List<Question> queryQuestionByUser(User user) {
		
		List<Question> questionList = this.getHibernateTemplate().find("from Question where userid=" + user.getUserid());
		return questionList;
	}

	@SuppressWarnings("unchecked")
	public Question queryQuestinByQid(Question question) {
		
		List<Question> questionList = this.getHibernateTemplate().find("from Question where qid="+ question.getQid());
		Question question2 = null;
		
		if(questionList.size() == 1){
			question2 = (Question) questionList.get(0);
		}
		return question2;
	}

	public void modifyQuestion(Question question) {

		this.getHibernateTemplate().update(question);
	}

	@SuppressWarnings("unchecked")
	public List<Question> queryQuestionByTid(int itemid, int subid) {

		List<Question> questionList = this.getHibernateTemplate().find("from Question where itemid=" + itemid +" and subid=" +subid);
		return questionList;
	}

	@SuppressWarnings("unchecked")
	public List<Question> queryQuestionByTime() {
		List<Question> questionList = this.getHibernateTemplate().find("from Question order by questiontime asc");
		return questionList;
	}

	@SuppressWarnings("unchecked")
	public List<Question> queryQuestionByStatus(int status) {
		List<Question> questionList = this.getHibernateTemplate().find("from Question where status=" + status);
		return questionList;
	}

}
