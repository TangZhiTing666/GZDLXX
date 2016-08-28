package com.supersit.gzdlxx.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.supersit.gzdlxx.pojo.Resourice;

/**
 * 菜篮子资源查询service
 * @author Administrator
 *
 */
public interface ClzResourceService {
	/**
	 * 通过列表名称查询资源名字集合
	 * @param name
	 * @return
	 */
	public List<Resourice> getNames(String name);
	
	/**
	 * -名称模糊查询 获得资源数据
	 * @param typename
	 * @param name
	 * @return
	 */
	public List<Resourice> getResouriceByName(String typename,String name);
	
	/**
	 * -id 获得资源数据
	 * @param typename
	 * @param name
	 * @return
	 */
	public List<Resourice> getResouriceById(String id);
}
