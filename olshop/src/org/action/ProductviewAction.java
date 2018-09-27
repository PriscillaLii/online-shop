package org.action;

import java.util.List;
import java.util.Map;

import org.dao.ProductDao;
import org.dao.imp.ProductDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProductviewAction extends ActionSupport {
	
		public String execute() throws Exception {
			List list;
			
			
			ProductDao pDao = new ProductDaoImp();
			list = pDao.getProduct();
			Map session = (Map)ActionContext.getContext().getSession();
			session.remove("list");	
			session.put("list", list);
			return SUCCESS;
		}

	}



