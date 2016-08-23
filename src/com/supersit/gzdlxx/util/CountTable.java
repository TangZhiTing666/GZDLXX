package com.supersit.gzdlxx.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 时间对比和区域对比表格
 * @author Administrator
 *
 */
public class CountTable {
	private String areanum;//区域编号
	private String areaname;//区域名称
	private List<ZHcount> list =new ArrayList<ZHcount>();//年份统计集合
	
	public String getAreanum() {
		return areanum;
	}
	public void setAreanum(String areanum) {
		this.areanum = areanum;
	}
	public String getAreaname() {
		return areaname;
	}
	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}
	public List<ZHcount> getList() {
		return list;
	}
	public void setList(List<ZHcount> list) {
		this.list = list;
	}
}
