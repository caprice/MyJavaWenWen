package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.AdminDao;
import com.javaww.form.AdminForm;
import com.javaww.model.Admin;

public class BackDeleteAdminAction extends Action {

	private AdminDao adminDao;
	
	private Admin admin;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AdminForm af = (AdminForm)form;
		
		admin.setAdminid(af.getAdminid());
		admin = adminDao.queryAdminById(admin);
		
		adminDao.deleteAdmin(admin);
		
		List<Admin> adminList = adminDao.queryAllAdmin();
		request.setAttribute("adminList", adminList);
		
		return mapping.findForward("success");
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
}
