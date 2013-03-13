package com.javaww.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.AdminDao;
import com.javaww.form.AdminForm;
import com.javaww.model.Admin;

public class BackAdminLoginAction extends Action {

	private AdminDao adminDao;
	
	private Admin admin;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		

		try {
				AdminForm af = (AdminForm) form;

				admin.setAdminname(af.getAdminname());
				admin.setAdminpwd(af.getAdminpwd());
				admin.setAdminlevel(af.getAdminlevel());
				
				boolean b = adminDao.queryAdmin(admin);

				if (b) {

					admin = adminDao.queryAdminByName(admin);

					request.setAttribute("admin", admin);

					return mapping.findForward("success");
				} else {

					request.setAttribute("flag", "namepasserror");
					return mapping.findForward("failure");
				}
		} catch (Exception e) {
			request.setAttribute("flag", "adminloginerror");
			return mapping.findForward("failure");
		}

	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
}
