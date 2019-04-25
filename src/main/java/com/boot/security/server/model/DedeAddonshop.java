package com.boot.security.server.model;



public class DedeAddonshop extends BaseEntity<Long> {

	private String aid;
	private String typeid;
	private String body;
	private Float price;
	private Float trueprice;
	private String brand;
	private String units;
	private String templet;
	private String userip;
	private String redirecturl;
	private String vocation;
	private String infotype;
	private Integer uptime;

	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Float getTrueprice() {
		return trueprice;
	}
	public void setTrueprice(Float trueprice) {
		this.trueprice = trueprice;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getUnits() {
		return units;
	}
	public void setUnits(String units) {
		this.units = units;
	}
	public String getTemplet() {
		return templet;
	}
	public void setTemplet(String templet) {
		this.templet = templet;
	}
	public String getUserip() {
		return userip;
	}
	public void setUserip(String userip) {
		this.userip = userip;
	}
	public String getRedirecturl() {
		return redirecturl;
	}
	public void setRedirecturl(String redirecturl) {
		this.redirecturl = redirecturl;
	}
	public String getVocation() {
		return vocation;
	}
	public void setVocation(String vocation) {
		this.vocation = vocation;
	}
	public String getInfotype() {
		return infotype;
	}
	public void setInfotype(String infotype) {
		this.infotype = infotype;
	}
	public Integer getUptime() {
		return uptime;
	}
	public void setUptime(Integer uptime) {
		this.uptime = uptime;
	}

}
