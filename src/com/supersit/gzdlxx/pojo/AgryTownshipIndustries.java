package com.supersit.gzdlxx.pojo;

import java.util.Date;

/**
 *  农经数据（gznjzt-Agry_Township_Industries）
 *  农业及乡镇企业产值
 * @author Administrator
 *
 */
public class AgryTownshipIndustries {
	private  String nianfen  ;// '年份';
	private  int sid  ;// '主键id';
	private  Double enterprise_person  ;// '乡镇企业职工人数(人) ';
	private  Double enterprise_add_value  ;// '乡镇企业数(家) ';
	private  Double enterprise_benefit_tax  ;// '乡镇企业总产值(万元) ';
	private  Double gsp  ;// '副业总产值(万元) ';
	private  Double sum_agri  ;// '农业总产值(万元) ';
	private  Double add_agri  ;// '种植业总产值(万元) ';
	private  Double sum_indu  ;// '工业总产值(万元) ';
	private  Double sum_cons  ;// '建筑业总产值(万元) ';
	private  Double sum_tra  ;// '交通运输业总产值(万元) ';
	private  Double sum_trade  ;// '商业总产值(万元) ';
	private  Double sum_forest  ;// '林业总产值(万元) ';
	private  Double sum_herd  ;// '牧业总产值(万元) ';
	private  Double sum_fish  ;// '渔业总产值(万元) 
	private  String ad_num  ;// '区域行政代码';
	private  Date input_time  ;// '数据插入（修改时间）';
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
	public Double getEnterprise_person() {
		return enterprise_person;
	}
	public void setEnterprise_person(Double enterprise_person) {
		this.enterprise_person = enterprise_person;
	}
	public Double getEnterprise_add_value() {
		return enterprise_add_value;
	}
	public void setEnterprise_add_value(Double enterprise_add_value) {
		this.enterprise_add_value = enterprise_add_value;
	}
	public Double getEnterprise_benefit_tax() {
		return enterprise_benefit_tax;
	}
	public void setEnterprise_benefit_tax(Double enterprise_benefit_tax) {
		this.enterprise_benefit_tax = enterprise_benefit_tax;
	}
	public Double getGsp() {
		return gsp;
	}
	public void setGsp(Double gsp) {
		this.gsp = gsp;
	}
	public Double getSum_agri() {
		return sum_agri;
	}
	public void setSum_agri(Double sum_agri) {
		this.sum_agri = sum_agri;
	}
	public Double getAdd_agri() {
		return add_agri;
	}
	public void setAdd_agri(Double add_agri) {
		this.add_agri = add_agri;
	}
	public Double getSum_indu() {
		return sum_indu;
	}
	public void setSum_indu(Double sum_indu) {
		this.sum_indu = sum_indu;
	}
	public Double getSum_cons() {
		return sum_cons;
	}
	public void setSum_cons(Double sum_cons) {
		this.sum_cons = sum_cons;
	}
	public Double getSum_tra() {
		return sum_tra;
	}
	public void setSum_tra(Double sum_tra) {
		this.sum_tra = sum_tra;
	}
	public Double getSum_trade() {
		return sum_trade;
	}
	public void setSum_trade(Double sum_trade) {
		this.sum_trade = sum_trade;
	}
	public Double getSum_forest() {
		return sum_forest;
	}
	public void setSum_forest(Double sum_forest) {
		this.sum_forest = sum_forest;
	}
	public Double getSum_herd() {
		return sum_herd;
	}
	public void setSum_herd(Double sum_herd) {
		this.sum_herd = sum_herd;
	}
	public Double getSum_fish() {
		return sum_fish;
	}
	public void setSum_fish(Double sum_fish) {
		this.sum_fish = sum_fish;
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
