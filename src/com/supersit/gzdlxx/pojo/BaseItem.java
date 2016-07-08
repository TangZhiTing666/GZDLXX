package com.supersit.gzdlxx.pojo;

import java.io.Serializable;
import java.util.Date;


/**
 * 基类
 * @author Administrator
 *
 */
public class BaseItem implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;//编号
	private int isdelete;//是否删除�?0删除�?1未删�?
	private Date addtime=new Date();//添加时间
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
