package com.javaww.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.UserDao;
import com.javaww.form.UserForm;
import com.javaww.model.User;

public class RegisterAction extends Action {

	private UserDao userDao;
	
	private User user;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		UserForm uf = (UserForm)form;
		
		if(uf.getUserpwd().equals(uf.getConfirmpwd())) {
			
			user.setUsername(uf.getUsername());
			user.setUserpwd(uf.getUserpwd());
			user.setUserques(uf.getUserques());
			user.setUserans(uf.getUserans());
			user.setUsermail(uf.getUsermail());
			user.setIntegral(20);
			user.setGrade(1);
			user.setSex(uf.getSex());
			user.setRealname(uf.getRealname());
			
			userDao.addUser(user);
			
			request.getSession().setAttribute("user", user);
			request.setAttribute("flag","registersuccess");
			return mapping.findForward("success");
			
		} else {
			
			request.setAttribute("flag", "registerfailure");
			return mapping.findForward("failure");
		}
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
