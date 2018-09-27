package org.dao;

import java.util.List;

import org.model.Order;
import org.model.Productinfo;
import org.model.Userinfo;

public interface ProductDao {
	public List getProduct();

	public List getHotProduct();
	
	public List getNewProduct();
	
	public List getProductBytype(int typeid);
	
	public List search(String searchproname);
	
	public Productinfo getbyId(int pid);
}
