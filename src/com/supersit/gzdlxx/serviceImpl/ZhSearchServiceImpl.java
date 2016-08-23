package com.supersit.gzdlxx.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supersit.gzdlxx.njdao.NjzhDao;
import com.supersit.gzdlxx.pojo.AgriBasic;
import com.supersit.gzdlxx.pojo.AgriIncome;
import com.supersit.gzdlxx.pojo.AgriInvest;
import com.supersit.gzdlxx.pojo.AgryTownshipIndustries;
import com.supersit.gzdlxx.pojo.BreedingFishingBasic;
import com.supersit.gzdlxx.service.ZhSearchService;
import com.supersit.gzdlxx.util.CountTable;
import com.supersit.gzdlxx.util.CountTools;
import com.supersit.gzdlxx.util.ZHcount;
@Service
public class ZhSearchServiceImpl implements ZhSearchService {
	private Logger logger=Logger.getLogger(getClass());
	@Autowired
	private NjzhDao njdao;
	
	@Override
	public List<String> searchCountArea() {
		// TODO Auto-generated method stub
		List<String> list =null;
		try {
			list=njdao.getCountArea();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("获取全部区域查询数据库异常");
		}
		
		return list;
	}

	@Override
	public List<String> searchCountYear(String analysisClass) {
		// TODO Auto-generated method stub
		CountTools countTools =new CountTools();
		List<String> list = new ArrayList<String>();
		try {
			countTools.setAnalysisClass(analysisClass);
			list=njdao.getCountYear(countTools);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("获取全部年份查询数据库异常");
		}
		return list;
	}

	@Override
	public List<ZHcount> searchCount(CountTools countTools) {
		// TODO Auto-generated method stub
		List<ZHcount> list =new ArrayList<ZHcount>();
		try {
			if(countTools.getAnalysisType().trim().equals("1")){//区域对比
				list =njdao.getCountByArea(countTools);
			}else{//时间对比
				list =njdao.getCountByDate(countTools);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("区域对比或时间对比图列统计查询数据库异常");
		}
		return list;
	}

	@Override
	public List<CountTable> searchCounttable(CountTools countTools) {
		// TODO Auto-generated method stub
		List<CountTable> list =new ArrayList<CountTable>();
		try {
			list =njdao.getCounttable(countTools);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("区域对比或时间对比列表统计查询数据库异常");
		}
		return list;
	}

	@Override
	public List<Object> searchCountInfotable(CountTools countTools) {
		// TODO Auto-generated method stub
		List<Object> list =new ArrayList<Object>();
		try {
			//农业基本情况
			if(countTools.getAnalysisClass().trim().toUpperCase().equals("AGRI_BASIC")){
				List<AgriBasic> ablist =njdao.getCountAgriBasic(countTools);
				for(int i =0 ;i<ablist.size();i++){
					list.add(ablist.get(i));
				}
				//农业收入情况
			}else if(countTools.getAnalysisClass().trim().toUpperCase().equals("AGRI_INCOME")){
				List<AgriIncome> ablist =njdao.getCountAgriIncome(countTools);
				for(int i =0 ;i<ablist.size();i++){
					list.add(ablist.get(i));
				}
			}
			//农业主要投入
			else if(countTools.getAnalysisClass().trim().toUpperCase().equals("AGRI_INVEST")){
				List<AgriInvest> ablist =njdao.getCountAgriInvest(countTools);
				for(int i =0 ;i<ablist.size();i++){
					list.add(ablist.get(i));
				}
			}
			//农业及乡镇企业产值
			else if(countTools.getAnalysisClass().trim().toUpperCase().equals("AGRI_TOWNSHIP_INDUSTRIES")){
				List<AgryTownshipIndustries> ablist =njdao.getCountAgryTownshipIndustries(countTools);
				for(int i =0 ;i<ablist.size();i++){
					list.add(ablist.get(i));
				}
			}
			//畜牧业渔业基本情况
			else if(countTools.getAnalysisClass().trim().toUpperCase().equals("BREEDING_FISHING_BASIC")){
				List<BreedingFishingBasic> ablist =njdao.getCountBreedingFishingBasic(countTools);
				for(int i =0 ;i<ablist.size();i++){
					list.add(ablist.get(i));
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("信息统计查询数据库异常");
		}
		return list;
	}
	
	
	
}
