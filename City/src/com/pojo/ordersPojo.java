package com.pojo;

public class ordersPojo {
	private String storename;//�̼ҵ���
	private String shopname;//��Ʒ����
	private String attribute2;//��Ʒ�����ͺ�
	private String totalprice;//��Ʒ�۸�
	private int quantity;//��Ʒ��������
	private int inventory;//���
	private int sum;
	private int id;	//��Ʒid
	private int merchants; //�̼ҵ���id
	
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
