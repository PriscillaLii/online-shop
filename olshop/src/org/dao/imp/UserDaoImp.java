package org.dao.imp;

import org.dao.UserDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Order;
import org.model.Userinfo;

public class UserDaoImp implements UserDao {

	@Override
	public Userinfo validate(String name, String psw) {
		try {
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Userinfo where username=? and pwd=?");
			query.setParameter(0,name);
			query.setParameter(1, psw);
			query.setMaxResults(1);
			Userinfo user = (Userinfo) query.uniqueResult();
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
			if(user!=null) {
				return user;
			}else {
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public void updateUser(Userinfo user) {
		// TODO Auto-generated method stub
		try {
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			session.update(user);
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void saveUser(Userinfo user) {
		// TODO Auto-generated method stub
		try {
			Session session = org.util.HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			session.save(user);
			ts.commit();
			org.util.HibernateSessionFactory.closeSession();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
