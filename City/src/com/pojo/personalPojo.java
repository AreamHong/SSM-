package com.pojo;

public class personalPojo {
	
	
	private int id;
	private String username;//�û���
	private String nickname;//����
	private int gender;//�Ա�
	private String age ;//��������,����.
	private String password;//����
	private String phone;//�ֻ�����
	private String portrait;//�û�ͷ��
	private int state;//�˺�״̬
	private String prompt;//���ԭ��
	private String jointime;// ע��ʱ��
	private String logintime;// ����¼ʱ��
	
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	public String getJointime() {
		return jointime;
	}
	public void setJointime(String jointime) {
		this.jointime = jointime;
	}
	public String getLogintime() {
		return logintime;
	}
	public void setLogintime(String logintime) {
		this.logintime = logintime;
	}
	public String getPortrait() {
		return portrait;
	}
	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
			this.age = age;		
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	public personalPojo(int id, String username, String nickname, int gender,
			String age, String password, String phone) {
		this.id = id;
		this.username = username;
		this.nickname = nickname;
		this.gender = gender;
		this.age = age;
		this.password = password;
		this.phone = phone;
	}
	
	public personalPojo(){
		
	}
	
	
}
