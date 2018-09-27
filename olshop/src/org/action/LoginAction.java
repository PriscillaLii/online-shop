package org.action;

import java.util.List;
import java.util.Map;

import org.dao.OrderDao;
import org.dao.UserDao;
import org.dao.imp.OrderDaoImp;
import org.dao.imp.UserDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
     private Userinfo dl;

	public Userinfo getDl() {
		return dl;
	}

	public void setDl(Userinfo dl) {
		this.dl = dl;
	}
	
	public String execute() throws Exception {
		UserDao dao = new UserDaoImp();
		Userinfo user = dao.validate(dl.getUsername(), dl.getPwd());
		if(user!=null){
			Map session = (Map)ActionContext.getContext().getSession();
			session.put("userlogininfo", user);
			OrderDao od = new OrderDaoImp();
			 List list1 = od.getUserCart(user);
			 session.put("cartnumber", list1.size());//读购物车数量
			return SUCCESS;
		}else
			return ERROR;
	}
	
	public String logout() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		session.clear();
		return SUCCESS;
	}
}
