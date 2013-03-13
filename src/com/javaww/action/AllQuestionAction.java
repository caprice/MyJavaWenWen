package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.QuestionDao;
import com.javaww.model.Question;
import com.javaww.model.User;

public class AllQuestionAction extends Action {

	private User user;
	
	private QuestionDao questionDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
		user = (User) request.getSession().getAttribute("user");
		
		if(user == null) {
			
			request.setAttribute("flag", "usernull");
			return mapping.findForward("failure");
		} else {
			
			List<Question> questionList = questionDao.queryAllQuestion();
			request.setAttribute("questionList", questionList);
			return mapping.findForward("success");
		}
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}
	
}
