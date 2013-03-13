package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.ItemDao;
import com.javaww.dao.SubItemDao;
import com.javaww.form.SubItemForm;
import com.javaww.model.Item;
import com.javaww.model.SubItem;

public class BackAddSubAction extends Action {

	private SubItemDao subItemDao;
	
	private SubItem subItem;
	
	private Item item;
	
	private ItemDao itemDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		SubItemForm sif = (SubItemForm)form;

		item = itemDao.queryItemById(sif.getItemid());

		subItem.setItem(item);
		subItem.setSubname(sif.getSubname());
		
		subItemDao.addSubItem(subItem);
		
		List<SubItem> subItemList = subItemDao.queryAllSubItem();
		request.setAttribute("subItemList", subItemList);
		
		return mapping.findForward("success");
	}

	public void setSubItemDao(SubItemDao subItemDao) {
		this.subItemDao = subItemDao;
	}

	public void setSubItem(SubItem subItem) {
		this.subItem = subItem;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}
}
