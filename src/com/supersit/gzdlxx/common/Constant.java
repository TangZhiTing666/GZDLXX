package com.supersit.gzdlxx.common;

/**
  * @Author zliang @qq 369756160
  * @Date 2016年5月3日 -- 上午11:12:57
  * @Email smilemtzl@163.com
  * @Tel  13510992928
  * @version 1.0
  *
  */
public class Constant {

	/** 服务器地址 */
//	public final static String SERVER_ADDRESS ="http://www.supersit.com/signin/";  
//	public final static String SERVER_ADDRESS ="http://192.168.2.58:80/signin/";
	public final static String SERVER_ADDRESS ="http://192.168.2.41:8080/signin/";
	
	/** 环信地址 */
	public final static String HXSERVER_ADDRESS ="https://a1.easemob.com/";
	
	/** 微信签到图片地址 */
	public final static String SERVER_WXIMAGEADDRESS ="http://www.supersit.com/wx/resources/images/";
	
	/** 字符编码 */
	public final static String CHARACTER_ENCODING = "text/html;charset=UTF-8";
	
	/** 采集图片 */
	public final static String COLLECTION_PICTURE = "图片";
	
	/** 采集视频 */
	public final static String COLLECTION_VIDEO = "视频";
	
	/** 采集录音 */
	public final static String COLLECTION_VOICE = "录音";
	
	/** 默认分页数据是4条*/
	public static final int PAGE_SIZE = 10;
	
	private String APP_KEY;
	
	private String APP_CLIENT_ID;
	
	private String APP_CLIENT_SECRET;

	public String getAPP_KEY() {
		return APP_KEY;
	}

	public void setAPP_KEY(String aPP_KEY) {
		APP_KEY = aPP_KEY;
	}

	public String getAPP_CLIENT_ID() {
		return APP_CLIENT_ID;
	}

	public void setAPP_CLIENT_ID(String aPP_CLIENT_ID) {
		APP_CLIENT_ID = aPP_CLIENT_ID;
	}

	public String getAPP_CLIENT_SECRET() {
		return APP_CLIENT_SECRET;
	}

	public void setAPP_CLIENT_SECRET(String aPP_CLIENT_SECRET) {
		APP_CLIENT_SECRET = aPP_CLIENT_SECRET;
	}
	
}
