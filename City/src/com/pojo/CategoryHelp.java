package com.pojo;

public class CategoryHelp {
	private String cgkey;
	private String cgvalue;
	
	public CategoryHelp() {
	
	}
	public CategoryHelp(String cgkey, String cgvalue) {
		this.cgkey = cgkey;
		this.cgvalue = cgvalue;
	}
	public String getCgkey() {
		return cgkey;
	}
	public void setCgkey(String cgkey) {
		this.cgkey = cgkey;
	}
	public String getCgvalue() {
		return cgvalue;
	}
	public void setCgvalue(String cgvalue) {
		this.cgvalue = cgvalue;
	}
	
}
