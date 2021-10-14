package com.util;

public class countUtil {
	
	// 订单统计信息
	private int shipping;// 代发货数量
	private int unconfirmed;// 未确认
	private int traded;// 已成交
	// 店铺统计信息
	private int shopscount;// 店铺总数量
	private int commodity;// 商品总数量
	private double countprice;// 总交易额
	// 广告统计信息
	private int postercount;// 广告数量
	private int yesposter;// 正在播放
	private int noposter;// 未播放
	private String postertype;// 店铺登录,查询所有可以放广告的地方
	private String yespostertype;
	private String nopostertype;
	// 用户统计
	private int usercount;// 用户数量
	private double boy;// 男性占比
	private double woman;// 女性占比
	private double unknown;// 未知性别占比
	
	
	
	public String getYespostertype() {
		return yespostertype;
	}
	public void setYespostertype(String yespostertype) {
		this.yespostertype = yespostertype;
	}
	public String getNopostertype() {
		return nopostertype;
	}
	public void setNopostertype(String nopostertype) {
		this.nopostertype = nopostertype;
	}
	public String getPostertype() {
		return postertype;
	}
	public void setPostertype(String postertype) {
		this.postertype = postertype;
	}
	public double getUnknown() {
		return unknown;
	}
	public void setUnknown(double unknown) {
		this.unknown = unknown;
	}
	public int getShipping() {
		return shipping;
	}
	public void setShipping(int shipping) {
		this.shipping = shipping;
	}
	public int getUnconfirmed() {
		return unconfirmed;
	}
	public void setUnconfirmed(int unconfirmed) {
		this.unconfirmed = unconfirmed;
	}
	public int getTraded() {
		return traded;
	}
	public void setTraded(int traded) {
		this.traded = traded;
	}
	public int getShopscount() {
		return shopscount;
	}
	public void setShopscount(int shopscount) {
		this.shopscount = shopscount;
	}
	public int getCommodity() {
		return commodity;
	}
	public void setCommodity(int commodity) {
		this.commodity = commodity;
	}
	public double getCountprice() {
		return countprice;
	}
	public void setCountprice(double countprice) {
		this.countprice = countprice;
	}
	public int getPostercount() {
		return postercount;
	}
	public void setPostercount(int postercount) {
		this.postercount = postercount;
	}
	public int getYesposter() {
		return yesposter;
	}
	public void setYesposter(int yesposter) {
		this.yesposter = yesposter;
	}
	public int getNoposter() {
		return noposter;
	}
	public void setNoposter(int noposter) {
		this.noposter = noposter;
	}
	public int getUsercount() {
		return usercount;
	}
	public void setUsercount(int usercount) {
		this.usercount = usercount;
	}
	public double getBoy() {
		return boy;
	}
	public void setBoy(double boy) {
		this.boy = boy;
	}
	public double getWoman() {
		return woman;
	}
	public void setWoman(double woman) {
		this.woman = woman;
	}
	public countUtil(){}
	
}
