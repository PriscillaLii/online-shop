package org.action;

import java.util.Map;

import org.dao.UserDao;
import org.dao.imp.UserDaoImp;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
    private Userinfo reg;
	
	public Userinfo getReg() {
		return reg;
	}

	public void setReg(Userinfo reg) {
		this.reg = reg;
	}

	public String execute() throws Exception {
	    Userinfo user = new Userinfo();
		UserDao ud = new UserDaoImp();
		user.setUsername(reg.getUsername());
		user.setPwd(reg.getPwd());
		user.setAddress(reg.getAddress());
		user.setEmail(reg.getEmail());
		user.setPostcode(reg.getPostcode());
		user.setTel(reg.getTel());
		ud.saveUser(user);
		Map session = (Map)ActionContext.getContext().getSession();
		session.put("userlogininfo", user);
		return SUCCESS;
	}
}
