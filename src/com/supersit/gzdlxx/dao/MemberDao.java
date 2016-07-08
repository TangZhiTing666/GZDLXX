package com.supersit.gzdlxx.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.supersit.gzdlxx.pojo.MemberItem;
import com.supersit.gzdlxx.pojo.MemberResponse;

public interface MemberDao {
	/**
	 * 	添加会员
	 */
	void add(MemberItem item);
	
	
	/**
	 * 按照用户名查找会员
	 * @param username
	 * @return
	 */
	List<MemberItem>  searchbyusername(@Param("username")String username);
	/**
	 *根据电话号码查找用户
	 */
	List<MemberItem>  searchbymobile(@Param("mobile")String mobile);
	/**
	 * 修改密码
	 * @param mobile
	 * @param password
	 */
	void updatepassword(@Param("mobile")String mobile,@Param("password")String password);
	/**
	 * 修改资料
	 */
	void updateMember(MemberItem item);
	/**
	 * 查看推荐列表
	 * @param start
	 * @param end
	 * @return
	 */
	List<MemberResponse> selectMember(@Param("start")int start,@Param("end")int end);
	/**
	 * 添加关注数量
	 */
	void updateFocuson(MemberItem item);
	/**
	 * 添加粉丝数量
	 */
	void updateFans(MemberItem item);
	/**
	 * 根据id查找会员
	 * @param id
	 * @return
	 */
	MemberItem selectMemberById(@Param("id")String id);
	/**
	 * 根据用户名查找会员
	 * @param username
	 * @param start
	 * @param end
	 * @return
	 */
	List<MemberResponse> selectMemberByUsername(@Param("username")String username,@Param("start")int start,@Param("end")int end);
}
