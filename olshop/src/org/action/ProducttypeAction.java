package org.action;

import java.util.List;
import java.util.Map;

import org.dao.ProductDao;
import org.dao.imp.ProductDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProducttypeAction extends ActionSupport {
	private int typeid;

	public int getTypeid() {
		return typeid;
	}

	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	
	public String execute() throws Exception {
		List list;
		
		ProductDao pDao = new ProductDaoImp();
		list = pDao.getProductBytype(typeid);
		Map session = (Map)ActionContext.getContext().getSession();
		session.remove("list");	
		session.put("list", list);
		return SUCCESS;
	}

}
