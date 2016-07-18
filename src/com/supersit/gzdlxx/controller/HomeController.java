package com.supersit.gzdlxx.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.supersit.gzdlxx.pojo.ResultItem;
import com.supersit.gzdlxx.pojo.UsersItem;
import com.supersit.gzdlxx.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 用于跳转JSP页面的控制器
 * Created by tzt on 2016-6-25.
 */

@Controller
public class HomeController {
	private Logger logger=Logger.getLogger(getClass());
	@Autowired
	private UserService userService;
	
	
    /**
     * 登录页面
     * @param request
     * @return login.jsp
     */
    @RequestMapping(value = "/login")
    public String  login(HttpServletRequest request){
        return "login";
    }
    
    /**
     * 登录跳转功能页面
     * @param model
     * @param account
     * @param password
     * @param session
     * @param response
     * @param request
     * @return
     */
    @RequestMapping(value = "/choose" , method = RequestMethod.POST)
    public String  choose(
    		Model model,
    		@RequestParam(value="account") String account , 
    		@RequestParam(value="password")  String password,
    		HttpSession session , HttpServletResponse response,HttpServletRequest request){
    	ResultItem resultitem =null;
    	try {    		
    		resultitem=userService.LoginUser(account,password);
    		UsersItem usersitem=(UsersItem) resultitem.getResultdata();
    		if(usersitem!=null){
				session.setAttribute("gzdl_name",usersitem.getUserName());//建立session用户名
				session.setAttribute("gzdl_user",usersitem);//建立session用户对象
				session.setMaxInactiveInterval(30*60);	
				
    		}
    		logger.info(resultitem.getMsg()+":"+account);
    		model.addAttribute("resultitem",resultitem);
    		//model.addAttribute("usersitem",usersitem);
    		//model.addAttribute("list",usersitem.getList());
    		/*for(int i=0;i<usersitem.getList().size();i++){
    			System.out.println(usersitem.getList().get(i).getQxName());
    		}*/
    		//System.out.println(resultitem.getResultdata());
		} catch (Exception e) {
			// TODO: handle exception
			logger.debug("登录异常");
			e.printStackTrace();
			return "login";
		}
        return resultitem.getPage();
    }
    /**
     * 跳转主页面
     * @param request
     * @return main.jsp
     */
    @RequestMapping(value = "/main",method = RequestMethod.POST)
    public String  main(HttpServletRequest request){
        return "main";
    }
}
