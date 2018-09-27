package org.action;

import java.util.List;
import java.util.Map;

import org.dao.UserDao;
import org.dao.imp.UserDaoImp;
import org.model.Productinfo;
import org.model.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SortAction extends ActionSupport {

	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String priceinc() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		List list = (List) session.get("list");
		Productinfo p,q = null;
		for(int i=0;i<list.size();i++){
			for(int j=i+1;j<list.size();j++){
			 p = (Productinfo)list.get(i);
			 q = (Productinfo)list.get(j);
			 if(p.getSellprice()>q.getSellprice()){
				 list.set(j, p);
				 list.set(i, q);
			 }
		}
		}
		session.remove("list");	
		session.put("list", list);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("sortway", "price_inc");
		return SUCCESS;
	}
	
	public String pricedes() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		List list = (List) session.get("list");
		Productinfo p,q = null;
		for(int i=0;i<list.size();i++){
			for(int j=i+1;j<list.size();j++){
			 p = (Productinfo)list.get(i);
			 q = (Productinfo)list.get(j);
			 if(p.getSellprice()<q.getSellprice()){
				 list.set(j, p);
				 list.set(i, q);
			 }
		}
		}
		session.remove("list");	
		session.put("list", list);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("sortway", "price_des");
		return SUCCESS;
	}
	
	public String countinc() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		List list = (List) session.get("list");
		Productinfo p,q = null;
		for(int i=0;i<list.size();i++){
			for(int j=i+1;j<list.size();j++){
			 p = (Productinfo)list.get(i);
			 q = (Productinfo)list.get(j);
			 if(p.getSellcount()<q.getSellcount()){
				 list.set(j, p);
				 list.set(i, q);
			 }
		}
		}
		session.remove("list");	
		session.put("list", list);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("sortway", "sellcount_inc");
		return SUCCESS;
	}
}
