package org.dao.imp;

import java.util.List;

import org.dao.ProductDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Order;
import org.model.Productinfo;
import org.model.Userinfo;

public class ProductDaoImp implements ProductDao {

	@Override
	public List getProduct() {
		// TODO Auto-generated method stub
		try {
			List list = null;
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			list = session.createQuery("from Productinfo order by pid").list();
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			return list;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List search(String searchproname) {
		// TODO Auto-generated method stub
		
		try {
			List list = null;
			String x = "%" + searchproname + "%" ;
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Productinfo where pname LIKE ? ");
			query.setParameter(0,x);
			list = query.list();
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			return list;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
		}

	@Override
	public Productinfo getbyId(int pid) {
		// TODO Auto-generated method stub
		try {
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Productinfo where pid=?");
			query.setParameter(0,pid);
			query.setMaxResults(1);
			Productinfo pro = (Productinfo) query.uniqueResult();
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			if(pro!=null) {
				return pro;
			}else {
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getHotProduct() {
		// TODO Auto-generated method stub
		try {
			List list = null;
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			list = session.createQuery("from Productinfo order by sellcount desc").list();
			while(list.size()>10){
				list.remove(list.size()-1);}
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			return list;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getProductBytype(int typeid) {
		// TODO Auto-generated method stub
		try {
			List list = null;
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Productinfo where typeid=?");
			query.setParameter(0,typeid);
			list = query.list();
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			return list;
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getNewProduct() {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				try {
					List list = null;
					Session session = org.util.HibernateSessionFactory.getSession();
					Transaction ts = session.beginTransaction();
					list = session.createQuery("from Productinfo order by pid desc").list();
					while(list.size()>10){
						list.remove(list.size()-1);}
					ts.commit();
					org.util.HibernateSessionFactory.closeSession();
					return list;
				} catch(Exception e){
					e.printStackTrace();
					return null;
				}
	}

	
}


