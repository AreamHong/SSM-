package com.pojo;

import java.util.List;

// 陈旭超	购物车实体类
public class CityShopping {
	
	private int id;// id
	private int userid;// 用户id
	private int storeid;// 店铺id
	private int shopsid;// 店铺id
	private int detailsid;// 商品id
	private int quantity;// 商品数量
	private double totalprice;// 商品总价格
	private int type;//类别
	
	private CityStore store;
	private shopsPojo shops;
	private shop_details sdetaols;
	
	
	
	public int getShopsid() {
		return shopsid;
	}
	public void setShopsid(int shopsid) {
		this.shopsid = shopsid;
	}
	public shopsPojo getShops() {
		return shops;
	}
	public void setShops(shopsPojo shops) {
		this.shops = shops;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public shop_details getSdetaols() {
		return sdetaols;
	}
	public void setSdetaols(shop_details sdetaols) {
		this.sdetaols = sdetaols;
	}
	public CityStore getStore() {
		return store;
	}
	public void setStore(CityStore store) {
		this.store = store;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	
	public int getDetailsid() {
		return detailsid;
	}
	public void setDetailsid(int detailsid) {
		this.detailsid = detailsid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public CityShopping(){}
	public CityShopping(int id, int userid, int storeid, int detailsid,
			int quantity, double totalprice) {
		this.id = id;
		this.userid = userid;
		this.storeid = storeid;
		this.detailsid = detailsid;
		this.quantity = quantity;
		this.totalprice = totalprice;
	};
	
	
}
