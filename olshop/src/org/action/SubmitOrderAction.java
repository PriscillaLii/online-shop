package org.action;

import java.util.List;
import java.util.Map;

import org.dao.OrderDao;
import org.dao.imp.OrderDaoImp;
import org.model.Order;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SubmitOrderAction extends ActionSupport {
	private Order ord;

	public Order getOrd() {
		return ord;
	}

	public void setOrd(Order ord) {
		this.ord = ord;
	}
	
	public String execute() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
	    Userinfo user = (Userinfo)session.get("userlogininfo");
	List list = (List)session.get("selectcartlist");
	
	Order a = (Order)list.get(0);
	for(int i=0;i<list.size();i++){
		OrderDao od = new OrderDaoImp();
		Order o = (Order)list.get(i);
		o.setAddress(ord.getAddress());
		o.setCart(false);
		o.setRecipients(ord.getRecipients());
		o.setTel(ord.getTel());
		o.setPostcode(ord.getPostcode());
		o.setPayway(ord.getPayway());
		o.setTransport(ord.getTransport());
		od.updateOrder(o);
	}
	return SUCCESS;
	}

}



