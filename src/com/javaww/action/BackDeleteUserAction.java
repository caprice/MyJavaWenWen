package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.UserDao;
import com.javaww.form.UserForm;
import com.javaww.model.User;

public class BackDeleteUserAction extends Action {

	private UserDao userDao;
	
	private User user;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm uf = (UserForm)form;
		
		user.setUserid(uf.getUserid());
		
		user = userDao.queryUserById(user);
		userDao.deleteUser(user);
		
		List<User> userList = userDao.queryAllUser();
		request.setAttribute("userList", userList);
		
		return mapping.findForward("success");
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
