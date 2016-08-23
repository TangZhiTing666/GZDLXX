<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎进入广州市农业地理信息系统</title>
</head>
<style type="text/css"> 
ul li{ list-style-type:none;}
a{ text-decoration:none;}
html,body{width:100%; height:100%; overflow:hidden;
	background: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#a8e38d));
    background: -webkit-linear-gradient(top, #ffffff, #a8e38d);
    background: -moz-linear-gradient(top, #ffffff, #a8e38d);
    background: -o-linear-gradient(top, #ffffff, #a8e38d);
    background: -ms-linear-gradient(top, #ffffff, #a8e38d);
    filter: progid:DXImageTransform.Microsoft.gradient(GradientType = 1, startColorstr = #ffffff, endColorstr = #a8e38d);/*ie*/
    background:-moz-linear-gradient(top,#ffffff,#a8e38d);/*火狐*/
    background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff), to(#a8e38d));/*谷歌*/
	}
.tit_le{ width:480px; height:64px; position:fixed; top:20%; left:50%; margin-left:-240px;}
.condent{ width:389px; height:278px; background:rgba(114, 202, 76, 0.41); border:4px solid #d6eca8; position:fixed; top:30%; left:50%; margin-left:-195px;} 
.code{background-image:url(code.jpg);font-family:Arial;font-style:italic;color:Red;border:1px solid #ABAFB2;padding:3px 3px;letter-spacing:3px;font-weight:bolder;}   
.unchanged{border:1px solid #ABAFB2;}
</style>

    <script language="javascript" type="text/javascript">  
       
     var code ; //在全局 定义验证码   
     function createCode()   
     {    
       code = "";   
       var codeLength = 4;//验证码的长度   
       var checkCode = document.getElementById("checkCode");   
       var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符，当然也可以用中文的      
       for(var i=0;i<codeLength;i++)   
       {   
        var charIndex = Math.floor(Math.random()*36);   
        code +=selectChar[charIndex];   
       }    
       if(checkCode)   
       {   
         checkCode.className="code";   
         checkCode.value = code;
         checkCode.blur();   
       }        
     }     
     function validate ()   {   
      /*  var inputCode = document.getElementById("validCode").value;   
       if(inputCode.length <=0)   
       {   
           alert("请输入验证码！");   
       }   
       else if(inputCode.toUpperCase() != code )   
       {   
          alert("验证码输入错误！");   
          createCode();//刷新验证码   
       }   
       else   
       {  */  
         //alert("^-^ OK");  
         //window.location.href="choose.do";
         var form=document.getElementById("loginform");
         form.method="post";
         form.action="choose.do";
         form.submit();
     // }   
 }   
      
      document.onkeydown=function(event){
        var e = event || window.event || arguments.callee.caller.arguments[0];           
         if(e && e.keyCode==13){ // enter 键
             //要做的事情
             validate();
        }
    }; 
    function loginshow(){
    	//alert(1);
    	var flog='${resultitem.isfalse}';//登录状态标识
    	var msg='${resultitem.msg}';//状态信息
    	if(flog!=null&&flog!=''&&flog!=""){
    		alert(msg);
    	}
    }
    </script>  
<body onLoad="createCode(),loginshow()">
        <img style="position:fixed; bottom:0px; left:0px;" src="resources/images/logo_left.png" />
        <img style="position:fixed; bottom:0px; right:0px;" src="resources/images/logo_right.png" />

        <div class="tit_le" style="z-index:9999;">
              <img src="resources/images/tit_le.png" />
        </div>
        <div class="condent">
               <form id ="loginform">
                     <div>
                       <p style=" color:#fff; font-size:22.6px; font-family:'微软雅黑'; text-align:center;">用户登录</p>
                     </div>
                 <div style=" margin-left:10px;">
                            <ul>
                                  <li style=" float:left;">
                                      <span style=" width:32.44px; height:27.13px; display:block; background:#abafb2;">
                                             <img src="resources/images/pop_1.png" />
                                      </span>
                                  </li>
                                  <li style=" float:left;">
                                      <input name="account" style=" height:21.13px; width:227px;" type="text" placeholder="请输入用户名" />
                                  </li>
                            </ul></br>
                            <ul>
                                  <li style=" float:left;">
                                      <span style=" width:32.44px; height:27.13px; display:block; background:#abafb2;">
                                             <img src="resources/images/pass_2.png" />
                                      </span>
                                  </li>
                                  <li style=" float:left;">
                                      <input name="password" style=" height:21.13px; width:227px;" type="password" placeholder="请输入用户密码" />
                                  </li>
                            </ul></br>
                            <ul>
                                  <li style=" float:left;">
                                      <span style=" width:32.44px; height:27.13px; display:block; background:#abafb2;">
                                             <img src="resources/images/check_1.png" />
                                      </span>
                                  </li>
                                  <li style=" float:left; margin-right:10px;">
                                      <input style=" height:21.13px; width:155px;" type="text" placeholder="验证码" id="validCode"/>
                                  </li>
                                  <li style=" float:left;">
                                      <input type="text" onClick="createCode()" readonly="readonly" id="checkCode" class="unchanged" style="width: 55px;cursor:pointer;height: 18px;"  />
                                    <!-- <img style=" height:21.13px; width:76px;" src="resources/images/yanzma_bg.png" /> -->
                                  </li>
                            </ul></br>
                            
                     </div>
                     <div style=" width:263px; height:38.41px;margin-left:50px;">
                            <ul>
                              <li style=" float:left; margin-left:-42px;"><input type="checkbox" /><span style=" font-size:14px; font-family:'微软雅黑'; color:#fff;">记住密码</span></li>
                              <li style=" float:right;"><!-- <a style=" color:#fff;font-size:14px; font-family:'微软雅黑';" href="#">忘记密码</a> --></li>
                       </ul>
                            
                     </div>
                     
                     <div class="bu_ttom" style=" width:263px; height:38.41px; background:#fc571b; margin-left:50px;">
                                  <a style=" width:100%; height:100%; display:block; text-align:center; line-height:38.41px; color:#fff; font-family:'微软雅黑';cursor: pointer;"  onclick="validate()">登　录</a>     
                     </div>                   
               </form>
        </div>
</body>
</html>
