package com.supersit.gzdlxx.njdao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.supersit.gzdlxx.pojo.AgriBasic;
import com.supersit.gzdlxx.pojo.AgriIncome;
import com.supersit.gzdlxx.pojo.AgriInvest;
import com.supersit.gzdlxx.pojo.AgryTownshipIndustries;
import com.supersit.gzdlxx.pojo.BreedingFishingBasic;
import com.supersit.gzdlxx.util.CountTable;
import com.supersit.gzdlxx.util.CountTools;
import com.supersit.gzdlxx.util.ZHcount;

/**
 * 综合查询（农经数据库  gznjzt）
 * @author Administrator
 *
 */
public interface NjzhDao {
	
	/**
	 * 统计区域
	 * @return
	 */
	public List<String> getCountArea();
	
	/**
	 * 统计年份——根据不用分析类容（即不同表）统计
	 * @param countTools
	 * @return
	 */
	public List<String> getCountYear(@Param("countTools") CountTools countTools);
	
	/**
	 * 区域对比统计
	 * @param countTools
	 * @return
	 */
	public List<ZHcount> getCountByArea(@Param("countTools")CountTools countTools);
	
	/**
	 * 时间对比统计
	 * @param countTools
	 * @return
	 */
	public List<ZHcount> getCountByDate(@Param("countTools")CountTools countTools);
	
	/**
	 * 时间对比和区域对比统计表格
	 * @param countTools
	 * @return
	 */
	public List<CountTable> getCounttable(@Param("countTools")CountTools countTools);
	
	/**
	 * 信息统计——农业基本情况
	 * @param countTools
	 * @return
	 */
	public List<AgriBasic> getCountAgriBasic(@Param("countTools")CountTools countTools);
	
	/**
	 * 信息统计——农业收入情况
	 * @param countTools
	 * @return
	 */
	public List<AgriIncome> getCountAgriIncome(@Param("countTools")CountTools countTools);
	
	/**
	 * 信息统计——农业主要投入
	 * @param countTools
	 * @return
	 */
	public List<AgriInvest> getCountAgriInvest(@Param("countTools")CountTools countTools);
	
	/**
	 * 信息统计——农业及乡镇企业产值
	 * @param countTools
	 * @return
	 */
	public List<AgryTownshipIndustries> getCountAgryTownshipIndustries(@Param("countTools")CountTools countTools);
	
	/**
	 * 信息统计——畜牧业渔业基本情况
	 * @param countTools
	 * @return
	 */
	public List<BreedingFishingBasic> getCountBreedingFishingBasic(@Param("countTools")CountTools countTools);
	
}
