package com.util;

import java.util.List;

public class pageUtil<T> {
	public pageUtil(){}
	public pageUtil(int index, int pagecount, List<T> list, String mess) {
		this.index = index;
		this.pagecount = pagecount;
		this.list = list;
		this.mess = mess;
	}
	
	
	private int index;
	private int pagecount;
	private List<T> list;
	private String mess = "";
	
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public String getMess() {
		return mess;
	}
	public void setMess(String mess) {
		this.mess = mess;
	}
	
}
