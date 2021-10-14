package com.pojo;

public class personalPojo {
	
	
	private int id;
	private String username;//用户名
	private String nickname;//密码
	private int gender;//性别
	private String age ;//出生日期,年龄.
	private String password;//密码
	private String phone;//手机号码
	private String portrait;//用户头像
	private int state;//账号状态
	private String prompt;//封禁原因
	private String jointime;// 注册时间
	private String logintime;// 最后登录时间
	
	
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
