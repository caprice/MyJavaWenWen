package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.ItemDao;
import com.javaww.form.ItemForm;
import com.javaww.model.Item;

public class BackAddItemAction extends Action {

	private ItemDao itemDao;
	
	private Item item;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		try {
			ItemForm itemf = (ItemForm)form;
			
			item.setItemname(itemf.getItemname());
			itemDao.addItem(item);
			
			List<Item> itemList = itemDao.queryAllItem();
			
			request.setAttribute("itemList", itemList);
			
			return mapping.findForward("success");
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "additemfailure");
			return mapping.findForward("failure");
		}
	}

	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}

	public void setItem(Item item) {
		this.item = item;
	}
	
}
