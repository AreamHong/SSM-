package com.pojo;

// ����б�:����
public class Cityposter {
	
	private int id;
	private String name;// �������
	private String postername;// ���ͼƬ����
	private int postertypeid;//������id
	private int store;//����id
	private String postercode;// ������
	
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
