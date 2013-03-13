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

public class BackAddAdminAction extends Action {

	private AdminDao adminDao;
	
	private Admin admin;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		AdminForm af = (AdminForm)form;
		
		if(af.getAdminpwd().equals(af.getConfirmpwd())) {
			
			admin.setAdminname(af.getAdminname());
			admin.setAdminpwd(af.getAdminpwd());
			admin.setAdminlevel(af.getAdminlevel());
			
			adminDao.addAdmin(admin);
			
			List<Admin> adminList = adminDao.queryAllAdmin();
			request.setAttribute("adminList", adminList);
			
			return mapping.findForward("success");
		}else {
			
			request.setAttribute("flag", "backpassworderror");
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
