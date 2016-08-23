package com.supersit.gzdlxx.service;

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
 * 综合查询Service
 * @author Administrator
 *
 */
public interface ZhSearchService {
	
	/**
	 * 统计区域
	 * @return
	 */
	public List<String> searchCountArea();
	
	/**
	 * 统计年份——根据不用分析类容（即不同表）统计
	 * @param countTools
	 * @return
	 */
	public List<String> searchCountYear(String AnalysisClass);
		
	/**
	 * 区域对比统计和时间对比统计
	 * @param countTools
	 * @return
	 */
	public List<ZHcount> searchCount(CountTools countTools);
	
	/**
	 * 时间对比和区域对比统计表格
	 * @param countTools
	 * @return
	 */
	public List<CountTable> searchCounttable(CountTools countTools);
	
	/**
	 * 信息统计(列表)
	 * @param countTools
	 * @return
	 */
	public List<Object> searchCountInfotable(CountTools countTools);
	
	
}
