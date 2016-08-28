package com.supersit.gzdlxx.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.supersit.gzdlxx.pojo.Resourice;
import com.supersit.gzdlxx.service.ClzResourceService;

@Controller
public class ClzResourceController {
	private Logger logger=Logger.getLogger(getClass());
	@Autowired
	private ClzResourceService cs;
	
	/**
	 * 初始农业资源查询
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/nyzy")
    public String  nyzy(HttpServletRequest request,
    		Model model,
    		HttpSession session
    		){
		List<Resourice> list = new ArrayList<Resourice>();
		try {
			list= cs.getNames(null);
			List<Resourice> rlist = new ArrayList<Resourice>();
			if(list.size()>0){
				rlist.add(list.get(0));
			}
			session.setAttribute("res_list", list);
			model.addAttribute("rlist", rlist);
			model.addAttribute("list", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
        return "nyzy";
    }
	/**
	 * 名称搜索
	 * @param request
	 * @param model
	 * @param name
	 * @param typename
	 * @return
	 */
	@RequestMapping(value = "/nyzyByname")
    public String  nyzyByname(HttpServletRequest request,
    		Model model,
    		@RequestParam(value="name") String name,
    		@RequestParam(value="typename") String typename,
    		HttpSession session){
		//List<String> list = new ArrayList<String>();
		List<Resourice> list = new ArrayList<Resourice>();
		try {
			//list= cs.getNames(name);
			//model.addAttribute("list", list);
			list = cs.getResouriceByName(typename, typename);
			List<Resourice> rlist = new ArrayList<Resourice>();
			if(list.size()>0){
				rlist.add(list.get(0));
			}
			session.setAttribute("res_list", list);
			model.addAttribute("list", list);
			model.addAttribute("rlist", rlist);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
        return "nyzy";
    }
	/**
	 * id收索
	 * @param request
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/nyzyByid")
    public String  nyzyByid(HttpServletRequest request,
    		Model model,
    		@RequestParam(value="id") String id,
    		HttpSession session
    		){
		List<Resourice> list = new ArrayList<Resourice>();
		List<Resourice> rlist = new ArrayList<Resourice>();
		try {
			rlist = (List<Resourice>) session.getAttribute("res_list");
			model.addAttribute("rlist", rlist);
			list = cs.getResouriceById(id);
			model.addAttribute("list", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
        return "nyzy";
    }
}
