package org.model;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractProductinfo entity provides the base persistence definition of the
 * Productinfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractProductinfo implements java.io.Serializable {

	// Fields

	private Integer pid;
	private String pname;
	private Integer typeid;
	private String intro;
	private Double marketprice;
	private Double sellprice;
	private Double transprice;
	private Integer sellcount;
	private String picture;
	private String date;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractProductinfo() {
	}

	/** minimal constructor */
	public AbstractProductinfo(String pname, Integer typeid,
			Double marketprice, Double sellprice, Double transprice,
			Integer sellcount, String date) {
		this.pname = pname;
		this.typeid = typeid;
		this.marketprice = marketprice;
		this.sellprice = sellprice;
		this.transprice = transprice;
		this.sellcount = sellcount;
		this.date = date;
	}

	/** full constructor */
	public AbstractProductinfo(String pname, Integer typeid, String intro,
			Double marketprice, Double sellprice, Double transprice,
			Integer sellcount, String picture, String date, Set orders) {
		this.pname = pname;
		this.typeid = typeid;
		this.intro = intro;
		this.marketprice = marketprice;
		this.sellprice = sellprice;
		this.transprice = transprice;
		this.sellcount = sellcount;
		this.picture = picture;
		this.date = date;
		this.orders = orders;
	}

	// Property accessors

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getTypeid() {
		return this.typeid;
	}

	public void setTypeid(Integer typeid) {
		this.typeid = typeid;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Double getMarketprice() {
		return this.marketprice;
	}

	public void setMarketprice(Double marketprice) {
		this.marketprice = marketprice;
	}

	public Double getSellprice() {
		return this.sellprice;
	}

	public void setSellprice(Double sellprice) {
		this.sellprice = sellprice;
	}

	public Double getTransprice() {
		return this.transprice;
	}

	public void setTransprice(Double transprice) {
		this.transprice = transprice;
	}

	public Integer getSellcount() {
		return this.sellcount;
	}

	public void setSellcount(Integer sellcount) {
		this.sellcount = sellcount;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}