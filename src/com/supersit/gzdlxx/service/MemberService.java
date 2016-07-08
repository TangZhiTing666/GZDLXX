package com.supersit.gzdlxx.service;

import java.util.List;

import com.supersit.gzdlxx.pojo.MemberItem;
import com.supersit.gzdlxx.pojo.MemberResponse;
import com.supersit.gzdlxx.pojo.ResultItem;


/**
 * 会员Service
 * @author win7
 *
 */
public interface MemberService {
	/**
	 * 添加
	 * @param item
	 * @return
	 */
	public ResultItem add(MemberItem item);
	/**
	 *登录
	 */
	public ResultItem login(MemberItem item,Double longitud,Double latitude);
	/**
	 *用手机号找回密码
	 */
	public ResultItem findPassword(String mobile,String password);
	/**
	 * 修改资料
	 * @param item
	 * @return
	 */
	public ResultItem updateMember(MemberItem item);
	/**
	 * 根据用户名查找用户
	 * @param username
	 * @param start
	 * @param end
	 * @return
	 */
	public List<MemberResponse> selectMemberByUsername(String username,int start,int end);

	/**
	 * 查找附近的人
	 * @param memberid
	 * @param start
	 * @param end
	 * @return
	 */
	public List<MemberResponse> selectMemberByArea(String memberid,int start,int end);
}
