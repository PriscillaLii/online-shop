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

public class ProductbuyAction extends ActionSupport {
	private int buypid;
	private int buynumber;
	
	public int getBuynumber() {
		return buynumber;
	}

	public void setBuynumber(int buynumber) {
		this.buynumber = buynumber;
	}

		public int getBuypid() {
		return buypid;
	}

	public void setBuypid(int buypid) {
		this.buypid = buypid;
	}
	
	public String updatecartnumber(int oid,int number){
		OrderDao ord = new OrderDaoImp();
		Order o = ord.getOneByid(oid);
		o.setNumber(number);
		ord.updateOrder(o);
		return  "";  
	}

	public String execute() throws Exception {
			System.out.println(buynumber);
			Map session = (Map)ActionContext.getContext().getSession();
			
			Userinfo user = (Userinfo)session.get("userlogininfo");
			
			OrderDao ord = new OrderDaoImp();
			ProductDao p = new ProductDaoImp();
			Productinfo pro = p.getbyId(buypid);
			
			Order or = new Order();	
            
			or.setProductinfo(pro);
			or.setUserinfo(user);
			or.setCart(true);
			or.setStatus(0);
			or.setNumber(buynumber);
			Date now = new Date();
			DateFormat d3 = DateFormat.getDateTimeInstance(); 
			or.setOrderdate(d3.format(now));
			String result = ord.buy(or);
			
			
			return result;
		}

	}
