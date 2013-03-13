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

public class BackQueryQuestionAction extends Action {

	private QuestionDao questionDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<Question> questionList = questionDao.queryAllQuestion();
		request.setAttribute("questionList", questionList);
		
		return mapping.findForward("success");
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

}
