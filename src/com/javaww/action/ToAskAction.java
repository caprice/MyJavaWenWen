package com.javaww.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.ItemDao;
import com.javaww.dao.SubItemDao;
import com.javaww.form.QuestionForm;
import com.javaww.model.Item;
import com.javaww.model.SubItem;
import com.javaww.model.User;

public class ToAskAction extends Action {

	private ItemDao itemDao;
	
	private SubItemDao subItemDao;
	
	private Item item;
	
	private SubItem subItem;
	
	private User user;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		user = (User)request.getSession().getAttribute("user");
		
		if(user == null) {
			
			request.setAttribute("flag", "usernull");
			return mapping.findForward("failure");
		} else {
			
			QuestionForm qf = (QuestionForm)form;
			
			int itemid = qf.getItemid();
			int subid = qf.getSubid();
			
			item = itemDao.queryItemById(itemid);
			subItem = subItemDao.querySubItemById(subid);
			
			request.setAttribute("item", item);
			request.setAttribute("subItem", subItem);
			
			return mapping.findForward("success");
		}
	}

	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}

	public void setSubItemDao(SubItemDao subItemDao) {
		this.subItemDao = subItemDao;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public void setSubItem(SubItem subItem) {
		this.subItem = subItem;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
