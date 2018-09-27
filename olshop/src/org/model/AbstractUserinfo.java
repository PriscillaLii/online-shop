package org.model;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractUserinfo entity provides the base persistence definition of the
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUserinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String pwd;
	private String email;
	private String address;
	private String postcode;
	private Integer power;
	private String tel;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractUserinfo() {
	}

	/** minimal constructor */
	public AbstractUserinfo(String username, String pwd, String email) {
		this.username = username;
		this.pwd = pwd;
		this.email = email;
	}

	/** full constructor */
	public AbstractUserinfo(String username, String pwd, String email,
			String address, String postcode, Integer power, String tel,
			Set orders) {
		this.username = username;
		this.pwd = pwd;
		this.email = email;
		this.address = address;
		this.postcode = postcode;
		this.power = power;
		this.tel = tel;
		this.orders = orders;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public Integer getPower() {
		return this.power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}