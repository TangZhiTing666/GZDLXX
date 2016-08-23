package com.supersit.gzdlxx.pojo;

import java.util.Date;

/**
 * 农经数据（gznjzt-Agri_Invest）
 * 农业主要投入
 * @author Administrator
 *
 */
public class AgriInvest {
	
	private  String nianfen  ;// '年份';
	private  int sid  ;// '主键id';
	private  Double fertilizer  ;// '化肥用量';
	private  Double nf  ;// '农机总动力';
	private  Double pf  ;// '机耕面积';
	private  Double kf  ;// '有效灌溉面积';
	private  Double compound_fertilizer  ;// '旱涝保收面积';
	private  Double el  ;// '农村用电量';
	private  Double film  ;// '受灾面积';
	private  Double pesticid  ;// '成灾面积';
	private  String ad_num  ;// '区域行政编码';
	private  Double nfsw  ;// '农药用量';
	private  Double pfsw  ;// '农村小水电站数';
	private  Double kfsw  ;// '小水电装机容量';
	private  Date input_time  ;// '数据修改（新增时间）';
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
	public Double getFertilizer() {
		return fertilizer;
	}
	public void setFertilizer(Double fertilizer) {
		this.fertilizer = fertilizer;
	}
	public Double getNf() {
		return nf;
	}
	public void setNf(Double nf) {
		this.nf = nf;
	}
	public Double getPf() {
		return pf;
	}
	public void setPf(Double pf) {
		this.pf = pf;
	}
	public Double getKf() {
		return kf;
	}
	public void setKf(Double kf) {
		this.kf = kf;
	}
	public Double getCompound_fertilizer() {
		return compound_fertilizer;
	}
	public void setCompound_fertilizer(Double compound_fertilizer) {
		this.compound_fertilizer = compound_fertilizer;
	}
	public Double getEl() {
		return el;
	}
	public void setEl(Double el) {
		this.el = el;
	}
	public Double getFilm() {
		return film;
	}
	public void setFilm(Double film) {
		this.film = film;
	}
	public Double getPesticid() {
		return pesticid;
	}
	public void setPesticid(Double pesticid) {
		this.pesticid = pesticid;
	}
	public String getAd_num() {
		return ad_num;
	}
	public void setAd_num(String ad_num) {
		this.ad_num = ad_num;
	}
	public Double getNfsw() {
		return nfsw;
	}
	public void setNfsw(Double nfsw) {
		this.nfsw = nfsw;
	}
	public Double getPfsw() {
		return pfsw;
	}
	public void setPfsw(Double pfsw) {
		this.pfsw = pfsw;
	}
	public Double getKfsw() {
		return kfsw;
	}
	public void setKfsw(Double kfsw) {
		this.kfsw = kfsw;
	}
	public Date getInput_time() {
		return input_time;
	}
	public void setInput_time(Date input_time) {
		this.input_time = input_time;
	}
	

}
