package com.javaww.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.SubItemDao;
import com.javaww.form.SubItemForm;
import com.javaww.model.SubItem;

public class BackGoModifySubAction extends Action {

	private SubItemDao subItemDao;
	
	private SubItem subItem;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		SubItemForm sif = (SubItemForm)form;
		
		subItem = subItemDao.querySubItemById(sif.getSubid());
		
		request.setAttribute("subItem", subItem);
		
		return mapping.findForward("success");
	}

	public void setSubItemDao(SubItemDao subItemDao) {
		this.subItemDao = subItemDao;
	}

	public void setSubItem(SubItem subItem) {
		this.subItem = subItem;
	}
}
