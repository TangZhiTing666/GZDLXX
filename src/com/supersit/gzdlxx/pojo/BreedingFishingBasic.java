package com.supersit.gzdlxx.pojo;

import java.util.Date;

/**
 * 农经数据（gznjzt-Breeding_Fishing_Basic）
 * 畜牧业渔业基本情况
 * @author Administrator
 *
 */
public class BreedingFishingBasic {
	
	private  String nianfen  ;// '年份';
	private  int sid  ;// '主键id';
	private  Double stock_in  ;// '存栏数(头) ';
	private  Double cattle_in  ;// '大牲畜存栏数(头) ';
	private  Double cow_in  ;// '牛存栏数(头)';
	private  Double sheep_in  ;// '羊存栏数(头)';
	private  Double pig_out  ;// '猪出栏数(头) ';
	private  Double meat  ;// '肉类总产值(万元) ';
	private  Double pcs_meat  ;// '猪牛羊肉产量(吨) ';
	private  Double milk  ;// '牛奶产量(吨)';
	private  Double egg  ;// '禽类产量(吨)';
	private  Double freshwater_breed_area  ;// '淡水养殖面积(公顷)';
	private  Double sea_breed_area  ;// '海水养殖面积(公顷) ';
	private  Double water_product  ;// '水产品产量(吨) ';
	private  Double sea_product  ;// '海水产品产量(吨) ';
	private  Double sea_catch  ;// '海水捕获产量(吨) ';
	private  Double freshwater_product  ;// '淡水养殖产量(吨)';
	private  Double sea_fish  ;// '海水鱼产量(吨) ';
	private  Double freshwater_fish  ;// '塘鱼产量(吨)';
	private  String ad_num  ;// '区域行政代码';
	private  Date input_time  ;// '数据插入（修改）时间';
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
	public Double getStock_in() {
		return stock_in;
	}
	public void setStock_in(Double stock_in) {
		this.stock_in = stock_in;
	}
	public Double getCattle_in() {
		return cattle_in;
	}
	public void setCattle_in(Double cattle_in) {
		this.cattle_in = cattle_in;
	}
	public Double getCow_in() {
		return cow_in;
	}
	public void setCow_in(Double cow_in) {
		this.cow_in = cow_in;
	}
	public Double getSheep_in() {
		return sheep_in;
	}
	public void setSheep_in(Double sheep_in) {
		this.sheep_in = sheep_in;
	}
	public Double getPig_out() {
		return pig_out;
	}
	public void setPig_out(Double pig_out) {
		this.pig_out = pig_out;
	}
	public Double getMeat() {
		return meat;
	}
	public void setMeat(Double meat) {
		this.meat = meat;
	}
	public Double getPcs_meat() {
		return pcs_meat;
	}
	public void setPcs_meat(Double pcs_meat) {
		this.pcs_meat = pcs_meat;
	}
	public Double getMilk() {
		return milk;
	}
	public void setMilk(Double milk) {
		this.milk = milk;
	}
	public Double getEgg() {
		return egg;
	}
	public void setEgg(Double egg) {
		this.egg = egg;
	}
	public Double getFreshwater_breed_area() {
		return freshwater_breed_area;
	}
	public void setFreshwater_breed_area(Double freshwater_breed_area) {
		this.freshwater_breed_area = freshwater_breed_area;
	}
	public Double getSea_breed_area() {
		return sea_breed_area;
	}
	public void setSea_breed_area(Double sea_breed_area) {
		this.sea_breed_area = sea_breed_area;
	}
	public Double getWater_product() {
		return water_product;
	}
	public void setWater_product(Double water_product) {
		this.water_product = water_product;
	}
	public Double getSea_product() {
		return sea_product;
	}
	public void setSea_product(Double sea_product) {
		this.sea_product = sea_product;
	}
	public Double getSea_catch() {
		return sea_catch;
	}
	public void setSea_catch(Double sea_catch) {
		this.sea_catch = sea_catch;
	}
	public Double getFreshwater_product() {
		return freshwater_product;
	}
	public void setFreshwater_product(Double freshwater_product) {
		this.freshwater_product = freshwater_product;
	}
	public Double getSea_fish() {
		return sea_fish;
	}
	public void setSea_fish(Double sea_fish) {
		this.sea_fish = sea_fish;
	}
	public Double getFreshwater_fish() {
		return freshwater_fish;
	}
	public void setFreshwater_fish(Double freshwater_fish) {
		this.freshwater_fish = freshwater_fish;
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
