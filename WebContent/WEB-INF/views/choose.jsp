<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>广州市农业地理信息系统</title>
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/demo.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="resources/js/jquery-1.9.1.min.js"></script>
<script language="javascript">
	$(function(){
    $('.loginbox0').css({'position':'absolute','left':($(window).width()-880)/2});
	$(window).resize(function(){  
    $('.loginbox0').css({'position':'absolute','left':($(window).width()-880)/2});
    })  
});  
</script> 
	<script type="text/javascript" charset="UTF-8" src="resources/js/prefixfree.min.js"></script>
	<style type="text/css" media="screen">
body {
	background-color: #dbdbdb;
	-webkit-text-size-adjust:none;
}	
.demo {
	/* margin: 0 auto ; */
	width: 100%;
	color: #fff;
	margin-left: 2%;
	height: 150px;
} 
.icon-items-1 li {
	float: left;
	width: 10%;
	height: 15%;
	margin: 2% 4% 1% 0px;
	/* background-color: #00aec7;  */
	animation: moveF_Right 500ms ease;
	transition: all 200ms linear;
	text-align: center;
	font-weight: bold;
	color: black;
	cursor: pointer;
	display: inline;
	white-space:nowrap;
	font-size: 18px;
}
.icon-items-1 li img{
	width: 95%;
	/* height: 95%; */
}
.icon-items-1 i[class^="icon-"] {
	position: relative;
	top: 14px;
	left: 19px;
	display: inline-block;
	width: 20px;
	height: 20px;
}
.icon-items-1 i[class^="icon-"]:before,
	.icon-items-1 i[class^="icon-"]:after {
	position: absolute;
	content: "";
	width: 0;
	height: 0;
}
.icon-items-1 i p{
	font-style: normal;
}
.icon-items-1 li:hover {
	transform: scale(1.5,1.5);
	/* background-color: #005d6a; */
	z-index: 5;
}
.icon-chrome:before {
	content: "\e0c6";
}
.icon-firefox:before {
	content: "\e0c9";
}
.icon-IE:before {
	content: "\e0ca";
}
.icon-apple:before {
	content: "\e0cc";
}
.icon-opera:before {
	content: "\e0cf";
}
.icon-android:before {
	content: "\e0d1";
}
.icon-twitter:before {
	content: "\e0a2";
}
.icon-dribbble:before {
	content: "\e03d";
}
.icon-facebook:before {
	content: "\e049";
}
	</style>

</head>

<body style=" background:#f4fae1; overflow:hidden;">
<div><img style="bottom:0px; width:100%;height: 800px" src="resources/images/img_bg.png"/></div>
    
    <div class="loginbody1">
	
    <span class="systemlogo1"><!-- <a href="login.jsp" title="退出登录"><img src="resources/images/exit.png" style="width: 70px;height: 70px;float: left;margin-left: 3%;" alt="退出登录"></a> --></span> 
    <div class="page">
	<header id="header">
		<hgrounp class="white blank">
		</hgrounp>
	</header>
<div style="text-align:center;clear:both"><br>
</div>
	<section class="demo">
		<ul class="icon-items-1 clearfix">
			<li onclick="javascript:window.location.href='main.do?ipp=0'">
				<i class="icon1"><img src="resources/images/l01.png"><p>综合查询</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp?ipp=1'">
				<i class="icon2"><img src="resources/images/l02.png"><p>现代农业</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon3"><img src="resources/images/l03.png"><p>农经专题发布</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon4"><img src="resources/images/l04.png"><p>农业资源查询</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon5"><img src="resources/images/l05.png"><p>标准化农田</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon6"><img src="resources/images/l06.png"><p>无公害产品监管</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon7"><img src="resources/images/l07.png"><p>番禺农业</p></i>
			</li>
			<br>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon8"><img src="resources/images/l08.png"><p style="white-space:normal;">新农村</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon9"><img src="resources/images/l09.png"><p style="white-space:normal;">农业产业化</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon10"><img src="resources/images/l10.png"><p style="white-space:normal;">定点供穗生猪</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon11"><img src="resources/images/l11.png"><p style="white-space:normal;">兽医行业</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon12"><img src="resources/images/l12.png"><p style="white-space:normal;">农业专项资金项目专家库</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon13"><img src="resources/images/l13.png"><p style="white-space:normal;">农机安全监理</p></i>
			</li>
			<li onclick="javascript:window.location.href='main.jsp'">
				<i class="icon14"><img src="resources/images/l14.png"><p style="white-space:normal;">在线更新</p></i>
			</li>
		</ul>
	</section>
</div>
    <span><a href="login.do" title="退出登录"><img src="resources/images/exit.png" style="width: 90px;height: 90px;float: right;margin-right: 5%;margin-top: 1%;" alt="退出登录"></a></span>
    </div>
    <div class="loginbm">版权所有：广州市农业信息中心&nbsp;&nbsp;&nbsp;&nbsp;粤ICP备09161544号&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.supersit.com/" target="_blank">广东旭普空间信息技术发展有限公司</a></div>
	
    
</body>

</html>
