package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.UserDao;
import com.javaww.model.User;

public class ScoreListAction extends Action {

	private UserDao userDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		try {
			List<User> userList = userDao.queryAllUserOrderByScore();
			
			request.setAttribute("userList", userList);
			
			return mapping.findForward("success");
		} catch(Exception e){
			e.printStackTrace();
			request.setAttribute("flag", "queryscoreListError");
			return mapping.findForward("failure");
		}
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
