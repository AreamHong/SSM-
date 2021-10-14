package com.pojo;

public class Goods3Pojo {
	private int id;
	private String name;
	private int pid;
	private int isDelete;
	private int categoryCount;
	private String category1;
	private String category2;
	private String category3;
	private String category4;
	private String category5;
	public Goods3Pojo(){}
	
	
	
	public Goods3Pojo(int id, String name, int pid, int isDelete,
			int categoryCount, String category1, String category2,
			String category3, String category4, String category5) {
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.isDelete = isDelete;
		this.categoryCount = categoryCount;
		this.category1 = category1;
		this.category2 = category2;
		this.category3 = category3;
		this.category4 = category4;
		this.category5 = category5;
	}
	public String getCategory1() {
		return category1;
	}



	public void setCategory1(String category1) {
		this.category1 = category1;
	}



	public String getCategory2() {
		return category2;
	}



	public void setCategory2(String category2) {
		this.category2 = category2;
	}



	public String getCategory3() {
		return category3;
	}



	public void setCategory3(String category3) {
		this.category3 = category3;
	}



	public String getCategory4() {
		return category4;
	}



	public void setCategory4(String category4) {
		this.category4 = category4;
	}



	public String getCategory5() {
		return category5;
	}



	public void setCategory5(String category5) {
		this.category5 = category5;
	}



	public int getCategoryCount() {
		return categoryCount;
	}

	public void setCategoryCount(int categoryCount) {
		this.categoryCount = categoryCount;
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