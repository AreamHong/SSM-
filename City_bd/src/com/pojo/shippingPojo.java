package com.pojo;

public class shippingPojo {
	private int id;
	private String contact;//�û���
	private String province;//ʡ��
	private String city;//��
	private String area;//��
	private String address;//��ϸ��ַ
	private String phone;//�ֻ���
	private int pid;
	private String addressdef;//Ĭ�ϵ�ַid
	
	public String getAddressdef() {
		return addressdef;
	}
	public void setAddressdef(String addressdef) {
		this.addressdef = addressdef;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public shippingPojo(int id, String contact, String province, String city,
			String area, String address, String phone, int pid) {
		this.id = id;
		this.contact = contact;
		this.province = province;
		this.city = city;
		this.area = area;
		this.address = address;
		this.phone = phone;
		this.pid = pid;
	}
	public shippingPojo(){
		
	}
	
}
