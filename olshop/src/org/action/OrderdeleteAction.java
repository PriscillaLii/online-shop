package org.action;

import org.dao.OrderDao;
import org.dao.imp.OrderDaoImp;

import com.opensymphony.xwork2.ActionSupport;

public class OrderdeleteAction extends ActionSupport {
	private int deleteid;

	public int getDeleteid() {
		return deleteid;
	}

	public void setDeleteid(int deleteid) {
		this.deleteid = deleteid;
	}
	
	public String execute() throws Exception {
		OrderDao o = new OrderDaoImp();
		o.deletecart(deleteid);
		return SUCCESS;
	}

}
