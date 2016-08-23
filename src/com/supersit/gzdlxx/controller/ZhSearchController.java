package com.supersit.gzdlxx.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.supersit.gzdlxx.pojo.AgriBasic;
import com.supersit.gzdlxx.service.UserService;
import com.supersit.gzdlxx.service.ZhSearchService;
import com.supersit.gzdlxx.util.CountTable;
import com.supersit.gzdlxx.util.CountTools;
import com.supersit.gzdlxx.util.ZHcount;

/**
 * 综合查询模块跳转和逻辑
 * @author Administrator
 *
 */
@Controller
public class ZhSearchController {
	private Logger logger=Logger.getLogger(getClass());
	@Autowired
	private ZhSearchService zhService;
	
	  /**
	   * 主页点击默认跳转（图裂）
	   * 分析类型  区域对比 1
	   * 分析类容  农业基本情况  AGRI_BASIC 
	   * 分析时间  数据库最近时间
	   * 分析因子  农村劳动力 COUNTRY_WORKER
	   * @param request
	   * @param model
	   * @return
	  */
	@RequestMapping(value = "/zhcx")
    public String  zhcx(HttpServletRequest request,
    		Model model
    		//@RequestParam(value="jspflog") String jspflog
    ) {
		try {
			List<String> arealist =new ArrayList<String>();
			List<String> yearlist =new ArrayList<String>();
			//Calendar ca=Calendar.getInstance();
		    //ca.get(Calendar.YEAR) 获取系统时间————年份
			CountTools countTools =new CountTools();
			countTools.setAnalysisType("1");//分析类型 区域对比1
			countTools.setAnalysisClass("AGRI_BASIC");//分析类容  农业基本情况
			try {
				arealist=zhService.searchCountArea();
			} catch (Exception ex) {
				// TODO: handle exception
				ex.printStackTrace();
				logger.debug("获取所有区域失败");
			}				
			try {
				yearlist=zhService.searchCountYear("AGRI_BASIC");	
				if(yearlist.size()>0){
					countTools.setAnalysisDate("'"+yearlist.get(0)+"'");//分析年份 
				}else{
					logger.info("数据库没有存在包含有年份的数据");
					model.addAttribute("arealist",arealist);
					return "zhcx";
				}
				
			} catch (Exception ex) {
			// TODO: handle exception
				ex.printStackTrace();
				logger.debug("统计获取年份失败");			  
			}
			countTools.setAnalysisOfFactor("COUNTRY_WORKER");//分析因子  农村劳动力
			List<ZHcount> list =zhService.searchCount(countTools);	
			//System.out.println("arealist.size ="+arealist.size());
			//System.out.println("yearlist.size ="+yearlist.size());
			//System.out.println("list.size ="+list.get(0).getCounttype());
			logger.info("统计 区域对比-AGRI_BASIC-COUNTRY_WORKER 成功");
	    	model.addAttribute("arealist",arealist);
	    	model.addAttribute("yearlist",yearlist);
	    	model.addAttribute("list",list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("统计 区域对比-AGRI_BASIC-COUNTRY_WORKER 失败");
			
		}
	        return "zhcx";
	}
	
	/**
	 * 异步获取综合统计结果（图例）
	 * @param request
	 * @param analysisType
	 * @param AnalysisClass
	 * @param analysisDate
	 * @param analysisArea
	 * @param analysisOfFactor
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getCountlist")
	public @ResponseBody List<ZHcount> getCountlist(HttpServletRequest request,
			@RequestParam(value="analysisType") String analysisType ,
			@RequestParam(value="analysisClass") String analysisClass ,
			@RequestParam(value="analysisDate") String analysisDate ,
			@RequestParam(value="analysisArea") String analysisArea ,
			@RequestParam(value="analysisOfFactor") String analysisOfFactor ,
			Model model			
			){
		List<ZHcount> list =new ArrayList<ZHcount>();
		try {
			CountTools countTools =new CountTools();
			countTools.setAnalysisType(analysisType);//分析类型 区域对比 1 时间对比 2 
			countTools.setAnalysisClass(analysisClass);//分析类容  
			countTools.setAnalysisDate("'"+analysisDate+"'");//分析年份 
			countTools.setAnalysisArea("'"+analysisArea+"'");//分析区域
			countTools.setAnalysisOfFactor(analysisOfFactor);//分析因子  
			list = zhService.searchCount(countTools);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("异步获取"+analysisType+analysisClass+analysisArea+analysisDate+analysisOfFactor+"统计结果（图例）失败");
		}
		return list;
	}
	
	/**
	 * 异步获取综合统计结果（ 区域对比 和 时间对比 列表）
	 * @param request
	 * @param analysisType
	 * @param AnalysisClass
	 * @param analysisDate
	 * @param analysisArea
	 * @param analysisOfFactor
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getCounttable")
	public @ResponseBody List<CountTable> getCounttable(HttpServletRequest request,			
			@RequestParam(value="analysisClass") String analysisClass ,
			Model model
			){
		List<CountTable> list =new ArrayList<CountTable>();
		try {
			CountTools countTools =new CountTools();
			//countTools.setAnalysisType(analysisType);//分析类型 区域对比 1 时间对比 2 
			countTools.setAnalysisClass(analysisClass);//分析类容  
			//countTools.setAnalysisDate(analysisDate);//分析年份 
			//countTools.setAnalysisOfFactor(analysisOfFactor);//分析因子  
			list = zhService.searchCounttable(countTools);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("异步获取"+analysisClass+"统计结果（列表）失败");
		}
		return list;
	}
	
	/**
	 * 异步信息统计统计(列表)
	 * @param request
	 * @param AnalysisClass
	 * @param analysisDate
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getCountInfotable")
	public @ResponseBody List<Object> getCountInfotable(HttpServletRequest request,
			@RequestParam(value="analysisClass") String analysisClass ,
			@RequestParam(value="analysisDate") String analysisDate ,
			Model model
			){
		List<Object> list =new ArrayList<Object>();
		try {
			CountTools countTools =new CountTools();
			countTools.setAnalysisClass(analysisClass);//分析类容  
			countTools.setAnalysisDate(analysisDate);//分析年份 
			list =zhService.searchCountInfotable(countTools);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("异步信息统计统计结果（列表）失败");
		}
		return list;
	}
	
	/**
	 * 根据统计类容获取年份
	 * @param request
	 * @param AnalysisClass
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getYear")
	public  @ResponseBody List<String>  getYear(HttpServletRequest request,
			@RequestParam(value="analysisClass") String analysisClass ,
    		Model model){
		List<String> yearlist =new ArrayList<String>();
		try {
			 yearlist=zhService.searchCountYear(analysisClass);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("获取统计年份失败");
		}
		return yearlist;
	}
	/**
	 * 获取所有区域
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getArea")
	public  @ResponseBody List<String>  getArea(HttpServletRequest request,
    		Model model) {
		List<String> arealist =new ArrayList<String>();
		try {
			arealist=zhService.searchCountArea();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("获取统计区域失败");
		}
		return arealist;	
	}
}
