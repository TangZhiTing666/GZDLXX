package com.supersit.gzdlxx.pojo;

public class ResultItem {

	int isfalse = 1;//是否正确 0:错误,1:正确	
	String msg = "";	//返回给前台的信息
	Object resultdata = null;	//返回的数据
	
	/**
	 * 执行结果[0：失败;1:成功;]
	 */
	public int getIsfalse() {
		return isfalse;
	}	

	public String getMsg() {
		return msg;
	}	

	public Object getResultdata() {
		return resultdata;
	}	
	
	/**
	 * @Description:用户返回成功
	 * @Author: wangwh
	 * @Version: V1.00 
	 * @Create Date: 2015年5月12日 下午2:29:21
	 * @Parameters:
	 */
	public ResultItem getSuccessInfo(String message,Object obj){
		this.isfalse =1;
		this.msg = message;
		this.resultdata = obj;
		return this;
	}
	/**
	 * @Description:用户返回成功
	 * @Author: wangwh
	 * @Version: V1.00 
	 * @Create Date: 2015年5月12日 下午2:29:21
	 * @Parameters:obj 要返回的对象
	 */
	public ResultItem getSuccessInfo(Object obj){
		isfalse=1;
		resultdata=obj;
		return this;
	}

	/**
	  * @Description：返回失败json
	  * @author libq
	  * @Version: V1.00 
	  * @Create Date: 2013-12-16
	  * @Parameters：
	 */
	public ResultItem getFailureInfo( String message){
		isfalse=0;
		msg=message;
		return this;
	}
}
