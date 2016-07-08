package com.supersit.gzdlxx.util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


/**
  * @Author zliang @qq 369756160
  * @Description:坐标转换成地址
  * @Date 2016年5月10日 -- 上午9:06:05
  * @Email smilemtzl@163.com
  * @Tel  13510992928
  * @version 1.0
  *
  */
public class BaiDuUtil {

	public static String getCity(String lat, String lng) {
		String json = HttpUtil.sendGet("http://api.map.baidu.com/geocoder/v2/", "ak=6G7FYE3q7xdkdcz8Yd6ztM8d&location="+lat+","+lng+"&output=json&pois=1");
		JSONArray jsonArray = JSONObject.fromObject(json).getJSONObject("result").getJSONArray("pois");
		String address = null ;
		if(!jsonArray.isEmpty()){
			address = jsonArray.getJSONObject(0).getString("addr");
		}
		return address;
	}
}
