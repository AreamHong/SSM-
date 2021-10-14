package com.pojo;

public class Goods2Pojo {
	private int id;
	private String name;
	private int pid;
	private int isDelete;
	public Goods2Pojo(){}
	public Goods2Pojo(int id, String name, int pid, int isDelete) {
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.isDelete = isDelete;
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
	
}
