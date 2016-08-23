package com.supersit.gzdlxx.pojo;

import java.util.Date;

/**
 * 农经数据（gznjzt-Agri_Basic）
 * 农业基本情况
 * @author Administrator
 *
 */
public class AgriBasic {
	
	private String nianfen  ;// '年份';
	private int sid  ;// '主键id';
	private Double sum_person  ;// '总人口数';
	private Double agri_person  ;// '农业人口';
	private Double country_person  ;// '总户数';
	private Double country_worker  ;// '农村劳动力';
	private Double field  ;// '耕地面积';
	private Double water_field  ;// '水田面积';
	private Double dry_field  ;// '旱地面积';
	private Double add_field  ;// '新增耕地面积';
	private Double reduce_field  ;// '减少耕地面积';
	private Double engine_power  ;// '财政收入(万元)';
	private Double engine_area  ;// '财政支出';
	private Double irrigate_area  ;// '土地面积';
	private Double disaster_effect  ;// '农村社会总产值';
	private Double disaster_suffer  ;// '第一产业增加值';
	private String ad_num  ;// '区域行政编码';
	private Date input_time  ;// '数据添加(修改）时间';
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
	public Double getSum_person() {
		return sum_person;
	}
	public void setSum_person(Double sum_person) {
		this.sum_person = sum_person;
	}
	public Double getAgri_person() {
		return agri_person;
	}
	public void setAgri_person(Double agri_person) {
		this.agri_person = agri_person;
	}
	public Double getCountry_person() {
		return country_person;
	}
	public void setCountry_person(Double country_person) {
		this.country_person = country_person;
	}
	public Double getCountry_worker() {
		return country_worker;
	}
	public void setCountry_worker(Double country_worker) {
		this.country_worker = country_worker;
	}
	public Double getField() {
		return field;
	}
	public void setField(Double field) {
		this.field = field;
	}
	public Double getWater_field() {
		return water_field;
	}
	public void setWater_field(Double water_field) {
		this.water_field = water_field;
	}
	public Double getDry_field() {
		return dry_field;
	}
	public void setDry_field(Double dry_field) {
		this.dry_field = dry_field;
	}
	public Double getAdd_field() {
		return add_field;
	}
	public void setAdd_field(Double add_field) {
		this.add_field = add_field;
	}
	public Double getReduce_field() {
		return reduce_field;
	}
	public void setReduce_field(Double reduce_field) {
		this.reduce_field = reduce_field;
	}
	public Double getEngine_power() {
		return engine_power;
	}
	public void setEngine_power(Double engine_power) {
		this.engine_power = engine_power;
	}
	public Double getEngine_area() {
		return engine_area;
	}
	public void setEngine_area(Double engine_area) {
		this.engine_area = engine_area;
	}
	public Double getIrrigate_area() {
		return irrigate_area;
	}
	public void setIrrigate_area(Double irrigate_area) {
		this.irrigate_area = irrigate_area;
	}
	public Double getDisaster_effect() {
		return disaster_effect;
	}
	public void setDisaster_effect(Double disaster_effect) {
		this.disaster_effect = disaster_effect;
	}
	public Double getDisaster_suffer() {
		return disaster_suffer;
	}
	public void setDisaster_suffer(Double disaster_suffer) {
		this.disaster_suffer = disaster_suffer;
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
