package com.supersit.gzdlxx.util;

/**
 * 综合统计工具类
 * analysisType;//分析类型
 * analysisClass;//分析类容
 * analysisDate;//分析时间
 * analysisArea;//分析区域
 * analysisOfFactor;//分析因子
 * @author Administrator
 *
 */
public class CountTools {
	private String analysisType;//分析类型
	private String analysisClass;//分析类容
	private String analysisDate;//分析时间
	private String analysisArea;//分析区域
	private String analysisOfFactor;//分析因子
	
	public String getAnalysisArea() {
		return analysisArea;
	}
	public void setAnalysisArea(String analysisArea) {
		this.analysisArea = analysisArea;
	}
	public String getAnalysisType() {
		return analysisType;
	}
	public void setAnalysisType(String analysisType) {
		this.analysisType = analysisType;
	}
	public String getAnalysisClass() {
		return analysisClass;
	}
	public void setAnalysisClass(String analysisClass) {
		this.analysisClass = analysisClass;
	}
	public String getAnalysisDate() {
		return analysisDate;
	}
	public void setAnalysisDate(String analysisDate) {
		this.analysisDate = analysisDate;
	}
	public String getAnalysisOfFactor() {
		return analysisOfFactor;
	}
	public void setAnalysisOfFactor(String analysisOfFactor) {
		this.analysisOfFactor = analysisOfFactor;
	}
}
