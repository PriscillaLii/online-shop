package org.action;

import java.util.List;
import java.util.Map;

import org.dao.ProductDao;

import org.dao.imp.ProductDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProsearchAction extends ActionSupport {
	private String searchproname;

	
	
	public String getSearchproname() {
		return searchproname;
	}



	public void setSearchproname(String searchproname) {
		this.searchproname = searchproname;
	}



	public String execute() throws Exception {
		List list;
		
		ProductDao pDao = new ProductDaoImp();
		list = pDao.getProduct();
		list = pDao.search(searchproname);
		
		Map session = (Map)ActionContext.getContext().getSession();
		session.remove("list");	
		session.put("list", list);
		return SUCCESS;
	}
       
}

