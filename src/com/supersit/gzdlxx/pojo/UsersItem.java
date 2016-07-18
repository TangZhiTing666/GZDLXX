package com.supersit.gzdlxx.pojo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户信息实体类
 * @author Administrator
 *
 */
public class UsersItem {
	private int id;//用户id
	private String account;//用户账号
	private String userName;//用户名字
	private String userPwd;//用户密码
	private String status;//用户状态
	private String pcToken;//单用户登录判断（pc端）
	private String ydToken;//单用户登录判断（移动端）
	//private Jurisdiction jc;
	List<Jurisdiction> list =new ArrayList< Jurisdiction>();//功能权限集合
	
	
	public List<Jurisdiction> getList() {
		return list;
	}
	public void setList(List<Jurisdiction> list) {
		this.list = list;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getPcToken() {
		return pcToken;
	}
	public void setPcToken(String pcToken) {
		this.pcToken = pcToken;
	}
	public String getYdToken() {
		return ydToken;
	}
	public void setYdToken(String ydToken) {
		this.ydToken = ydToken;
	}
	
}
