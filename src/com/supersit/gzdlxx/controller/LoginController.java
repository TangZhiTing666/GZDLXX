package com.supersit.gzdlxx.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.supersit.gzdlxx.pojo.Jurisdiction;
import com.supersit.gzdlxx.pojo.ResultItem;
import com.supersit.gzdlxx.pojo.UsersItem;
import com.supersit.gzdlxx.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 用于登录的控制器
 * Created by tzt on 2016-6-25.
 */

@Controller
public class LoginController {
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
     * 返回广州地理信息功能菜单
     * @param model
     * @param session
     * @param response
     * @param request
     * @return
     */
    @RequestMapping(value = "/gobackchoose")
    public String  gobackchoose(
    		@RequestParam(value="userid") String userid ,
    		Model model,
    		HttpSession session , HttpServletResponse response,HttpServletRequest request){
    	ResultItem resultitem =null;
    	try {    		
    		resultitem =(ResultItem) request.getSession().getAttribute("result");
    		if(resultitem!=null){
    			//UsersItem usersitem=(UsersItem) resultitem.getResultdata();   		
				//session.setAttribute("gzdl_name",usersitem.getUserName());//建立session用户名
				//session.setAttribute("gzdl_user",usersitem);//建立session用户对象
				//session.setAttribute("result",resultitem);//建立session登录用户对象(包含权限)
				//session.setAttribute("qx_list",usersitem.getList());//建立session登录用户对象(包含权限)
				//session.setMaxInactiveInterval(30*60);
    			model.addAttribute("resultitem",resultitem);
    		}else{
    			resultitem = userService.gobackchoose(userid);
    			model.addAttribute("resultitem",resultitem);
    		}
		} catch (Exception e) {
			// TODO: handle exception
			logger.debug("返回广州地理信息功能菜单失败");
			e.printStackTrace();
			return "login";
		}
        return "choose";
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
				session.setAttribute("result",resultitem);//建立session登录用户对象(包含权限)
				session.setAttribute("qx_list",usersitem.getList());//建立session登录用户对象(包含权限)
				session.setMaxInactiveInterval(30*60);	
				/*//配置公用session
				ServletContext ContextA =session.getServletContext(); 
				ContextA.setAttribute(session.getId(), request.getSession());*/
				/*项目B中取出Session：
				HttpSession session1 =req .getSession();   
				ServletContext Context = session1.getServletContext();   
				ServletContext Context1= Context.getContext("/myweb"); // 项目A的虚拟路径
				HttpSession session2 =(HttpSession)Context1.getAttribute("session"); 
				System.out.println("base传过来的user为:"+session2.getAttribute("name"));*/
				
    		}
    		logger.info(resultitem.getMsg()+":"+account);
    		model.addAttribute("resultitem",resultitem);
    		//request.setAttribute("resultitem", resultitem);
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
    @RequestMapping(value = "/main")
    public String  main(HttpServletRequest request,
    		Model model,
    		@RequestParam(value="jspflog") String jspflog) {
    	model.addAttribute("jspflog",jspflog);
        return "main";
    }
    
    /**
     * 跳转top.jsp
     * @param request
     * @return top.jsp
     */
    @RequestMapping(value = "/top")
    public String  top(HttpServletRequest request,HttpSession session ,
    		Model model
    		) {
    		List<Jurisdiction> list=(List<Jurisdiction>) session.getAttribute("qx_list");
    		if(list!=null){
    			model.addAttribute("qxlist",list);
    		}else{
    			logger.debug("top.jsp 页面获取权限失败");
    		}
        return "top";
    }
    
    /**
     * 跳转right.jsp
     * @param request
     * @return right.jsp
     */
    @RequestMapping(value = "/rightFrame")
    public String  rightFrame(HttpServletRequest request,HttpSession session ,
    		Model model,@RequestParam(value="jspflog") String jspflog
    		) {	
    			//重定向 "redirect:/+访问方法名 "
    			String rightpage="redirect:/";
    			int flog=Integer.parseInt(jspflog);
    			switch (flog) {
				case 1:
					rightpage+="zhcx";
					break;
				case 2:
					rightpage+="xdny";
					break;
				case 3:
					rightpage+="njzt";
					break;
				case 4:
					rightpage+="nyzy";
					break;
				case 5:
					rightpage+="bzhnt";
					break;
				case 6:
					rightpage+="wgh";
					break;
				case 7:
					rightpage+="pyny";
					break;
				case 8:
					rightpage+="xnc";
					break;
				case 9:
					rightpage+="nycyh";
					break;
				case 10:
					rightpage+="gssz";
					break;
				case 11:
					rightpage+="syhy";
					break;
				case 12:
					rightpage+="zjk";
					break;
				case 13:
					rightpage+="njaq";
					break;
				case 14:
					rightpage+="zxgx";
					break;
				case 15:
					rightpage+="gzclz";
					break;

				default:
					rightpage="redirect:/zhcx";
					break;
				}
    			System.out.println(rightpage);
        return rightpage+".do";
    }
    
    
   /* @RequestMapping(value = "/zhcx")
    public String  zhcx(HttpServletRequest request,
    		Model model
    		//@RequestParam(value="jspflog") String jspflog
    		) {
	  
    	//model.addAttribute("jspflog",jspflog);
        return "zhcx";
    }
*/
    
    
}
