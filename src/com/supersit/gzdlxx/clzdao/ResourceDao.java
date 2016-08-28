package com.supersit.gzdlxx.clzdao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.supersit.gzdlxx.pojo.Resourice;

/**
 * 菜篮子资源数据dao
 * @author Administrator
 *
 */
public interface ResourceDao {
	
	/**
	 * 通过列表名称查询资源名字集合
	 * @param name
	 * @return
	 */
	public List<Resourice> getNames(@Param("name")String name);
	
	/**
	 * -名称模糊查询 获得资源数据
	 * @param typename
	 * @param name
	 * @return
	 */
	public List<Resourice> getResouriceByName(@Param("typename")String typename,@Param("name")String name);
	
	/**
	 * -id 获得资源数据
	 * @param typename
	 * @param name
	 * @return
	 */
	public List<Resourice> getResouriceById(@Param("id")int di);
}
