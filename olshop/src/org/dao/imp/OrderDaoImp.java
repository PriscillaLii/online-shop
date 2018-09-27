package org.dao.imp;

import java.util.List;

import org.dao.OrderDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Order;
import org.model.Userinfo;

public class OrderDaoImp implements OrderDao {
	@Override
	public String buy(Order order) {
		// TODO Auto-generated method stub
		try {
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			session.save(order);
			
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			return "success";
		}catch(Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	public List getUserOrder(Userinfo user) {
		List list = null;
		Session session = org.util.HibernateSessionFactory.getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Order where userid=? and cart=?");
		query.setParameter(0,user.getId());
		query.setParameter(1,false);
		list = query.list();
		for(int i = 0;i<list.size();i++){
		Order temp = (Order)list.get(i);
		String a;
		a = user.getUsername();
		a = temp.getProductinfo().getPname();
		a = temp.getProductinfo().getPicture();
		}
		ts.commit();
		org.util.HibernateSessionFactory.closeSession();
		return list;
	}

	@Override
	public List getUserCart(Userinfo user) {
		List list = null;
		Session session = org.util.HibernateSessionFactory.getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Order where userid=? and cart=?");
		query.setParameter(0,user.getId());
		query.setParameter(1,true);
		list = query.list();
		for(int i = 0;i<list.size();i++){
		String a;
		Order temp = (Order)list.get(i);
		a = temp.getProductinfo().getPname();
		a = temp.getProductinfo().getPicture();/*这步毫无意义，但是不输出JSP就加载不出来我也不知道为什么*/
		}
		ts.commit();
		org.util.HibernateSessionFactory.closeSession();
		return list;
	}

	@Override
	public List getByid(String[] id) {
		// TODO Auto-generated method stub
		List list = (List)new java.util.ArrayList();
		Session session = org.util.HibernateSessionFactory.getSession();
		Transaction ts = session.beginTransaction();
		for(int i = 0;i<id.length;i++){
		Query query = session.createQuery("from Order where id=?");
		query.setParameter(0,Integer.parseInt(id[i]));
		query.setMaxResults(1);
		Order o = (Order) query.uniqueResult();
		list.add(o);
		}
		for(int i = 0;i<list.size();i++){
			Order temp = (Order)list.get(i);
			System.out.println(temp.getProductinfo().getPname());
			System.out.println(temp.getProductinfo().getPicture());
			}
		ts.commit();
		org.util.HibernateSessionFactory.closeSession();
		return list;
	}
	
	@Override
	public Order getOneByid(int id) {
		// TODO Auto-generated method stub
		Session session = org.util.HibernateSessionFactory.getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Order where id=?");
		query.setParameter(0,id);
		query.setMaxResults(1);
		Order o = (Order) query.uniqueResult();
		ts.commit();
		org.util.HibernateSessionFactory.closeSession();
		return o;
	}


	@Override
	public void updateOrder(Order order) {
		// TODO Auto-generated method stub
		try {
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			session.update(order);
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public String deletecart(int id) {
		try {
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("delete from Order where id=?");
			query.setParameter(0,id);
			query.executeUpdate();
			
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			return "success";
		}catch(Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
}
