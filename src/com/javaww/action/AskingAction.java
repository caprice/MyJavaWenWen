package com.javaww.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.ItemDao;
import com.javaww.dao.QuestionDao;
import com.javaww.dao.SubItemDao;
import com.javaww.dao.UserDao;
import com.javaww.form.QuestionForm;
import com.javaww.model.Item;
import com.javaww.model.Question;
import com.javaww.model.SubItem;
import com.javaww.model.User;

public class AskingAction extends Action {

	private User user;
	
	private UserDao userDao;
	
	private ItemDao itemDao;
	
	private Item item;
	
	private SubItemDao subItemDao;
	
	private SubItem subItem;
	
	private QuestionDao questionDao;
	
	private Question question;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		try {
			QuestionForm qf = (QuestionForm)form;
			
			String itemname = qf.getItemname();
			String subname = qf.getSubname();
			
			item = itemDao.queryItemByName(itemname);
			subItem = subItemDao.querySubItemByName(subname);
			user = (User) request.getSession().getAttribute("user");
			
			user = userDao.queryUserByName(user);
		
			if(user.getIntegral() < qf.getOfferscore()) {
				request.setAttribute("flag", "scorenotenough");
				return mapping.findForward("failure");
			}
			
			question.setTitle(qf.getTitle());
			question.setContent(qf.getContent());
			question.setItem(item);
			question.setSubItem(subItem);
			question.setUser(user);
			question.setOfferscore(qf.getOfferscore());
			question.setStatus(1);
			question.setQuestiontime(new Date());
			question.setClickcount(0);
			question.setAcceptflag(2);
			
			questionDao.addQuestion(question);
			
			request.setAttribute("flag", "asksuccess");
			
			List<Question> questionList = questionDao.queryQuestionByUser(user); 
			
			request.setAttribute("questionList", questionList);
			
			return mapping.findForward("success");
			
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "askfailure");
			return mapping.findForward("failure");
		}
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public void setSubItemDao(SubItemDao subItemDao) {
		this.subItemDao = subItemDao;
	}

	public void setSubItem(SubItem subItem) {
		this.subItem = subItem;
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

}
