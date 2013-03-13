package com.javaww.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.QuestionDao;
import com.javaww.form.AnswerForm;
import com.javaww.model.Question;

public class ToAnswerAction extends Action {

	private QuestionDao questionDao;
	
	private Question question;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AnswerForm af = (AnswerForm)form;
		
		int qid = af.getQid();
		question.setQid(qid);
		
		question = questionDao.queryQuestinByQid(question);
		question.setClickcount(question.getClickcount() +1);
		questionDao.modifyQuestion(question);
		
		request.setAttribute("question", question);
		
		return mapping.findForward("success");
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}
	
}
