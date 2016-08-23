package com.supersit.gzdlxx.pojo;

import java.util.Date;

/**
 * 农经数据（gznjzt-Agri_Income）
 * 农业收入情况
 * @author Administrator
 *
 */
public class AgriIncome {
	
	private String nianfen  ;// '年份';
	private  int sid  ;// '主键id';
	private  Double c_en_g_i  ;// '农村经济总收入';
	private  Double a_f_h_f_g_i  ;// '农业收入';
	private  Double plant_income  ;// '种植业收入';
	private  Double industry_income  ;// '林业收入';
	private  Double gross_fee  ;// '牧业收入';
	private  Double net_income  ;// '渔业收入';
	private  Double peasant__income  ;// '其他农业收入';
	private  Double peasant__perincome  ;// '工业收入';
	private  Double finance_income  ;// '建筑业收入';
	private  Double finance_outcome  ;// '运输业收入';
	private  Double corn_sale  ;// '商饮业收入';
	private  Double cotton_sale  ;// '服务业收入';
	private  Double oil_sale  ;// '其他收入';
	private  Double meat_sale  ;// '净收入';
	private  Double byproduct_purchase  ;// '农民人均所得';
	private  String  ad_num  ;// '区域行政编号';
	private  Date  input_time  ;// '数据插入（修改）时间';
	public String getNianfen() {
		return nianfen;
	}
	public void setNianfen(String nianfen) {
		this.nianfen = nianfen;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public Double getC_en_g_i() {
		return c_en_g_i;
	}
	public void setC_en_g_i(Double c_en_g_i) {
		this.c_en_g_i = c_en_g_i;
	}
	public Double getA_f_h_f_g_i() {
		return a_f_h_f_g_i;
	}
	public void setA_f_h_f_g_i(Double a_f_h_f_g_i) {
		this.a_f_h_f_g_i = a_f_h_f_g_i;
	}
	public Double getPlant_income() {
		return plant_income;
	}
	public void setPlant_income(Double plant_income) {
		this.plant_income = plant_income;
	}
	public Double getIndustry_income() {
		return industry_income;
	}
	public void setIndustry_income(Double industry_income) {
		this.industry_income = industry_income;
	}
	public Double getGross_fee() {
		return gross_fee;
	}
	public void setGross_fee(Double gross_fee) {
		this.gross_fee = gross_fee;
	}
	public Double getNet_income() {
		return net_income;
	}
	public void setNet_income(Double net_income) {
		this.net_income = net_income;
	}
	public Double getPeasant__income() {
		return peasant__income;
	}
	public void setPeasant__income(Double peasant__income) {
		this.peasant__income = peasant__income;
	}
	public Double getPeasant__perincome() {
		return peasant__perincome;
	}
	public void setPeasant__perincome(Double peasant__perincome) {
		this.peasant__perincome = peasant__perincome;
	}
	public Double getFinance_income() {
		return finance_income;
	}
	public void setFinance_income(Double finance_income) {
		this.finance_income = finance_income;
	}
	public Double getFinance_outcome() {
		return finance_outcome;
	}
	public void setFinance_outcome(Double finance_outcome) {
		this.finance_outcome = finance_outcome;
	}
	public Double getCorn_sale() {
		return corn_sale;
	}
	public void setCorn_sale(Double corn_sale) {
		this.corn_sale = corn_sale;
	}
	public Double getCotton_sale() {
		return cotton_sale;
	}
	public void setCotton_sale(Double cotton_sale) {
		this.cotton_sale = cotton_sale;
	}
	public Double getOil_sale() {
		return oil_sale;
	}
	public void setOil_sale(Double oil_sale) {
		this.oil_sale = oil_sale;
	}
	public Double getMeat_sale() {
		return meat_sale;
	}
	public void setMeat_sale(Double meat_sale) {
		this.meat_sale = meat_sale;
	}
	public Double getByproduct_purchase() {
		return byproduct_purchase;
	}
	public void setByproduct_purchase(Double byproduct_purchase) {
		this.byproduct_purchase = byproduct_purchase;
	}
	public String getAd_num() {
		return ad_num;
	}
	public void setAd_num(String ad_num) {
		this.ad_num = ad_num;
	}
	public Date getInput_time() {
		return input_time;
	}
	public void setInput_time(Date input_time) {
		this.input_time = input_time;
	}
	

}
