package com.javaww.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.javaww.bean.ItemBean;
import com.javaww.dao.ItemDao;
import com.javaww.dao.QuestionDao;
import com.javaww.dao.SubItemDao;
import com.javaww.model.Item;
import com.javaww.model.Question;
import com.javaww.model.SubItem;

public class IndexAction extends Action {

	private ItemDao itemDao;
	
	private Item item;
	
	private SubItemDao subItemDao;
	
	private QuestionDao questionDao;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){

		List<Item> itemList = itemDao.queryAllItem();
		List<ItemBean> itemBeanList = new ArrayList<ItemBean>();
		
		for(Iterator<Item> i = itemList.iterator();i.hasNext();) {
			item = i.next();

			List<SubItem> subItemList = subItemDao.querySubItemByItemId(item);
			
			ItemBean itemBean2 = new ItemBean();
			
			itemBean2.setItem(item);
			itemBean2.setSubItemList(subItemList);
			
			itemBeanList.add(itemBean2);
			
		}
		
		request.getSession().setAttribute("itemBeanList", itemBeanList);
		
		
		List<Question> questionListTime = questionDao.queryQuestionByTime();
		request.setAttribute("questionListTime", questionListTime);
		
		
		List<Question> questionListResolve = questionDao.queryQuestionByStatus(1);
		request.setAttribute("questionListResolve", questionListResolve);
		
		List<Question> questionListRR = questionDao.queryQuestionByStatus(2);
		request.setAttribute("questionListRR", questionListRR);
		
		request.setAttribute("YR", questionListRR.size());
		request.setAttribute("R", questionListResolve.size());
		
		return mapping.findForward("success");
	}

	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public void setSubItemDao(SubItemDao subItemDao) {
		this.subItemDao = subItemDao;
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

}
