package org.model;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
public class Order extends AbstractOrder implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Productinfo productinfo, Userinfo userinfo, Integer number) {
		super(productinfo, userinfo, number);
	}

	/** full constructor */
	public Order(Productinfo productinfo, Userinfo userinfo, Integer number,
			String recipients, String address, String postcode, String tel,
			String orderdate, Integer status, Boolean cart, Integer transprice,
			String transport, String payway) {
		super(productinfo, userinfo, number, recipients, address, postcode,
				tel, orderdate, status, cart, transprice, transport, payway);
	}

}
