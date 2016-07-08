package com.supersit.gzdlxx.pojo;
/**
 * 操作日志
 * @author Administrator
 *
 */
public class OperatorLogItem extends BaseItem{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8639601867143775071L;
	
	private String memberid;//会员表或管理员表里的id
	private String operation;//操作
	private String remark;//描述
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
