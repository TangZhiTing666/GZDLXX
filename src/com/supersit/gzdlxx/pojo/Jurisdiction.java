package com.supersit.gzdlxx.pojo;

/**
 * 用户功能权限实体类
 * @author Administrator
 *
 */
public class Jurisdiction {
	private int id;	//权限id
	private String jcName;//权限名字
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJcName() {
		return jcName;
	}
	public void setJcName(String jcName) {
		this.jcName = jcName;
	}
	
}
