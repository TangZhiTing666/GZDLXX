package com.supersit.gzdlxx.pojo;
public class MemberItem extends BaseItem{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;//用户名
	private String password;//密码
	private String mobile;//电话号码
	private int sex;//性别,0保密，1男，2女
	private String imgpath;//头像路径
	private String remark;//简介
	private int  fans;//粉丝数
	private int focuson;//关注数

	public int getFans() {
		return fans;
	}
	public void setFans(int fans) {
		this.fans = fans;
	}
	public int getFocuson() {
		return focuson;
	}
	public void setFocuson(int focuson) {
		this.focuson = focuson;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	
	
}
