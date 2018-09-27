package org.model;

/**
 * AbstractOrder entity provides the base persistence definition of the Order
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractOrder implements java.io.Serializable {

	// Fields

	private Integer id;
	private Productinfo productinfo;
	private Userinfo userinfo;
	private Integer number;
	private String recipients;
	private String address;
	private String postcode;
	private String tel;
	private String orderdate;
	private Integer status;
	private Boolean cart;
	private Integer transprice;
	private String transport;
	private String payway;

	// Constructors

	/** default constructor */
	public AbstractOrder() {
	}

	/** minimal constructor */
	public AbstractOrder(Productinfo productinfo, Userinfo userinfo,
			Integer number) {
		this.productinfo = productinfo;
		this.userinfo = userinfo;
		this.number = number;
	}

	/** full constructor */
	public AbstractOrder(Productinfo productinfo, Userinfo userinfo,
			Integer number, String recipients, String address, String postcode,
			String tel, String orderdate, Integer status, Boolean cart,
			Integer transprice, String transport, String payway) {
		this.productinfo = productinfo;
		this.userinfo = userinfo;
		this.number = number;
		this.recipients = recipients;
		this.address = address;
		this.postcode = postcode;
		this.tel = tel;
		this.orderdate = orderdate;
		this.status = status;
		this.cart = cart;
		this.transprice = transprice;
		this.transport = transport;
		this.payway = payway;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Productinfo getProductinfo() {
		return this.productinfo;
	}

	public void setProductinfo(Productinfo productinfo) {
		this.productinfo = productinfo;
	}

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getRecipients() {
		return this.recipients;
	}

	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Boolean getCart() {
		return this.cart;
	}

	public void setCart(Boolean cart) {
		this.cart = cart;
	}

	public Integer getTransprice() {
		return this.transprice;
	}

	public void setTransprice(Integer transprice) {
		this.transprice = transprice;
	}

	public String getTransport() {
		return this.transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

	public String getPayway() {
		return this.payway;
	}

	public void setPayway(String payway) {
		this.payway = payway;
	}

}