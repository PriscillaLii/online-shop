package org.action;

import java.util.Map;

import org.dao.UserDao;
import org.dao.imp.UserDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MyinfoAction extends ActionSupport {
	private Userinfo reg;
	
	public Userinfo getReg() {
		return reg;
	}

	public void setReg(Userinfo reg) {
		this.reg = reg;
	}

	public String execute() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
	    Userinfo user = (Userinfo)session.get("userlogininfo");
		UserDao ud = new UserDaoImp();
		if(reg.getUsername()!="")
		user.setUsername(reg.getUsername());
		if(reg.getPwd()!="")
		user.setPwd(reg.getPwd());
		user.setAddress(reg.getAddress());
		user.setEmail(reg.getEmail());
		user.setPostcode(reg.getPostcode());
		user.setTel(reg.getTel());
		ud.updateUser(user);
		return SUCCESS;
	}

}
