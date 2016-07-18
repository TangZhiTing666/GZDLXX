package com.supersit.gzdlxx.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.supersit.gzdlxx.pojo.Jurisdiction;
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
	public List<Jurisdiction> getJurisdiction(@Param("id")int id);

	/**
	 * 修改pctoken码
	 * @param id
	 * @param string
	 */
	public void updatePcToken(@Param("id")int id, @Param("number")String number);
	
	/**
	 * 修改ydtoken码
	 * @param id
	 * @param number
	 */
	public void updateYdToken(@Param("id")int id, @Param("number")String number);
	
	/**
	 * 通过用户id查询Token码
	 * @param id
	 * @param token 要查询的token列名字
	 * @return
	 */
	public String seleteToken(@Param("id")int id,@Param("id")String token);
	
	/**
	 * 锁定用户
	 * @param id
	 * @param number
	 */
	public void updateStatus(@Param("id")int id, @Param("status")String status);
	
	
}
