package com.pojo;

public class productPojo {
	private int id;
	private String name;
	private int pid;
	private int shopid;
	private String detail;
	private String picture;
	private String price;
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public productPojo(int id, String name, int pid, int shopid, String detail,
			String picture) {
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.shopid = shopid;
		this.detail = detail;
		this.picture = picture;
	}
	public productPojo(){}
}
