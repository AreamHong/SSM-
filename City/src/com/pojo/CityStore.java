package com.pojo;

// µÍ∆Ã
public class CityStore {
	
	private int id;
	private String storename;// µÍ∆Ã√˚≥∆
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public CityStore(){}
	public CityStore(int id, String storename) {
		this.id = id;
		this.storename = storename;
	}
	
	
}
