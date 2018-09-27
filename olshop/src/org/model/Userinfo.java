package org.model;

import java.util.Set;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */
public class Userinfo extends AbstractUserinfo implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(String username, String pwd, String email) {
		super(username, pwd, email);
	}

	/** full constructor */
	public Userinfo(String username, String pwd, String email, String address,
			String postcode, Integer power, String tel, Set orders) {
		super(username, pwd, email, address, postcode, power, tel, orders);
	}

}
