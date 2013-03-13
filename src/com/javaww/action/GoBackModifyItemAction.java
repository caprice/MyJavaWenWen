package com.javaww.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.dao.ItemDao;
import com.javaww.model.Item;

public class GoBackModifyItemAction extends Action {

	private ItemDao itemDao;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		try {
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
}
