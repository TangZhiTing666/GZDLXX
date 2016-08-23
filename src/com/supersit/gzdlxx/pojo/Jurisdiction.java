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
	private int type;//权限级别标识 0：第一级 1：第二级 2：第三级 3：第四级。。。。。。。。。 
	
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
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
