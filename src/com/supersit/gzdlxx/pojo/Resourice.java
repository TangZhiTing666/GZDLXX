package com.supersit.gzdlxx.pojo;

import java.sql.Clob;
import java.sql.SQLException;

/**
 * 菜篮子资源查询实体类
 * @author Administrator
 *
 */
public class Resourice {
	private int id ;
	private String name;
	private String address;
	private String type;
	private Clob clob;
	private String jianjie ;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Clob getClob() {
		return clob;
	}
	public void setClob(Clob clob) {
		this.clob = clob;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	
	public void setJianjie()  {
		if(this.clob!=null){
			try {
				this.jianjie = this.clob.getSubString((long)1, (int)clob.length());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
