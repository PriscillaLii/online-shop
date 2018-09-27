package org.dao;

import java.util.List;

import org.model.Order;
import org.model.Userinfo;

public interface OrderDao {

	public String buy(Order order);
	
	public List getUserOrder(Userinfo user);
	
	public List getUserCart(Userinfo user);
	
	public List getByid(String[] id);
	
	public void updateOrder(Order order);
	
	public String deletecart(int id) ;
	
	public Order getOneByid(int id);
}
