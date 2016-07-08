package com.supersit.gzdlxx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * 用于跳转JSP页面的控制器
 * Created by tzt on 2016-6-25.
 */

@Controller
public class HomeController {

    @RequestMapping(value = "/toLogin")
    public String  login(HttpServletRequest request){

        return "login";
    }
}