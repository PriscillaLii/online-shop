package org.dao;

import org.model.Userinfo;

public interface UserDao {
	public Userinfo validate(String name, String psw);
	
	public void updateUser(Userinfo user);
	
	public void saveUser(Userinfo user);
}
