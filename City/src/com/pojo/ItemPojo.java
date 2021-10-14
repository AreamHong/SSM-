package com.pojo;

public class ItemPojo {
	private int id;
	private String name;
	private int pid;
	private int isDelete;
	private int shopId;
	private String picture;
	private String detail;
	private double price;
	private String category1;
	private String category2;
	private String category3;
	private String category4;
	private String shopname;
	public ItemPojo(){};
	
	

	public ItemPojo(int id, String name, int pid, int isDelete, int shopId,
			String picture, String detail, double price, String category1,
			String category2, String category3, String category4,
			String shopname) {
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.isDelete = isDelete;
		this.shopId = shopId;
		this.picture = picture;
		this.detail = detail;
		this.price = price;
		this.category1 = category1;
		this.category2 = category2;
		this.category3 = category3;
		this.category4 = category4;
		this.shopname = shopname;
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
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	public String getCategory1() {
		return category1;
	}

	public void setCategory1(String category1) {
		this.category1 = category1;
	}

	public String getCategory2() {
		return category2;
	}

	public void setCategory2(String category2) {
		this.category2 = category2;
	}

	public String getCategory3() {
		return category3;
	}

	public void setCategory3(String category3) {
		this.category3 = category3;
	}

	public String getCategory4() {
		return category4;
	}

	public void setCategory4(String category4) {
		this.category4 = category4;
	}



	public String getShopname() {
		return shopname;
	}



	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
}
