package com.supersit.gzdlxx.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	private Logger logger=Logger.getLogger(getClass());
	
	/**
	 * 初始化现代农业页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/xdny")
    public String  xdny(HttpServletRequest request){
        return "xdny";
    }
	
	/**
	 * 初始化农经专题发布
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/njzt")
    public String  njzt(HttpServletRequest request){
        return "njzt";
    }
	
	
	
	/**
	 * 初始化标准化农田
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/bzhnt")
    public String  bzhnt(HttpServletRequest request){
        return "bzhnt";
    }
	
	/**
	 * 初始化无公害产品监管
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/wgh")
    public String  wgh(HttpServletRequest request){
        return "wgh";
    }
	
	/**
	 * 初始化番禺农业
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/pyny")
    public String  pyny(HttpServletRequest request){
        return "pyny";
    }
	
	/**
	 * 初始化新农村
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/xnc")
    public String  xnc(HttpServletRequest request){
        return "xnc";
    }
	
	/**
	 * 初始化农业产业化
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/nycyh")
    public String  nycyh(HttpServletRequest request){
        return "nycyh";
    }
	
	/**
	 * 初始化定点供穗生猪
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/gssz")
    public String  gssz(HttpServletRequest request){
        return "gssz";
    }
	
	/**
	 * 初始化兽医行业
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/syhy")
    public String  syhy(HttpServletRequest request){
        return "syhy";
    }
	
	/**
	 * 初始化农业专项资金项目专家库
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/zjk")
    public String  zjk(HttpServletRequest request){
        return "zjk";
    }
	
	/**
	 * 初始化农机安全监理
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/njaq")
    public String  njaq(HttpServletRequest request){
        return "njaq";
    }
	
	/**
	 * 初始化在线更新
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/zxgx")
    public String  zxgx(HttpServletRequest request){
        return "zxgx";
    }
	
	/*@RequestMapping(value = "/gzclz")
    public String  gzclz(HttpServletRequest request){
        return "gzclz";
    }*/
}
