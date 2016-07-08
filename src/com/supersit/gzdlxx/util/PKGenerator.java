package com.supersit.gzdlxx.util;

import java.util.UUID;
/**
 * @Description:主键生成噿
 * @Author: wangwh
 * @Version: V1.00
 * @Create Date: 2015广5朿13旿 下午3:59:58
 */
public class PKGenerator {
    public PKGenerator() {
    }

    /**
     * @Description: 获取丿个主锿
     * @Author: wangwh
     * @Version: V1.00
     * @Create Date: 2015广5朿13旿 下午3:59:58
     */
    public static String getPKValue(){
        String s = UUID.randomUUID().toString();
        //去掉‿-”符叿 
        return s.substring(0,8)+s.substring(9,13)+s.substring(14,18)+s.substring(19,23)+s.substring(24);
    }

    /**
     * 获得指定数目的PK
     * @param number int 霿要获得的PK数量 
     * @return String[] 数组 
     */
    public static String[] getPKValues(int number){
        if(number < 1){
            return null;
        }
        String[] ss = new String[number];
        for(int i=0;i<number;i++){
            ss[i] = getPKValue();
        }
        return ss;
    }
}   