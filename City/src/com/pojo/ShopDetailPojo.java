package com.pojo;

public class ShopDetailPojo {
	private int id;
	private String shopname;
	private String money;
	private String images;
	
	public ShopDetailPojo() {
	}
	public ShopDetailPojo(int id, String shopname, String money, String images) {
		this.id = id;
		this.shopname = shopname;
		this.money = money;
		this.images = images;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	
}
