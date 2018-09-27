package org.action;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.dao.OrderDao;
import org.dao.ProductDao;
import org.dao.imp.OrderDaoImp;
import org.dao.imp.ProductDaoImp;
import org.model.Order;
import org.model.Productinfo;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProductdetailAction extends ActionSupport {
	private int buypid;
	
	public int getBuypid() {
	return buypid;
}

public void setBuypid(int buypid) {
	this.buypid = buypid;
}

public String execute() throws Exception {
		ProductDao p = new ProductDaoImp();
		
		Productinfo pro = p.getbyId(buypid);
		List list = p.getProductBytype(pro.getTypeid());
		while(list.size()>3){
			list.remove(list.size()-1);}
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("detail", pro);
		request.put("relativelist", list);
		return SUCCESS;
		
	}

}

