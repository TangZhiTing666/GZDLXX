package com.supersit.gzdlxx.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.UUID;


public class StringUtil {
	/**
	 * @Description: string 
	 * @Author: libiq
	 * @Version: V1.00 
	 * @Create Date: 2013-9-24
	 * @Parameters: 
	 * 			option: 切割条件 
	 * 			data: 被切割数??
	 * @Return: String[] 
	 */
	public static String [] String2Array (String data,String option){
		String[] split = data.split(option);
		return split;
	}
	/**
	  * @Description:对密码进行MD5加密
	  * @Author: libiq
	  * @Version: V1.00 
	  * @Create Date: 2013-11-18上午9:21:04
	  * @Parameters:@param logonPwd
	  * @Parameters:@return
	 */
	public static String getMD5Psw(String logonPwd) {
		MD5keyBean md5 = new MD5keyBean();
		String md5Psw = md5.getkeyBeanofStr(logonPwd);
		return md5Psw;
	}
	/**
	  * @Description:汉字转成拼音首字母大??
	  * @Author: libiq
	  * @Version: V1.00 
	  * @Create Date: 2013-11-18上午9:21:12
	  * @Parameters:@param SourceStr
	  * @Parameters:@return
	 */
	public static String getPY(String SourceStr){
	    	GetPY obj1 = new GetPY();  
	    	String string2Alpha = obj1.String2Alpha(SourceStr);
			return string2Alpha;
	 }
	/**
	  * @Description: 将string 转换成set集合  
	  * @Author: libiq
	  * @Version: V1.00 
	  * @Create Date: 2013-11-14下午9:09:41
	  * @Parameters:@param data	:1@2@3@
	  * @Parameters:@param option :@
	  * @Parameters:@return
	 */
	public static Set<String> String2Set(String data,String option){
		Set<String> result = new HashSet<String>();
		String[] split = data.split(option);
		for (String string : split) {
			result.add(string);
		}
		return result;
	}
	/**
	  * @Description:获取32位uuid
	  * @Author: libiq
	  * @Version: V1.00 
	  * @Create Date: 2013-11-18上午9:20:27
	  * @Parameters:@return
	 */
	public static String getUUID(){
		return  UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	
	/**
	 * 得到文件的后??   ?? ppt ,不包??.
	 * @author sjl
	 * @Date:2013-12-30下午05:14:00
	 * @param fileName
	 * @return
	 */
	public static String getFileType(String fileName){
		return fileName.substring(fileName.lastIndexOf(".")+1);
	}
	
	/**
	 * 得到文件的名??
	 * @author sjl
	 * @Date:2014-6-4下午03:44:17
	 * @param fileName
	 * @return
	 */
	public static String getFileName(String fileName){
		return fileName.substring(0,fileName.lastIndexOf("."));
	}
	
	

	
	/**
	  * @Description：得??6位随机数
	  * @author aijian
	  * @Version: V1.00 
	  * @Create Date: 2014-5-10
	  * @Parameters??
	 */
	/*
	 *0 1 2 3 4 5 6 7 8
	 *9 a b c d e f g h i
	 *j k l m n o p q r s
	 *t u v w x y z A B C
	 *D E F G H I J K L M
	 *N O P Q R S T U V W
	 *X Y Z
	 *a
	 *验证码：u8rg
	 *#
	 *
	 * */
	public static String generateCaptcha(){

		String str = "0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
		String str2[] = str.split(",");//将字符串??,分割
		Random rand = new Random();//创建Random类的对象rand
		int index = 0;
		String randStr = "";//创建内容为空字符串对象randStr
			randStr = "";//清空字符串对象randStr中的??
			for (int i=0; i<6; ++i)
			{
				index = rand.nextInt(str2.length-1);//??0到str2.length-1生成??个伪随机数赋值给index
				randStr += str2[index];//将对应索引的数组与randStr的变量???相连接
			}
		return randStr;
	
	}
	
	//判断是否为空
	public static boolean isNotNull(String str){
		if(str!=null&&str.trim().length()!=0&&str.trim()!="undefind"){
			return true;
		}
		return false;
	}
	
	public static Map<String, String> GetMapFromSql(String sql)
	{
		Map<String, String> map=new HashMap<String,String>();
		map.put("where", sql);
		map.put("sql", sql);
		return map;
		
	}
	
	public static int GetPageSize()
	{
		int pagesize=10;
		return pagesize;
	}
	/**
	 * @Description:将集合中的元素封住成??个字符串
	 * @Author: succ
	 * @Version: V1.00 
	 * @Create Date: 2015??8??12?? 上午10:35:50
	 * @Parameters:
	 */
	public static String getStringFromContains(Collection<String> c){
		StringBuilder secondIdSb = new StringBuilder("");
		Iterator<String> it = c.iterator();
		while(it.hasNext()){
			secondIdSb.append("'");
			String str = it.next();
			secondIdSb.append(str);
			secondIdSb.append("',");
		}
		String secondIdStr = secondIdSb.toString().substring(0, secondIdSb.length()-1);
		return secondIdStr;
	}
	
	public static Map getIndexOfSameFromList(List source){
		if(source == null || source.size() == 0){
			throw new IllegalArgumentException("参数错误，源数据集合为空??");
		}
		//
		List dif = new ArrayList();
		//存放重复过的元素
		List same = new ArrayList();
		for(int i=0; i<source.size(); i++){
			if(dif.contains(source.get(i)) && !same.contains(source.get(i))){
				same.add(source.get(i));
			}else{
				dif.add(source.get(i));
			}
		}
		Map map = new HashMap();
		for(int i=0; i<same.size(); i++){
			List temp = new ArrayList();
			while(source.contains(same.get(i))){
				//源数据中包含重复数据，记录其下标
				//每一个重复元素的下标
				int index = source.indexOf(same.get(i));
				temp.add(index);
				source.set(index, "");
			}
			if(temp.size() > 0){
				map.put(same.get(i), temp);
			}
		}
		//循环之后，就可以得到??个Map，key为重复元素，value为重复元素在源集合中的下??
		return map;
	}
	
	public static void main(String[] args) {
		List source = new ArrayList();
		source.add("123");
		source.add("456");
		source.add("789");
		source.add("123");
		source.add("789");
		source.add("000");
		source.add("123");
		
		Map m = getIndexOfSameFromList(source);
		System.out.println(m);
	}
	
}
