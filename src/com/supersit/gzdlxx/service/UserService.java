package com.supersit.gzdlxx.service;

import com.supersit.gzdlxx.pojo.ResultItem;
import com.supersit.gzdlxx.pojo.UsersItem;

/**
 * 用户信息service
 * @author Administrator
 *
 */
public interface UserService {
	
	/**
	 * 通过用户账号查询用户信息和权限（登录用）
	 * @param account
	 * @return UsersItem
	 */
	public ResultItem LoginUser(String account,String pwd);

	/**
	 * 通过用户id获取权限和用户信息
	 * @param userid
	 * @return
	 */
	public UsersItem getUsers(String userid);

	/**
	 * 返回功能菜单
	 * @param userid
	 * @return
	 */
	public ResultItem gobackchoose(String userid); 
}
