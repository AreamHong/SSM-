package com.pojo;

import java.util.Date;
//³ÂÐñ³¬¶©µ¥×´Ì¬±í
public class CityOrdertype {
	
	private int id;//id
	private String type;//¶©µ¥×´Ì¬
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public CityOrdertype() {
	}
	public CityOrdertype(int id, String type) {
		this.id = id;
		this.type = type;
	}
	
	
	
	
	
}
