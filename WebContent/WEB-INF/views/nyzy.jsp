<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<style type="text/css">
		.rightDiv{
			overflow: auto;
		}
		.rightDiv h3{
			margin:10px; /* background:url(images/nyzy_bg.png); */ height:50px; line-height:50px;font-size: 25px;color: #6BD477;text-align: center;
		}
		.rightDiv table,.rightDiv div{
			margin: 10px 20px;
		}
    .leftDiv{
      width: 24% !important;
    }
		.leftDiv table{
            text-align: center;
        }
        #resultList{width: 100%;}
        #resultList td{text-align: initial;}
        #resultList .info-type,#resultList .info-page1,#resultList .info-page2{text-align: center;}
        #resultList .info-input{text-align: right;width: 70%;padding-right: 30px;}
        #resultList .info-input input{border:1px #000000 solid;width: 50%}
        #resultList .info-button{text-align: left;width: 30%;}
        #resultList .info-page1 a{display: inline;}
        .tdList{/* padding-left: 20%; */}
        .rightDiv .formtitle span{font-size: 15px !important;}
        .rightDiv .toolsli,.rightDiv .toolsli div{font-size: 13px;text-indent: 2em;line-height: 20px;}
        .hide{display: none;}
        .cxlist1{margin-left: 2% !important;margin-right: 2% !important;}
        .menuson1{line-height: 22px !important;}
	</style>
	<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="resources/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="resources/js/echarts.common.min.js"></script>
	<script type="text/javascript" src="resources/js/macarons.js"></script>

	<link rel="stylesheet" type="text/css" href="resources/css/css/style.css" media="screen"/>
    <script src="resources/js/jquery.paginate.js" type="text/javascript"></script>
</head>
<body>
	<div class="leftDiv">
		<dl class="leftmenu">
	    <!-- <dd>
	    	    <div class="title">
	    	    <span><img src="resources/images/leftico01.png" /></span>分析类型
	    	    </div>
	    	        <ul class="menuson1">
	    	        	<li><input type="radio" name="typename">时间对比</input><input type="radio" name="typename">区域对比</input><input type="radio" name="typename">信息统计</input></li>
	    	        </ul>
	    	    </dd> -->
	    <dd>
	    <div class="title">
	    <span><img src="resources/images/leftico02.png" /></span>查询类别
	    </div>
	    <ul class="menuson1">
	    	<li>
	    	<table style="width: 100%;text-align: left;">
	    		<tr>
	    			<td>
	    				<input type="radio" name="contentname" id="nytc">农业特产</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="contentname" id="nzwpz">农作物品种</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="contentname" id="mycp">名优产品</input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="contentname" id="yszy">野生资源</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="contentname" id="xmzy">畜牧资源</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="contentname" id="sczy">水产资源</input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="contentname" id="clz" checked="checked">菜篮子数据资源</input>
	    			</td>

	    		</tr>
	    	</table>
	    	</li>
	        </ul>
	    </dd>


	    <dd id="cxlist"><div class="title"><span><img src="resources/images/leftico03.png" /></span>查询列表</div>
	    <ul class="menuson1 cxlist1">
	        <li>
	        <ul class="info-type-and-search">
                    <li id="yszyli" class="hide">
                        <input type="radio" name="yszyli" checked="checked" id="yszyall" value="全部">全部</input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="yszyli" id="zwzy" value="植物资源">植物资源</input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="yszyli" id="dwzy" value="动物资源">动物资源</input>

                    </li>
                    <li id="xmzyli" class="hide">
                        <input type="radio" name="xmzyli" checked="checked" id="xmzyall" value="全部">全部</input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="xmzyli" id="xmpzzy" value="畜牧品种资源">畜牧品种资源</input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="xmzyli" id="sb" value="兽病">兽病</input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="xmzyli" id="sy" value="兽药和添加剂">兽药和添加剂</input>

                    </li>
                    <li id="sczyli" class="hide">
                        <input type="radio" name="sczyli" checked="checked" id="sczyall" value="全部">全部</input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="sczyli" id="xmpzzy" value="水产资源">水产资源</input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="sczyli" id="sb" value="水产病毒防治">水产病毒防治</input>

                    </li>
                     <li id="clzli">
                         <table style="width: 100%;text-align: left;">
                           <tr>
                             <td>
                               <input type="radio" name="clzli" checked="checked" id="ydzy" value="用地资源">用地资源</input>
                             </td>
                             <td>
                               <input type="radio" name="clzli" id="xmpzzy" value="种植用地" class="clzlis">种植用地</input>
                             </td>
                           </tr>
                           <tr>
                             <td>
                               <input type="radio" name="clzli" id="sb" value="养殖用地" class="clzlis">养殖用地</input>
                             </td>
                             <td>
                               <input type="radio" name="clzli" id="xmpzzy" value="种植用地" class="clzlis">现代化农业设施资源</input>
                             </td>
                           </tr>
                           <tr>
                             <td>
                               <input type="radio" name="clzli" id="sb" value="养殖用地" class="clzlis">灌溉设施</input>
                             </td>
                             <td>
                               <input type="radio" name="clzli" id="sb" value="养殖用地" class="clzlis">生产经营单位资源</input>
                             </td>
                           </tr>
                           <tr>
                             <td>
                               <input type="radio" name="clzli" id="xmpzzy" value="种植用地" class="clzlis" checked="checked">农产批发零售市场</input>
                             </td>
                             <td>
                               <input type="radio" name="clzli" id="sb" value="养殖用地" class="clzlis">生产经营数据资源</input>
                             </td>
                           </tr>
                           <tr>
                             <td>
                               <input type="radio" name="clzli" id="sb" value="养殖用地" class="clzlis">农产物价指数资源</input>
                             </td>
                             <td>
                               <input type="radio" name="clzli" id="xmpzzy" value="种植用地" class="clzlis">农产品种类资源</input>
                             </td>
                           </tr>
                           <tr>
                             <td>
                               <input type="radio" name="clzli" id="sb" value="养殖用地" class="clzlis">农产品质量检测监测数据资源</input>
                             </td>
                             <td>
                               <input type="radio" name="clzli" id="sb" value="养殖用地" class="clzlis">市场监管数据资源</input>
                             </td>
                           </tr>
                         </table>
                    </li>
                    <%-- <li>
                        <input type="text" style="width: 60%;height: 20px;" id="searchtext"></input>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" value="搜索" style="width: 20%;height: 25px;" id="searchbtn"></input>
                    </li>
                    <li><label style="font-weight: bold;">共<label id="totalListLength" style="color: red;font-weight: bold;"></label>条记录</label></li> --%>
                </ul>

                <%-- <ul class="info-list">
                <li><a href="#">从化三华李</a></li>
                </ul>
                <div id="demo4"></div> --%>
              </li>
	    </ul>
	    </dd>
	    <dd id="qylist"><div class="title"><span><img src="resources/images/leftico03.png" /></span>区域列表</div>
	   	<ul class="menuson1">
            <li>
                <ul class="info-qy">
                    <li id ="ydzyqy" class="hide">
       	   		 	<input type="radio" name="ydzyqy" checked="checked" id="天河区" value="天河区">天河区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="by" value="白云区">白云区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="lw" value="荔湾区">荔湾区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="hd" value="花都区">花都区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="yx" value="越秀区">越秀区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="hz" value="海珠区">海珠区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="ns" value="南沙区">南沙区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="hp" value="黄埔区">黄埔区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="py" value="番禺区">番禺区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="zc" value="增城区">增城区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="ydzyqy" id="ch" value="从化区">从化区</input>&nbsp;&nbsp;&nbsp;&nbsp;
       	   		 </li>
       	   		 <li id ="xmpzzyqy" class="hide">
       	   		 	<input type="radio" name="xmpzzyqy" checked="checked" id="天河区" value="天河区">天河区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="by" value="白云区">白云区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="lw" value="荔湾区">荔湾区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="hd" value="花都区">花都区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="yx" value="越秀区">越秀区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="hz" value="海珠区">海珠区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="ns" value="南沙区">南沙区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="hp" value="黄埔区">黄埔区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="py" value="番禺区">番禺区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="zc" value="增城区">增城区</input>&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="xmpzzyqy" id="ch" value="从化区">从化区</input>&nbsp;&nbsp;&nbsp;&nbsp;
       	   		 </li>
                </ul>
            </li>

	    </ul>
    </dd>
	    </dl>
      <br>
        <ul class="info-list">
            <li>
                <input type="text" style="width: 40%;height: 20px;margin-left:10%;border:1px solid #ccc;" id="searchtext"></input>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" onclick="goserch()" value="搜索" style="width: 20%;height: 25px;" id="searchbtn"></input>
            </li>
            <li><label style="font-weight: bold;">共<label id="totalListLength" style="color: red;font-weight: bold;"></label>条记录</label></li>
			<c:forEach  var="li" items="${list}">
			 	<li><a href="javascript:search(${li.id})">${li.name}</a></li>             	
			</c:forEach>
           
        </ul>
        <div id="demo4"></div>

	</div>
	<div class="rightDiv" >
		<h3>农业特产：从化三华李</h3>
		<div class="formtitle"><span>生长习性</span></div>
		<div class="toolsli">
		<div style="float: left;width: 80%;margin: 0px;">三华李是温带落叶性果树，对气候适应性较强，但花期遇低温霜冻或持续阴雨天气，会造成严重的落花甚至失收，另一方面，春天气温高，先发叶后开花，也不利于果实的形成；三华李是喜光果树，在日光照不良地方不宜栽培，在种植密度、整形修剪上予以注意，以满足其对光照的需要，光照不足，不仅影响其生长结果，也影响果实品质和颜色；三华李对土壤要求不苛，只要土层相对深厚而不过于瘠薄，皆可种植，其中以土层深厚、富含腐殖质的微酸性土壤最宜栽培。</div>
		<img src="resources/images/sanhuali.png" style="float: left;margin-left: 30px;width: 150px" alt="图片">
		</div>
		<div class="formtitle"><span>立地条件</span></div>
		<div class="toolsli">选择壤土、砂壤土；土层厚度≥60cm；pH值6--6.5；有机质含量≥2.0%；三华李是浅根系果树，根系扩展度可大于树冠枝展度（0.6--1）倍，根系深度只及树高的1/5--1/3，吸收根一般在45cm以内，10--30cm为生长旺盛区，故，其根系对土壤中空气的含量要求较高，一般土壤空气含量≥5%根系开始生长、≥10%生长正常、〈2%时根系显著变细并出现枯死根。</div>
		<div class="formtitle"><span>果实特征</span></div>
		<div class="toolsli">前期为青，慢慢转为红，泛起淡淡的紫色，未成熟时有苦涩味、酸味。成熟的三华李，表面有一层“白霜”(本身保护作用的)。</div>
		<div class="formtitle"><span>功效</span></div>
		<div class="toolsli">华李对肝病有较好的保养作用。唐代名医孙思邈评价三华李说：“肝病宜食之”。三华李中的维生素B12有促进血红蛋白再生的作用，贫血者适度食用三华李对健康大有益处。三华李的悦面美容之功十分奇物，经常食用鲜三华李，能使颜面光洁如玉，实为现代美容美颜不可多得的天然精华。三华李酒就有“驻色酒”之称。祖国中医理论认为，李味甘酸、性凉，具有清肝涤热、生津液、利小便之功效。特别适合于治疗胃阴不足、口喝咽干、大腹水肿、小便不利等症状。</div>
		</div>
	</div>
	<div class="" >
		<c:forEach  var="li" items="${list}">
			<h3>${li.name}</h3>
			<div class=""><span>类别</span></div>
			<div class="">
			<div style="float: left;width: 80%;margin: 0px;">${li.type}</div>
			</div>
			<div class=""><span>地址</span></div>
			<div class="">
			<div style="float: left;width: 80%;margin: 0px;">${li.address}</div>
			</div>
			<div class=""><span>简介</span></div>
			<div class="">
			<div style="float: left;width: 80%;margin: 0px;">${li.jianjie}</div>
			</div>
		</c:forEach>
	</div>
	<script type="text/javascript">
	function search(id){
		//var name =$("input[name='clzli']:checked").val();
		//var typename =$("#searchtext").val();
		var id =id;
		alert(id);
		location.href="nyzyByid.do?id="+id;
	}
	function goserch(){
		var name =$("input[name='clzli']:checked").val();
		var typename =$("#searchtext").val();
		alert(name+"===="+typename);
		location.href="nyzyByname.do?name="+name+"&typename="+typename;
	}
	
    $(function(){
        $("#qylist").hide();
        $("#cxlist").show();
    })
		$("#demo4").paginate({
          count     : 10,
          start     : 1,
          display     : 6,
          border          : false,
          text_color              : '#68BA64',
          background_color        : '#E3F2E1',
          border_hover_color      : '#68BA64',
          text_hover_color        : 'black',
          background_hover_color  : '#CAE6C6',
          images    : false,
          mouse   : 'press'
        });
        $("input[name='contentname']").click(function(){
        	$(".info-type-and-search li[id$=li]").addClass("hide");
        	$(".info-type-and-search li[id="+$(this).attr("id")+"li"+"]").removeClass("hide");

        })
        $("input[name='clzli']").click(function(){
        	$(".info-qy li[id$=qy]").addClass("hide");
        	$(".info-qy li[id="+$(this).attr("id")+"qy"+"]").removeClass("hide");

        })
        $("#nytc").click(function(){
            $("#cxlist").hide();
            $("#qylist").hide();
        })
        $("#nzwpz").click(function(){
            $("#cxlist").hide();
            $("#qylist").hide();
        })
        $("#mycp").click(function(){
            $("#cxlist").hide();
            $("#qylist").hide();
        })
        $("#yszy").click(function(){
            $("#cxlist").show();
            $("#qylist").hide();
        })
        $("#xmzy").click(function(){
            $("#cxlist").show();
            $("#qylist").hide();
        })
        $("#sczy").click(function(){
            $("#cxlist").show();
            $("#qylist").hide();
        })
        $("#clz").click(function(){
            $("#cxlist").show();
            $("#qylist").hide();
        })
        $("#ydzy").click(function(){

            $("#qylist").show();
        })
        $(".clzlis").click(function(){

            $("#qylist").hide();
        })
	</script>
</body>
</html>
