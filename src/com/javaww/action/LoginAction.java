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

public class LoginAction extends Action {

	private UserDao userDao;

	private User user;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		try {
			UserForm uf = (UserForm) form;

			String ccode = (String) request.getSession().getAttribute("ccode");
			String checkcode = uf.getCheckcode();

			if (!(checkcode.equals(ccode))) {

				request.setAttribute("flag", "checkcodeerror");
				return mapping.findForward("failure");
			} else {

				user.setUsername(uf.getUsername());
				user.setUserpwd(uf.getUserpwd());

				boolean b = userDao.queryUserByNamePass(user);

				if (b) {

					user = userDao.queryUserByName(user);

					request.getSession().setAttribute("user", user);

					return mapping.findForward("success");
				} else {

					request.setAttribute("flag", "namepasserror");
					return mapping.findForward("failure");
				}
			}
		} catch (Exception e) {
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
