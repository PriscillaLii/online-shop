package org.action;

import java.util.List;
import java.util.Map;

import org.dao.OrderDao;
import org.dao.imp.OrderDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CartviewAction extends ActionSupport {
	public String execute() throws Exception {
		
		Map session = (Map)ActionContext.getContext().getSession();
		
	    Userinfo user = (Userinfo)session.get("userlogininfo");
		
	    OrderDao od = new OrderDaoImp();
	    List list1 = od.getUserCart(user);
	    
	    
	    Map request = (Map)ActionContext.getContext().get("request");
		request.put("cartlist", list1);
		session.put("cartnumber", list1.size());
		return SUCCESS;
	}

}
