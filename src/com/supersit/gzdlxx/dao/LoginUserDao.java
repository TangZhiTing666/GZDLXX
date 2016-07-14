package com.supersit.gzdlxx.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.supersit.gzdlxx.pojo.UsersItem;

/**
 * 登录获取用户信息
 * @author Administrator
 *
 */
public interface LoginUserDao {
	
	/**
	 * 查询用户基本信息
	 * @param username
	 * @return
	 */
	public UsersItem selectUser(@Param("username")String username);
	
	/**
	 * 查询用户权限
	 * @param id
	 * @return
	 */
	public Map getJurisdiction(int id);
}
