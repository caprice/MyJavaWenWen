package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.AnswerDao;
import com.javaww.form.AnswerForm;
import com.javaww.model.Answer;

public class BackDeteleAnswerAction extends Action {

	private AnswerDao answerDao;
	
	private Answer answer;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AnswerForm af = (AnswerForm)form;
		
		answer = answerDao.queryAnswerByAid(af.getAid());
		
		answer.setQuesans("对不起 该答案已被删除！");
		
		answerDao.modifyAnswer(answer);
		
		List<Answer> answerList = answerDao.queryAnswer();
		request.setAttribute("answerList", answerList);
		
		return mapping.findForward("success");
	}

	public void setAnswerDao(AnswerDao answerDao) {
		this.answerDao = answerDao;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	
	
	
}
