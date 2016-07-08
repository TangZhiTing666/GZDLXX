package com.supersit.gzdlxx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.supersit.gzdlxx.pojo.MemberPlaceItem;
import com.supersit.gzdlxx.pojo.MemberResponse;



/**
 * 用于查找地理位置
 * @author win7
 *
 */
public interface MemberPlaceDao {

	void add(MemberPlaceItem item);
	/**
	 * 查找附近的人
	 */
	List<MemberResponse> selectMemberByArea(@Param("left")Double left,
				@Param("right")Double right,@Param("top")Double top,@Param("down")Double down,
				@Param("start")int start,@Param("end")int end);
	/**
	 * 
	 */
	List<MemberPlaceItem> selectByMemberid(@Param("memberid")String memberid);
}
