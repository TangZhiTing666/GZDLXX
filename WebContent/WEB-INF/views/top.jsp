﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="resources/js/jquery-1.9.1.min.js"></script>
<style type="text/css">
	.top{ width:100%; height:30px; background:url(resources/images/oa-Menu-top-bg_01_01.jpg) no-repeat}
	.top_content{ position:absolute; top:35px; left:500px; font-size:12px; /* width:800px; */}
	.white{ color:#FFF}
	span{display: inline;}
	.menu{background-color: #F7F7F7;width: 100%;font-size:13px;margin-top: 6px;}
	.menu td{padding: 8px;border-left-style: solid;border-left-width: 1px;border-left-color:#D9DADB}
	.a-not-allow{color: #cccccc;cursor: not-allowed;}
	.a-not-allow:hover{color: #cccccc;}
	#menu .a-selected{color: #66c130;}
</style>
</head>
<body style="background:url(resources/images/bg_main.png) repeat-x;">
    <div style="padding-left: 10px;padding-top: 8px;"><a href="choose.do" target="_parent"><img src="resources/images/title_main.png" title="系统首页" width="30%" height="30%" /></a>
    </div>
	<div class="top_content">当前用户：<span class="white">【超级管理员】</span>
    <span class="top_time">
    <SCRIPT language=javascript>
		var isnMonths=new initArray("01月","02月","03月","04月","05月","06月","07月","08月","09月","10月","11月","12月");
		var isnDays=new initArray("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
		today=new Date();
		function initArray()
		{
			for(i=0;i<initArray.arguments.length;i++)
			this[i]=initArray.arguments[i];
		}
		function getFullYear(d)
		{
			yr = d.getYear();
			if(yr<1000)	yr += 1900;
			return yr;
		}
		document.write(getFullYear(today) +"年"  + isnMonths[today.getMonth()] +  today.getDate()+"日&nbsp;" +  isnDays[today.getDay()]);
		       </SCRIPT>&nbsp;
            </span>
            <span><a style="color: red" href="javascript:window.showModalDialog('updatepw.html', '', 'dialogHeight:500px; dialogWidth:500px; center: yes; help: no; resizable: no; status:no;')">修改密码</a></span>
        </div>
	<div class="menu">
		<table id="menu">
			<tr>
				<td><a href="gobackchoose.do?userid=-8" target="_top">首页</a></td>
				<td><a href="rightFrame.do?jspflog=1" target="rightFrame">综合查询</a></td>
				<td><a href="html/xdny.html" target="rightFrame">现代农业</a></td>
				<td><a href="rightFrame.do?jspflog=3" target="rightFrame">农经专题发布</a></td>
				<td><a href="rightFrame.do?jspflog=4" target="rightFrame">农业资源查询</a></td>
				<td><a href="html/bzhnt.html" target="rightFrame">标准化农田</a></td>
				<td><a href="html/wgh.html" target="rightFrame">无公害产品监管</a></td>
				<td><a href="html/pyny.html" target="rightFrame" id="pyny">番禺农业</a></td>
				<td><a href="html/xnc.html" target="rightFrame" id="xnc">新农村</a></td>
				<td><a href="html/nycyh.html" target="rightFrame">农业产业化</a></td>
				<td><a href="html/gssz.html" target="rightFrame">定点供穗生猪</a></td>
				<td><a href="html/syhy.html" target="rightFrame">兽医行业</a></td>
				<td><a href="html/zjk.html" target="rightFrame">农业专项资金项目专家库</a></td>
				<td><a href="html/njaq.html" target="rightFrame">农机安全监理</a></td>
				<td><a href="html/gzclz.html" target="rightFrame">广州市“菜篮子”</a></td>
				<td><a href="rightFrame.do?jspflog=14" target="rightFrame" id="zxgx">在线更新</a></td>				
			</tr>
		</table>
	</div>
	<div style="height: 5px;background-color: #FBEB97;width: 100%;"></div>
</body>
<script type="text/javascript">
	$("table[id='menu'] a").click(function(){
		$("table[id='menu'] a").removeAttr("class","a-selected");
		$(this).attr("class","a-selected");
	})
	$('#pyny').click(function(){
		window.open("https://58.62.200.71:8098/PyMap/");
	})
	$('#xnc').click(function(){
		window.open("https://58.62.200.71:8098/gzxnc/");
	})
	$('#zxgx').click(function(){
		window.open("zxgx_main.jsp");
	})
</script>
</html>
