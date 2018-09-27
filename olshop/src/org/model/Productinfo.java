package org.model;

import java.util.Set;

/**
 * Productinfo entity. @author MyEclipse Persistence Tools
 */
public class Productinfo extends AbstractProductinfo implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Productinfo() {
	}

	/** minimal constructor */
	public Productinfo(String pname, Integer typeid, Double marketprice,
			Double sellprice, Double transprice, Integer sellcount, String date) {
		super(pname, typeid, marketprice, sellprice, transprice, sellcount,
				date);
	}

	/** full constructor */
	public Productinfo(String pname, Integer typeid, String intro,
			Double marketprice, Double sellprice, Double transprice,
			Integer sellcount, String picture, String date, Set orders) {
		super(pname, typeid, intro, marketprice, sellprice, transprice,
				sellcount, picture, date, orders);
	}

}
