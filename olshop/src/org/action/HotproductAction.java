package org.action;

import java.util.List;
import java.util.Map;

import org.dao.OrderDao;
import org.dao.ProductDao;
import org.dao.imp.OrderDaoImp;
import org.dao.imp.ProductDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HotproductAction extends ActionSupport {

	public String execute() throws Exception {
		List hotlist,newlist;
		
		ProductDao pDao = new ProductDaoImp();
		hotlist = pDao.getHotProduct();
		newlist = pDao.getNewProduct();
		Map session = (Map)ActionContext.getContext().getSession();
		session.put("hotlist", hotlist);
		session.put("newlist", newlist);
		return SUCCESS;
	}
}
