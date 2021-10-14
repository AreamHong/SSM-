package com.pojo;

// 广告列表:陈旭超
public class Cityposter {
	
	private int id;
	private String name;// 广告名称
	private String postername;// 广告图片名称
	private int postertypeid;//广告类别id
	private int store;//播放id
	private String postercode;// 广告代码
	
	private Citypostertype postertype;

	public String getPostercode() {
		return postercode;
	}

	public void setPostercode(String postercode) {
		this.postercode = postercode;
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

	public String getPostername() {
		return postername;
	}

	public void setPostername(String postername) {
		this.postername = postername;
	}

	public int getPostertypeid() {
		return postertypeid;
	}

	public void setPostertypeid(int postertypeid) {
		this.postertypeid = postertypeid;
	}

	public int getStore() {
		return store;
	}

	public void setStore(int store) {
		this.store = store;
	}

	public Citypostertype getPostertype() {
		return postertype;
	}

	public void setPostertype(Citypostertype postertype) {
		this.postertype = postertype;
	}
	
	public Cityposter(){}
	
	
}
