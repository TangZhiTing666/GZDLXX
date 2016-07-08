package com.supersit.gzdlxx.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.supersit.gzdlxx.pojo.MemberItem;
import com.supersit.gzdlxx.pojo.ResultItem;
import com.supersit.gzdlxx.service.MemberService;
import com.supersit.gzdlxx.util.StringUtil;

/**
 * Created by tzt on 2016-6-24.
 */

@Controller
@RequestMapping(value = "/web")
public class WebController {
    @Autowired
    private MemberService memberService;
   private Logger logger=Logger.getLogger(getClass());
    /**
     * 注册会员
     * @param request
     * @param item
     * @param verfig
     * @return
     */
    @RequestMapping(value = "/addMember")
    public String addMember(HttpServletRequest request,MemberItem item,String verfig){


        return "main";
    }

    /**
     * 会员登录
     * @param request
     * @param item
     * @param
     * @return
     */
    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request,HttpServletResponse response, Model model,MemberItem item,Double longitud,Double latitude){

        ResultItem result=new ResultItem();
        if(!StringUtil.isNotNull(item.getMobile())){
            model.addAttribute("loginError", "用户不能为空");
            return "login";
        }
        if(!StringUtil.isNotNull(item.getPassword())){
            model.addAttribute("loginError", "密码不能为空");
            return "login";
        }
        result=memberService.login(item,22.537302,113.942149);
        //如果验证不通过则不设置Session会话
        if(result.getIsfalse()==0){
            System.out.println(result.getMsg().toString());
            //request.setAttribute("loginError",);
            model.addAttribute("loginError", result.getMsg());
            return "login";
        }
        HttpSession session=request.getSession(true);
        MemberItem member=(MemberItem)result.getResultdata();
        session.setAttribute("memberLogin",member);
        session.setAttribute("username", member.getUsername());
        //设置Cookie，用户Id和用户的真实姓名
        Cookie userId = new Cookie("userId",member.getId()) ;
        logger.debug("登录成功："+member.getUsername());
        response.addCookie(userId);

        return "main";
    }
    @RequestMapping(value = "/addHHH")
    public String addHHH(HttpServletRequest request,MemberItem item,String verfig){


        return "main11";
    }
    
}
