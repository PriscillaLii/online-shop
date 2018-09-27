package org.action;

import java.util.List;
import java.util.Map;

import org.dao.OrderDao;
import org.dao.imp.OrderDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MyorderAction extends ActionSupport {
	public String execute() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		//从session中提取当前客户
	    Userinfo user = (Userinfo)session.get("userlogininfo");
	    
	    OrderDao od = new OrderDaoImp();
	    List list1 = od.getUserOrder(user);
	    
	    
	    Map request = (Map)ActionContext.getContext().get("request");
		request.put("orderlist", list1);
		return SUCCESS;

}
}
