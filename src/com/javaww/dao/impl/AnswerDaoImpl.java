package com.javaww.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.javaww.dao.AnswerDao;
import com.javaww.model.Answer;

public class AnswerDaoImpl extends HibernateDaoSupport implements AnswerDao {

	public void addAnswer(Answer answer) {

		this.getHibernateTemplate().save(answer);
	}

	@SuppressWarnings("unchecked")
	public List<Answer> queryAnswerByQid(int qid) {
		
		List<Answer> answerList = this.getHibernateTemplate().find("from Answer where qid="+ qid);
		return answerList;
	}

	@SuppressWarnings("unchecked")
	public Answer queryAnswerByAid(int aid) {
		List<Answer> answerList = this.getHibernateTemplate().find("from Answer where aid="+ aid);
		Answer answer = null;
		
		if(answerList.size() == 1){
			answer = (Answer) answerList.get(0);
		}
		return answer;
	}

	public void modifyAnswer(Answer answer) {

		this.getHibernateTemplate().update(answer);
	}

	@SuppressWarnings("unchecked")
	public List<Answer> queryAnswer() {
		List<Answer> answerList = this.getHibernateTemplate().find("from Answer");
		return answerList;
	}

}
