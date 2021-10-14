package com.pojo;

public class ordersPojo {
	private String storename;//商家店铺
	private String shopname;//商品名称
	private String attribute2;//商品属性型号
	private String totalprice;//商品价格
	private int quantity;//商品购买数量
	private int inventory;//存货
	private int sum;
	private int id;	//商品id
	private int merchants; //商家店铺id
	
	public int getMerchants() {
		return merchants;
	}
	public void setMerchants(int merchants) {
		this.merchants = merchants;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getInventory() {
		return inventory;
	}
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getAttribute2() {
		return attribute2;
	}
	public void setAttribute2(String attribute2) {
		this.attribute2 = attribute2;
	}
	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public ordersPojo(String storename, String shopname, String attribute2,
			String totalprice, int quantity, int inventory, int sum) {
		this.storename = storename;
		this.shopname = shopname;
		this.attribute2 = attribute2;
		this.totalprice = totalprice;
		this.quantity = quantity;
		this.inventory = inventory;
		this.sum = sum;
	}
	public ordersPojo(){
		
	}
}
