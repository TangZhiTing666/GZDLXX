package com.supersit.gzdlxx.pojo;

import java.util.Date;

/**
 * 
 * @author win7
 *
 */
public class MemberPlaceItem {

	private String	id;
	private String memberid;
	private Double longitud;//经度
	private Double latitude;//纬度
	private Date addtime=new Date();
	
	
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public Double getLongitud() {
		return longitud;
	}
	public void setLongitud(Double longitud) {
		this.longitud = longitud;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	
	
}
