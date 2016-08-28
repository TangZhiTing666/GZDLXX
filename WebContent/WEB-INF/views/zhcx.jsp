<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>综合查询</title>
	<style type="text/css">	
		table {
			/* width: 100%; */
		}	
		.tablelist{
			width: 90%;
			text-align: center;
		}
		.canvasHide{
			display: none;
		}
	</style>
	<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="resources/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="resources/js/echarts.common.min.js"></script>
	<script type="text/javascript" src="resources/js/macarons.js"></script>
	<script type="text/javascript" src="resources/js/jquery.idTabs.min.js"></script>
	<link href="resources/css/blue/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="resources/js/jquery.tablesorter.js"></script>  
	
</head>
<body>
	<div class="leftDiv">
		<dl class="leftmenu">	        
	    <dd>
	    <div class="title">
	    <span><img src="resources/images/leftico01.png" /></span>分析类型
	    </div>
	        <ul class="menuson1">	        
	        	<li>
	        	<div style="text-align: center">
	        		<input type="radio" name="typename" checked="checked" id="Time" value ="1" ><label >区域对比</label></input>&nbsp;&nbsp;&nbsp;&nbsp;
	        		<input type="radio" name="typename" id="Area" value="2">时间对比</input>&nbsp;&nbsp;&nbsp;&nbsp;
	        		<input type="radio" name="typename" id="Count" value = "3">信息统计</input>
	        	</div></li>
	        </ul>    
	    </dd>	    
	    <dd>
	    <div class="title">
	    <span><img src="resources/images/leftico02.png" /></span>分析内容
	    </div>
	    <ul class="menuson1">
	    	<li>
	    	<table id="Timecontent" class="tableLeft">
	    		<tr>
	    			<td>
	    				<input type="radio" name="Tcontentname" value = "AGRI_BASIC" checked="checked" id="jbqkT">农业基本情况</input>
	    				<input type ="hidden" id = "jbqkT_1" value ="农业基本情况 "></input>
	    				
	    				
	    			</td>
	    			<td>
	    				<input type="radio" name="Tcontentname" value = "AGRI_INVEST" id="zytrT">农业主要投入</input>
	    				<input type ="hidden" id = "zytrT_1" value ="农业主要投入"></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Tcontentname" value= "AGRI_TOWNSHIP_INDUSTRIES" id="qyczT">农业及乡镇企业产值</input>
	    				<input type ="hidden" id = "qyczT_1" value ="农业及乡镇企业产值"></input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Tcontentname" value= "BREEDING_FISHING_BASIC" id="xmyT">畜牧业渔业基本情况</input>
	    				<input type ="hidden" id = "xmyT_1" value ="畜牧业渔业基本情况"></input>
	    			</td>
	    		</tr>
	    	</table>
	    	<table id="Areacontent" style="display: none;" class="tableLeft">
	    		<tr>
	    			<td>
	    				<input type="radio" name="Acontentname" checked="checked" id="jbqkA">农业基本情况</input>
	    				<input type ="hidden" id = "jbqkA_2" value ="农业基本情况"></input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Acontentname" id="srqkA">农业收入情况</input>
	    				<input type ="hidden" id = "srqkA_1" value ="农业收入情况"></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Acontentname" id="qyczA">农业及乡镇企业产值</input>
	    				<input type ="hidden" id = "qyczA_2" value ="农业及乡镇企业产值"></input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Acontentname" id="xmyA">畜牧业渔业基本情况</input>
	    				<input type ="hidden" id = "xmyA_2" value ="畜牧业渔业基本情况"></input>
	    			</td>
	    		</tr>
	    	</table>
	    	<table id="Countcontent" style="display: none;" class="tableLeft">
	    		<tr>
	    			<td>
	    				<input type="radio" name="Ccontentname" checked="checked" id="jbqkC">农业基本情况</input>
	    				<input type ="hidden" id = "jbqkC_3" value ="农业基本情况"></input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="zytrC">农业主要投入</input>
	    				<input type ="hidden" id = "zytrC_3" value ="农业主要投入"></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="srqkC">农业收入情况</input>
	    				<input type ="hidden" id = "srqkC_3" value ="农业收入情况"></input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="qyczC">农业及乡镇企业产值</input>
	    				<input type ="hidden" id = "qyczC_3" value ="农业及乡镇企业产值"></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="xmyC">畜牧业渔业基本情况</input>
	    				<input type ="hidden" id = "xmyC_3" value ="畜牧业渔业基本情况"></input>
	    			</td>
	    			<td>
	    				
	    			</td>
	    		</tr>
	    	</table>
	    	</li>
	        </ul>     
	    </dd> 
	    
	    
	    <dd id="Timeanaly">
	    <div class="title"><span><img src="resources/images/leftico03.png" /></span>分析时间</div>
	    <ul class="menuson1">
	        <li>
	        <div style="text-align: center;">年份：
	        <select style="width: 30%" id ="Timeanaly_sel">
	        </select>
	        <div style="color: red;font-weight: bold;">备注：数据来源于年鉴</div></div>

	        </li>
	    </ul>    
	    </dd>  
	    
	    <dd id="Areaanaly" style="display: none"><div class="title"><span><img src="resources/images/leftico03.png" /></span>分析地区</div>
	    <ul class="menuson1">
	        <li>
	        <div style="text-align: center;" id="Areaanaly">地区：<select style="width: 30%">
	        <option selected="selected">广州市</option>
	        <option>荔湾区</option>
	        <option>海珠区</option>
	        <option>天河区</option>
	        <option>白云区</option>
	        </select><div style="color: red;font-weight: bold;">备注：数据来源于年鉴</div></div>
	        </li>
	    </ul>    
	    </dd>  

		<dd id="Countanaly" style="display: none"><div class="title"><span><img src="resources/images/leftico03.png" /></span>分析时间</div>
	    <ul class="menuson1">
	        <li>
	        <div style="text-align: center;" id="Countanaly">年份：<select style="width: 30%">
	        <option selected="selected">2014</option>
	        <option>2013</option>
	        <option>2012</option>
	        <option>2011</option>
	        </select><div style="color: red;font-weight: bold;">备注：数据来源于年鉴</div></div>
	        </li>
	    </ul>    
	    </dd>


	    <dd id="yzanaly"><div class="title"><span><img src="resources/images/leftico04.png" /></span>分析因子</div>
	    <ul class="menuson1">
	        <li id="yzTb">
				<table  id="jbqkTTb" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="jbqkTradioname" value ="COUNTRY_WORKER" checked="checked" id ="jbqkTradioid">农村劳动力</input>
							<input type="hidden" value = "农村劳动力" id= "jbqkTradioid_1"/>
							
						</td>
						<td>
							<input type="radio" name="jbqkTradioname" value ="WATER_FIELD">水田面积</input>
							<input type = "hidden" value ="亩">
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkTradioname" value ="ADD_FIELD">当年新增耕地面积</input>
							<input type = "hidden" value ="亩">
						</td>
						<td>
							<input type="radio" name="jbqkTradioname" value ="REDUCE_FIELD">当年减少耕地面积</input>
							<input type = "hidden" value ="亩">
						</td>
					</tr>
				</table>
				<table  id="zytrTTb" style="display: none" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="zytrTradioname" checked="checked">化肥用量（折纯）</input>
						</td>
						<td>
							<input type="radio" name="zytrTradioname">农机总动力</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="zytrTradioname">有效灌溉面积</input>
						</td>
						<td>
							<input type="radio" name="zytrTradioname">旱涝保收面积</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="zytrTradioname">农村用电量</input>
						</td>
						<td>
							<input type="radio" name="zytrTradioname">农村小水电站数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="zytrTradioname">农药用量</input>
						</td>
						<td>
							<input type="radio" name="zytrTradioname">小水电装机容量</input>
						</td>
					</tr>
				</table>
				<table  id="qyczTTb" style="display: none" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="qyczTradioname" checked="checked">乡镇企业职工人数</input>
						</td>
						<td>
							<input type="radio" name="qyczTradioname">乡镇企业数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczTradioname">乡镇企业总产值</input>
						</td>
						<td>
							<input type="radio" name="qyczTradioname">农业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczTradioname">林业总产值</input>
						</td>
						<td>
							<input type="radio" name="qyczTradioname">牧业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczTradioname">渔业总产值</input>
						</td>
						<td>
							
						</td>
					</tr>
				</table>
				<table  id="xmyTTb" style="display: none" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="xmyTradioname" checked="checked">牛存栏数</input>
						</td>
						<td>
							<input type="radio" name="xmyTradioname">猪存栏数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyTradioname">羊存栏数</input>
						</td>
						<td>
							<input type="radio" name="xmyTradioname">猪出栏数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyTradioname">猪牛羊肉产量</input>
						</td>
						<td>
							<input type="radio" name="xmyTradioname">牛奶产量</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyTradioname">淡水养殖产量</input>
						</td>
						<td>
							<input type="radio" name="xmyTradioname">淡水养殖面积</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyTradioname">水产品产量</input>
						</td>
						<td>
							<input type="radio" name="xmyTradioname">海水捕获产量</input>
						</td>
					</tr>
				</table>
				<table  id="jbqkATb" style="display: none;" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="jbqkAradioname" checked="checked" >当年新增耕地面积</input>
						</td>
						<td>
							<input type="radio" name="jbqkAradioname">当年减少耕地面积</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkAradioname">土地面积</input>
						</td>
						<td>
							<input type="radio" name="jbqkAradioname">国内生产总值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkAradioname">人均国内生产总值</input>
						</td>
						<td>
							<input type="radio" name="jbqkAradioname">总人口</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkAradioname">农业人口</input>
						</td>
						<td>
							<input type="radio" name="jbqkAradioname">总户数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkAradioname">农村劳动力</input>
						</td>
						<td>
							<input type="radio" name="jbqkAradioname">耕地面积</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkAradioname">水田面积</input>
						</td>
						<td>
							<input type="radio" name="jbqkAradioname">财政收入</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkAradioname">财政支出</input>
						</td>
						<td>							
						</td>
					</tr>
				</table>
				<table  id="srqkATb" style="display: none" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="srqkATbradioname" checked="checked">农业收入</input>
						</td>
						<td>
							<input type="radio" name="srqkATbradioname">林业收入</input>
						</td>
					</tr>
				</table>
				<table  id="qyczATb" style="display: none" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="qyczATbradioname" checked="checked">乡镇企业职工人数</input>
						</td>
						<td>
							<input type="radio" name="qyczATbradioname">乡镇企业数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczATbradioname">乡镇企业总产值</input>
						</td>
						<td>
							<input type="radio" name="qyczATbradioname">副业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczATbradioname">农业总产值</input>
						</td>
						<td>
							<input type="radio" name="qyczATbradioname">种植业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczATbradioname">工业总产值</input>
						</td>
						<td>
							<input type="radio" name="qyczATbradioname">建筑业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczATbradioname">交通运输业总产值</input>
						</td>
						<td>
							<input type="radio" name="qyczATbradioname">林业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="qyczATbradioname">牧业总产值</input>
						</td>
						<td>
							<input type="radio" name="qyczATbradioname">渔业总产值</input>
						</td>
					</tr>
				</table>
				<table  id="xmyATb" style="display: none" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="xmyATbradioname" checked="checked">水产品产量</input>
						</td>
						<td>
							<input type="radio" name="xmyATbradioname">淡水养殖产量</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyATbradioname">海水捕获产量</input>
						</td>
						<td>
							<input type="radio" name="xmyATbradioname">大牲畜存栏数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyATbradioname">牛存栏数</input>
						</td>
						<td>
							<input type="radio" name="xmyATbradioname">猪存栏数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyATbradioname">羊存栏数</input>
						</td>
						<td>
							<input type="radio" name="xmyATbradioname">猪出栏数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyATbradioname">肉类总产值</input>
						</td>
						<td>
							<input type="radio" name="xmyATbradioname">牛奶产量</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="xmyATbradioname">禽蛋产量</input>
						</td>
						<td>
							<input type="radio" name="xmyATbradioname">淡水养殖面积</input>
						</td>
					</tr>
				</table>
	        </li>
	    </ul>	    
	    </dd>
	    </dl>
	    <br>
	    <button onclick="analysisStart()" style="margin-left: 33%;border: 1px solid #ccc;background-color: #A6EE7A;width: 70px;height: 30px;cursor: pointer;">开始分析</button>
	</div>
	<div class="rightDiv">

	<div id="unusual" style="display: none;overflow: auto;height: 100%;">
		<table class="tablelist tablesorter" style="margin: 0px auto" id="baseTable">
        <caption><span class="maintitle">广州市2014年农业基本信息统计</span><span class="subtitle">数据来源于统计年鉴</span></caption>
        <thead>
        <tr>
        <th>序号</th>
        <th>区域</th>
        <th>总人口（人）</th>
        <th>农业人口（人）</th>
        <th>总户数（人）</th>
        <th>农村劳动力（人）</th>
        <th>耕地面积（公顷）</th>
        <th>水田面积（公顷）</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td>1</td>
        <td>萝岗区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>         
        <tr>
        <td>2</td>
        <td>海珠区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>       
        <tr>
        <td>3</td>
        <td>白云区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>       
        <tr>
        <td>4</td>
        <td>黄埔区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>5</td>
        <td>荔湾区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>6</td>
        <td>番禺区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>7</td>
        <td>花都区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>        
       	<tr>
        <td>8</td>
        <td>从化市</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>9</td>
        <td>天河区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>10</td>
        <td>增城市</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>1</td>
        <td>萝岗区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>         
        <tr>
        <td>2</td>
        <td>海珠区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>       
        <tr>
        <td>3</td>
        <td>白云区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>       
        <tr>
        <td>4</td>
        <td>黄埔区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>5</td>
        <td>荔湾区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>6</td>
        <td>番禺区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>7</td>
        <td>花都区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>        
       	<tr>
        <td>8</td>
        <td>从化市</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>9</td>
        <td>天河区</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        <tr>
        <td>10</td>
        <td>增城市</td>
        <td>1000</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        </tr>
        </tbody>
    </table>
    <span style="margin-left: 100px;margin-top: 20px;">备注：空格为暂无数据</span>
    <div style="text-align: center;margin-top: 10px;margin-bottom: 10px;">
        <input type="button" value="打印" id="printbtn2" style="cursor:pointer;background:url(./images/toolbg.gif) repeat-x;line-height:33px; height:33px;width: 100px; border:solid 1px #d3dbde;padding-left: 10px;padding-right:10px;border-radius: 3px;margin:0px auto;"></input>
    </div>
	</div>

    <div id="usual1" class="usual" style="height: 100%"> 
	<div class="itab">
    <ul> 
    <li><a href="#tab1" class="selected">图片展示</a></li> 
    <li><a href="#tab2">表格展示</a></li> 
    </ul>
    </div> 

	
	<div id="tab1" class="tabson" style="height: 100%;">
		<div style="height: 100%;">
			<div id="barmain" style="width: 100%;height:85%;margin: 0px auto"></div>
        	<!-- <div id="linemain" class="canvasHide" style="width: 100%;height:85%;margin: 0px auto;"></div>
        	<div id="piemain" class="canvasHide" style="width: 100%;height:85%;margin: 0px auto"></div> -->
        	<br>
        	<div style="text-align: center;">
        		<span id="prealg">预测算法：<input id="fitline" type="radio" name="algname" checked="checked">直线拟合</input>&nbsp;&nbsp;&nbsp;&nbsp;
        		<input id="avegra" type="radio" name="algname">平均斜率</input></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        		<span>结果显示：
        		<input id="bar" type="radio" name="mainname" checked="checked" onclick="createBar();">柱状图</input>&nbsp;&nbsp;&nbsp;&nbsp;
        		<input id="line" type="radio" name="mainname"  onclick="createLine();">折线图</input>&nbsp;&nbsp;&nbsp;&nbsp;
        		<input id="pie" type="radio" name="mainname"  onclick="createPie();">饼状图</input></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        		<span>备注：0表示该年份暂无此项数据</span>
        	</div>
		</div>      
    </div>
    <script type="text/javascript">
    
		function addTimeanaly(yearlist){//区域统计
			$('#Timeanaly select').empty();//清空				
			 var list=yearlist.substring(1,yearlist.length-1).split(',');
			for(var i=0;i<list.length;i++){
				$('#Timeanaly select').append("<option value ="+list[i]+">"+list[i]+"</option>");
			} 
				
		}
		
		function addAreaanaly(){//时间对比
			$('#Areaanaly select').empty();//清空
			/* 
			<c:forEach var="area" items="${arealist}">
				$('#Areaanaly select').append("<option>${area}</option>")
			</c:forEach>  */
		}
		function addCountanaly(yearlist){//信息
			var list=yearlist;
			/* $('#Countanaly select').empty();//清空
			<c:forEach var="year" items='yearlist'>
				$('#Countanaly select').append("<option>${year}</option>")
			</c:forEach>  */
		}
		addTimeanaly('${yearlist}');

		//开始分析
		function analysisStart(){			
			var analysisType="";
			var analysisClass="";
			var analysisDate="";
			var analysisArea="";
			var analysisOfFactor="";
			var Ctitle = "";
			var Ccompany ="";
			//getsle("analysisType","typename","Ctitle");
			var typename = document.getElementsByName("typename");
			for( var i=0;i<typename.length;i++){
				if(typename[i].checked==true){
					analysisType = typename[i].value;
					Ctitle = typename[i].nextSibling.innerText;
					break;
				}
			}
			if(analysisType=="1"){//区域
				alert(1);
				//getsle("analysisClass","Tcontentname","Ctitle");
				var Tcontentname = document.getElementsByName("Tcontentname");
				for( var i=0;i<Tcontentname.length;i++){
					if(Tcontentname[i].checked==true){
						analysisClass = Tcontentname[i].value;
						Ctitle = Tcontentname[i].nextSibling.innerText;
						break;
					}
				} 
				analysisDate = $('#Timeanaly select option:selected') .val();
				if(analysisClass=="AGRI_BASIC"){//农业基本情况
					
					var jbqkTradioname = document.getElementsByName("jbqkTradioname");
					for( var i=0;i<jbqkTradioname.length;i++){
						if(jbqkTradioname[i].checked==true){
							analysisOfFactor = jbqkTradioname[i].value;
							
							Ctitle = jbqkTradioname[i].nextSibling.innerText;
							var nodel = jbqkTradioname[i].nextSibling;
							alert(nodel);
							alert(nodel.nextSibling);
							Ccompany = nodel.nextSibling.innerText;
							break;
						}
					}
					alert(analysisOfFactor +Ctitle+Ccompany);
				} else if(analysisClass =="AGRI_INCOME"){//农业主要收入
					/* var jbqkTradioname = document.getElementsByName("jbqkTradioname");
					for( var i=0;i<jbqkTradioname.length;i++){
						if(jbqkTradioname[i].checked==true){
							analysisOfFactor = jbqkTradioname[i].value;
							Ctitle = jbqkTradioname[i].innerHTML;
							Ccompany = jbqkTradioname[i].nextSibling.value;
							break;
						}
					} */
				}else if(analysisClass=="AGRI_INVEST"){//农业主要投入
					
					var zytrTradioname = document.getElementsByName("zytrTradioname");
					for( var i=0;i<zytrTradioname.length;i++){
						if(zytrTradioname[i].checked==true){
							analysisOfFactor = zytrTradioname[i].value;
							Ctitle = zytrTradioname[i].nextSibling.innerText;
							Ccompany = zytrTradioname[i].nextSbiling.nextSibling.innerText;
							break;
						}
					}
				}else if(analysisClass=="AGRI_TOWNSHIP_INDUSTRIES"){//农业及乡镇企业产值
					
					var zytrTradioname = document.getElementsByName("zytrTradioname");
					for( var i=0;i<zytrTradioname.length;i++){
						if(zytrTradioname[i].checked==true){
							analysisOfFactor = zytrTradioname[i].value;
							Ctitle = zytrTradioname[i].nextSibling.innerText;
							Ccompany = zytrTradioname[i].nextSbiling.nextSibling.innerText;
							break;
						}
					}
				}else{//BREEDING_FISHING_BASIC 畜牧业渔业基本情况
					
					var xmyTradioname = document.getElementsByName("xmyTradioname");
					for( var i=0;i<xmyTradioname.length;i++){
						if(xmyTradioname[i].checked==true){
							analysisOfFactor = xmyTradioname[i].value;
							Ctitle = xmyTradioname[i].nextSibling.innerText;
							Ccompany = xmyTradioname[i].nextSbiling.nextSibling.innerText;
							break;
						}
					}
				}
				
				
			}else if(analysisType=="2"){//时间
				alert(2);
				//getsle("analysisClass","Acontentname","Ctitle");
				var Acontentname = document.getElementsByName("Acontentname");
				for( var i=0;i<Acontentname.length;i++){
					if(Acontentname[i].checked==true){
						analysisClass = Acontentname[i].value;
						Ctitle = Acontentname[i].nextSibling.innerText;
						break;
					}
				}
				analysisArea = $('#Areaanaly select option:selected') .val();
				if(analysisClass=="AGRI_BASIC"){//农业基本情况
					
					var jbqkAradioname = document.getElementsByName("jbqkAradioname");
					for( var i=0;i<jbqkAradioname.length;i++){
						if(jbqkAradioname[i].checked==true){
							analysisOfFactor = jbqkAradioname[i].value;
							Ctitle = jbqkAradioname[i].nextSibling.innerText;
							Ccompany = jbqkAradioname[i].nextSibling.nextSibling.innerText;
							break;
						}
					}
				} else if(analysisClass =="AGRI_INCOME"){//农业主要收入
					
					var srqkATbradioname = document.getElementsByName("srqkATbradioname");
					for( var i=0;i<srqkATbradioname.length;i++){
						if(srqkATbradioname[i].checked==true){
							analysisOfFactor = srqkATbradioname[i].value;
							Ctitle = srqkATbradioname[i].nextSibling.innerText;
							Ccompany = srqkATbradioname[i].nextSibling.nextSibling.innerText;
							break;
						}
					}
				}else if(analysisClass=="AGRI_INVEST"){//农业主要投入					
					/* var xmyTradioname = document.getElementsByName("xmyTradioname");
					for( var i=0;i<xmyTradioname.length;i++){
						if(xmyTradioname[i].checked==true){
							analysisOfFactor = xmyTradioname[i].value;
							Ctitle = xmyTradioname[i].innerHTML;
							Ccompany = xmyTradioname[i].nextSbiling.value;
							break;
						}
					} */
				}else if(analysisClass=="AGRI_TOWNSHIP_INDUSTRIES"){//农业及乡镇企业产值
					
					var qyczATbradioname = document.getElementsByName("qyczATbradioname");
					for( var i=0;i<qyczATbradioname.length;i++){
						if(qyczATbradioname[i].checked==true){
							analysisOfFactor = qyczATbradioname[i].value;
							Ctitle = qyczATbradioname[i].nextSibling.innerText;
							Ccompany = qyczATbradioname[i].nextSibling.nextSibling.innerText;
							break;
						}
					}
				}else{//BREEDING_FISHING_BASIC 畜牧业渔业基本情况
					
					var xmyATbradioname = document.getElementsByName("xmyATbradioname");
					for( var i=0;i<xmyATbradioname.length;i++){
						if(xmyATbradioname[i].checked==true){
							analysisOfFactor = xmyATbradioname[i].value;
							Ctitle = xmyATbradioname[i].nextSibling.innerText;
							Ccompany = xmyATbradioname[i].nextSibling.nextSibling.innerText;
							break;
						}
					}
				}
				
			} else{//信息
				alert(3);
				//getsle("analysisClass","Ccontentname","Ctitle");				
				var Ccontentname = document.getElementsByName("Ccontentname");
				for( var i=0;i<Ccontentname.length;i++){
					if(Ccontentname[i].checked==true){
						analysisClass = Ccontentname[i].value;
						Ctitle = Ccontentname[i].nextSibling.innerText;
						break;
					}
				} 
				analysisDate = $('#Countanaly select option:selected') .val();
			}
			alert("{analysisType:'" + analysisType + "',analysisClass:'" + analysisClass 
			    	+ "',analysisDate:'" + analysisDate + "',analysisArea:'" + analysisArea 
			    	+ "',analysisOfFactor:'" + analysisOfFactor  + "'}");
			alert("Ctitle="+Ctitle+"======Ccompany="+Ccompany);
			$.ajax({
				type:"get",
			    url:"getCountlist.do",
			    date:"{analysisType:'" + analysisType + "',analysisClass:'" + analysisClass 
			    	+ "',analysisDate:'" + analysisDate + "',analysisDate:'" + analysisArea 
			    	+ "',analysisOfFactor:'" + analysisOfFactor  + "'}",
			    dataType:"json",
			    success:function(data){
			    	var areaORyear = analysisDate+analysisDate;
			    	if(date.list.length>0){
			    		update_xy(areaORyear,Ctitle,Ccompany,date.list);
						createBar();
			    	}else{
			    		alert("服务器没有符合分析要求的数据");
			    	}
			    	
			    },
				error:function(){
					alert("分析失败，系统异常");
					}
			})
		}
	</script>
    <script type="text/javascript">
    var array_x ;//x轴
    var array_y ;//y轴
    var arrayxy ;//饼状图对象
    var XY_array ;//饼状图对象数组
    var areaORyear ;//年份或者区域
    var title ;//标题
    var company;//单位
    
    function addAttay_xy(name,value){
    	arrayxy =new Object(); 
    	arrayxy.name=name;
    	arrayxy.value=value;
    }
    //异步修改xy轴
    function update_xy(areaORyear,title,company,list){
    	array_x = new Array();
    	array_y = new Array();
    	XY_array = new Array();
    	for(var i=0;i<list.length;i++){
    		array_x[i] = list[i].counttype;
    		array_y[i] = list[i].countsum;
    		addAttay_xy(list[i].counttype,list[i].countsum);
    		XY_array[i] = arrayxy;
    	}
    	addGraphicInfo(areaORyear,title,company);
    }
    //主页过来添加xy轴
    function add_xy(){
    	array_x = new Array();
    	array_y = new Array();
    	XY_array = new Array();
    	var i;
    	<c:forEach var="li" items="${list}" varStatus="status">
    		i=${status.index};
    		//alert(i);
    		array_x[i] = '${li.counttype}';
    		array_y[i] = ${li.countsum};
    		addAttay_xy('${li.counttype}','${li.countsum}');
    		XY_array[i] = arrayxy;
    		
		</c:forEach>
		var year= $("#Timeanaly select").val();
		//alert("year=="+year)
		addGraphicInfo(year,'农村劳动力','人')		
    }
    //添加图列  年份或者区域 标题 单位
    function addGraphicInfo(areaORyear,title,company){
    	this.areaORyear = areaORyear;
    	this.title = title;
    	this.company = company;
    	//alert(areaORyear+","+title+","+company);
    }
    $(function(){
    	add_xy();
    	createBar();
    })
        // 基于准备好的dom，初始化echarts实例 柱状
        function createBar(){
        	$("#barmain").empty();
        	var myChart = echarts.init(document.getElementById('barmain'));
        // 指定图表的配置项和数据
        var option = {
		    title : {
		    	x: 'center',
		        text: '广州市'+areaORyear+'年'+title+'对比分析图',
		        subtext: '来源于广州市最新的年鉴数据',
		        subtextStyle: {
            		color: 'red',
            		fontWeight: 'bolder'
        		}
		    },
		    tooltip : {
		        trigger: 'axis'
		    },
		    legend: {
		    	x: 'center',
		    	y: 'bottom',
		        data:[title+'（'+company+'）']
		    },		    
		    calculable : true,
		    xAxis : [
		        {
		            type : 'category',
		            data : array_x
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value'
		        }
		    ],
		    series : [
		        {
		            name:title+'（'+company+'）',
		            type:'bar',
		            data:array_y,
		            itemStyle: {
		                normal: {
				            label : {
		                        show: true,
		                        position:'top'
		                    }
		                }
		            }
		        }
		    ]
		};        
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        
        }
        
        // 基于准备好的dom，初始化echarts实例  折线
        function createLine(){
        	$("#barmain").empty();
        	var myChart = echarts.init(document.getElementById('barmain'));
        // 指定图表的配置项和数据
        var option = {
		    title : {
		    	x: 'center',
		    	text: '广州市'+areaORyear+'年'+title+'对比分析图',
		        subtext: '来源于广州市最新的年鉴数据',
		        subtextStyle: {
            		color: 'red',
            		fontWeight: 'bolder'
        		}
		    },
		    tooltip : {
		        trigger: 'axis'
		    },
		    legend: {
		    	x: 'center',
		    	y: 'bottom',
		    	data:[title+'（'+company+'）']
		    },		    
		    calculable : true,
		    xAxis : [
		        {
		            type : 'category',
		            data : array_x
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value'
		        }
		    ],
		    series : [
		        {
		        	 name:title+'（'+company+'）',
		            type:'line',
		            data:array_y,
		            itemStyle: {
		                normal: {
				            label : {
		                        show: true
		                    }
		                }
		            }/*,
		            markPoint : {
		                data : [
		                    {type : 'max', name: '最大值'},
		                    {type : 'min', name: '最小值'}
		                ]
		            },
		            markLine : {
		                data : [
		                    {type : 'average', name: '平均值'}
		                ]
		            }*/
		        }
		    ]
		};
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        }
   //饼
    	function createPie(){
    		$("#barmain").empty();
    		// 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('barmain'));
        // 指定图表的配置项和数据
        var option = {
		    title : {
		    	text: '广州市'+areaORyear+'年'+title+'对比分析图',
		        subtext: '来源于广州市最新的年鉴数据',
		        subtextStyle: {
            		color: 'red',
            		fontWeight: 'bolder'
        		},
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        orient : 'vertical',
		        x : 'left',
		        data:array_x
		    },		    
		    calculable : true,
		    series : [
		        {
		        	name:title+'（'+company+'）',
		            type:'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:XY_array
		            	/* [
		                {value:335, name:'萝岗区'},
		                {value:310, name:'海珠区'},
		                {value:234, name:'白云区'},
		                {value:0, name:'黄埔区'},
		                {value:0, name:'荔湾区'},
		                {value:0, name:'番禺区'},
		                {value:310, name:'花都区'},
		                {value:234, name:'从化市'},
		                {value:0, name:'天河区'},
		                {value:1548, name:'增城市'}
		            ] */,
		            itemStyle: {
		                normal: {
				            label : {
		                        show: true
		                    }
		                }
		            }
		        }
		    ]
		};                   
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    	}
        
    </script>
    <div id="tab2" class="tabson" style="height: 100%">
    <div style="overflow: auto;height: 94%;">
        <table class="tablelist tablesorter" style="margin: 0px auto" id="compareTable">
        <caption><span class="maintitle">广州市2014年当年减少耕地面积对比分析图</span><span class="subtitle">数据来源于统计年鉴</span></caption>
        <thead>
        <tr>
        <th>序号</th>
        <th>地区</th>
        <th>当年减少耕地面积（亩）</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td>1</td>
        <td>萝岗区</td>
        <td>1000</td>
        </tr>         
        <tr>
        <td>2</td>
        <td>海珠区</td>
        <td>1000</td>
        </tr>       
        <tr>
        <td>3</td>
        <td>白云区</td>
        <td>1000</td>
        </tr>       
        <tr>
        <td>4</td>
        <td>黄埔区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>5</td>
        <td>荔湾区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>6</td>
        <td>番禺区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>7</td>
        <td>花都区</td>
        <td>1000</td>
        </tr>        
       	<tr>
        <td>8</td>
        <td>从化市</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>9</td>
        <td>天河区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>10</td>
        <td>增城市</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>1</td>
        <td>萝岗区</td>
        <td>1000</td>
        </tr>         
        <tr>
        <td>2</td>
        <td>海珠区</td>
        <td>1000</td>
        </tr>       
        <tr>
        <td>3</td>
        <td>白云区</td>
        <td>1000</td>
        </tr>       
        <tr>
        <td>4</td>
        <td>黄埔区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>5</td>
        <td>荔湾区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>6</td>
        <td>番禺区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>7</td>
        <td>花都区</td>
        <td>1000</td>
        </tr>        
       	<tr>
        <td>8</td>
        <td>从化市</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>9</td>
        <td>天河区</td>
        <td>1000</td>
        </tr>
        <tr>
        <td>10</td>
        <td>增城市</td>
        <td>1000</td>
        </tr>
        </tbody>
    </table>
    <div style="text-align: center;margin-top: 10px;margin-bottom: 10px;">
        <input type="button" value="打印" id="printbtn1" style="cursor:pointer;background:url(resources/images/toolbg.gif) repeat-x;line-height:33px; height:33px;width: 100px; border:solid 1px #d3dbde;padding-left: 10px;padding-right:10px;border-radius: 3px;margin:0px auto;"></input>
    </div>
    </div>
    </div>
    </div>		
		
	</div>
	<script type="text/javascript">
		$("input[name='typename']").click(function(){			
			$("table[id$='content']").css("display","none");
			$("input[name$='contentname']").removeAttr("class");
			$("table[id="+$(this).attr("id")+"content"+"]").css("display","table");
			$("table[id="+$(this).attr("id")+"content"+"]").find("input").eq(0).attr("class","on");
			$("dd[id$='analy']").css("display","none");
			$("dd[id="+$(this).attr("id")+"analy"+"]").css("display","block");
			$("table[id$='Tb']").css("display","none");
			$("table[id="+$("input[name$='contentname'][class='on']").attr("id")+"Tb"+"]").css("display","table");
			if($(this).attr("id")=="Area"||$(this).attr("id")=="Count"){
				$("#prealg").css("display","none");
			}else{
				$("#prealg").css("display","inline");
			}
			if($(this).attr("id")=="Count"){
				$("#yzanaly").css("display","none");
				$("#usual1").css("display","none");
				$("#unusual").css("display","block");
			}else{
				$("#yzanaly").css("display","block");
				$("#usual1").css("display","block");
				$("#unusual").css("display","none");
			}
		})
		$("input[name$='contentname']").click(function(){
			$("table[id$='Tb']").css("display","none");
			$("table[id="+$(this).attr("id")+"Tb"+"]").css("display","table");
		})
		/*$("input[name=mainname]").click(function(){
			//$("div[id$='main']").css("display","none");
			//$("div[id="+$(this).attr("id")+"main"+"]").css("display","inherit");
			$("div[id$='main']").addClass("canvasHide");
			$("div[id="+$(this).attr("id")+"main"+"]").removeClass("canvasHide");
		})*/
		$("#usual1 ul").idTabs(); 
		/*$('.tablelist tbody tr:odd').addClass('odd');*/
		$('#printbtn1').click(function(){
    		window.open("totalprint.jsp");
    	})
    	$('#printbtn2').click(function(){
    		window.open("totalprint.jsp");
    	})
    	$(document).ready(function(){  
            $(".tablelist").tablesorter();       
        });
	</script>
	
</body>
</html>