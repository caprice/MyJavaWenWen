package com.javaww.action;

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

public class AcceptAction extends Action {

	private User user;
	
	private UserDao userDao;
	
	private Question question;
	
	private QuestionDao questionDao;
	
	private Answer answer;
	
	private AnswerDao answerDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AnswerForm af = (AnswerForm)form;
		
		user = (User)request.getSession().getAttribute("user");
		user = userDao.queryUserByName(user);
		
		answer = answerDao.queryAnswerByAid(af.getAid());
		
		question.setQid(answer.getQuestion().getQid());
		question = questionDao.queryQuestinByQid(question);
		String quser = question.getUser().getUsername();

		String auser = answer.getUser().getUsername();
		
		if(user == null) {
			request.setAttribute("flag", "usernull");
			return mapping.findForward("failure");
		} else if(!(quser.equals(user.getUsername()))) {
			request.setAttribute("flag", "usernotequals");
			return mapping.findForward("failure");
		} else {

			question.setStatus(2);
			question.setAcceptflag(1);
			questionDao.modifyQuestion(question);
			
			answer.setStatus(1);
			answerDao.modifyAnswer(answer);
			
			user.setIntegral(user.getIntegral() - question.getOfferscore());
			if(0 < user.getIntegral() && user.getIntegral() <= 300) {
				user.setGrade(1);
			}else if(301 <= user.getIntegral() && user.getIntegral() <= 1000) {
				user.setGrade(2);
			}else if(1001 <= user.getIntegral() && user.getIntegral() <= 5000) {
				user.setGrade(3);
			}else if(5001 <= user.getIntegral() && user.getIntegral() <= 10000) {
				user.setGrade(4);
			}else if(10001 <= user.getIntegral() && user.getIntegral() <= 50000) {
				user.setGrade(5);
			}else if(50001 <= user.getIntegral() && user.getIntegral() <= 100000) {
				user.setGrade(6);
			}else if(100001 <= user.getIntegral() && user.getIntegral() <= 500000) {
				user.setGrade(7);
			}
			userDao.modifyUser(user);
			
			user = new User();
			user.setUsername(auser);
			user = userDao.queryUserByName(user);
			
			user.setIntegral(user.getIntegral() + question.getOfferscore());
			if(0 < user.getIntegral() && user.getIntegral() <= 300) {
				user.setGrade(1);
			}else if(301 <= user.getIntegral() && user.getIntegral() <= 1000) {
				user.setGrade(2);
			}else if(1001 <= user.getIntegral() && user.getIntegral() <= 5000) {
				user.setGrade(3);
			}else if(5001 <= user.getIntegral() && user.getIntegral() <= 10000) {
				user.setGrade(4);
			}else if(10001 <= user.getIntegral() && user.getIntegral() <= 50000) {
				user.setGrade(5);
			}else if(50001 <= user.getIntegral() && user.getIntegral() <= 100000) {
				user.setGrade(6);
			}else if(100001 <= user.getIntegral() && user.getIntegral() <= 500000) {
				user.setGrade(7);
			}
			userDao.modifyUser(user);
			
			request.setAttribute("qid", question.getQid());
			request.setAttribute("flag", "acceptsuccess");
			return mapping.findForward("success");
		}
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

	public void setAnswerDao(AnswerDao answerDao) {
		this.answerDao = answerDao;
	}
}
