package com.pojo;

public class shop_details {
	private int id;
	private String shopname;
	private int shopid;
	private int pid;
	private String attribute1;
	private String attribute2;
	private String merchants;
	private String inventory;
	private String money;
	private String images;
	private String nickname;
	private String portrait;
	
	public String getPortrait() {
		return portrait;
	}
	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
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
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getAttribute1() {
		return attribute1;
	}
	public void setAttribute1(String attribute1) {
		this.attribute1 = attribute1;
	}
	public String getAttribute2() {
		return attribute2;
	}
	public void setAttribute2(String attribute2) {
		this.attribute2 = attribute2;
	}
	public String getMerchants() {
		return merchants;
	}
	public void setMerchants(String merchants) {
		this.merchants = merchants;
	}
	public String getInventory() {
		return inventory;
	}
	public void setInventory(String inventory) {
		this.inventory = inventory;
	}

	public shop_details(int id, String shopname, int shopid, int pid,
			String attribute1, String attribute2, String merchants,
			String inventory, String money, String images) {
		this.id = id;
		this.shopname = shopname;
		this.shopid = shopid;
		this.pid = pid;
		this.attribute1 = attribute1;
		this.attribute2 = attribute2;
		this.merchants = merchants;
		this.inventory = inventory;
		this.money = money;
		this.images = images;
	}
	public shop_details(){
		
	}
	
}
