package org.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.dao.OrderDao;
import org.dao.imp.OrderDaoImp;
import org.model.Order;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SettlecartAction extends ActionSupport {
	private String[] selectcart;
	private String[] cartnumber;
	
	public String[] getCartnumber() {
		return cartnumber;
	}

	public void setCartnumber(String[] cartnumber) {
		this.cartnumber = cartnumber;
	}

	public String[] getSelectcart() {
	return selectcart;
}

public void setSelectcart(String[] selectcart) {
	this.selectcart = selectcart;
}

	public String execute() throws Exception {
	  OrderDao od = new OrderDaoImp();
	  List list = od.getByid(selectcart);
	  for(int i=0;i<list.size();i++){
		  Order temp = (Order)list.get(i);
		  temp.setNumber(Integer.parseInt(cartnumber[i]));
		  od.updateOrder(temp);
	  }
	  Map session = (Map)ActionContext.getContext().getSession();
	  session.remove("selectcartlist");	
	  session.put("selectcartlist", list);
      return SUCCESS;
	}
}
