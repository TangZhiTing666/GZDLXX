package com.supersit.gzdlxx.pojo;

/**
 * 用户功能权限实体类
 * @author Administrator
 *
 */
public class Jurisdiction {
	private int id;	//权限id
	private String qxName;//权限名字
	private int parentid;//权限父级id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQxName() {
		return qxName;
	}
	public void setQxName(String qxName) {
		this.qxName = qxName;
	}
	public int getParentid() {
		return parentid;
	}
	public void setParentid(int parentid) {
		this.parentid = parentid;
	}
	
	
}
