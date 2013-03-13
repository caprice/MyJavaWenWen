package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.SubItemDao;
import com.javaww.model.SubItem;

public class BackGoEditSubAction extends Action {

	private SubItemDao subItemDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<SubItem> subItemList = subItemDao.queryAllSubItem();
		
		request.setAttribute("subItemList", subItemList);
		
		return mapping.findForward("success");
	}

	public void setSubItemDao(SubItemDao subItemDao) {
		this.subItemDao = subItemDao;
	}
}
