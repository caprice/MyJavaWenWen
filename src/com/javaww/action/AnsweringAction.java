package com.javaww.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.AnswerDao;
import com.javaww.dao.QuestionDao;
import com.javaww.dao.UserDao;
import com.javaww.form.AnswerForm;
import com.javaww.model.Answer;
import com.javaww.model.Question;
import com.javaww.model.User;

public class AnsweringAction extends Action {

	private QuestionDao questionDao;
	
	private Question question;
	
	private UserDao userDao;
	
	private User user;
	
	private AnswerDao answerDao;
	
	private Answer answer;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		user = (User)request.getSession().getAttribute("user");
		user = userDao.queryUserByName(user);
		
		AnswerForm af = (AnswerForm)form;
		
		int qid = af.getQid();
		question.setQid(qid);
		
		question = questionDao.queryQuestinByQid(question);
		
		answer.setQuesans(af.getQuesans());
		answer.setQuestion(question);
		answer.setUser(user);
		answer.setStatus(2);
		answer.setAnstime(new Date());
		
		answerDao.addAnswer(answer);
		
		request.setAttribute("flag", "answersuccess");
		return mapping.findForward("success");
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setAnswerDao(AnswerDao answerDao) {
		this.answerDao = answerDao;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
}
