package com.supersit.gzdlxx.service;

import com.supersit.gzdlxx.pojo.ResultItem;

/**
 * 用户信息service
 * @author Administrator
 *
 */
public interface UserService {
	
	/**
	 * 通过用户账号查询用于信息
	 * @param account
	 * @return UsersItem
	 */
	public ResultItem LoginUser(String account,String pwd); 
}
