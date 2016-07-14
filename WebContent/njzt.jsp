<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<style type="text/css">
		
		table {
			/* width: 100%; */
		}	
		.tablelist{
			width: 90%;
			text-align: center;
		}
		
		#tab1{height: 600px;}
		#app-right-top{top:40px !important;}
	</style>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
	<!-- <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script> -->
	<script type="text/javascript" src="js/jquery.jqprint-0.3.js"></script>
	<link href="css/blue/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.tablesorter.js"></script>

	<link rel="stylesheet" href="http://58.62.200.71:8098/arcgis_js_v316_api/arcgis_js_api/library/3.16/3.16/dijit/themes/tundra/tundra.css">
    <link rel="stylesheet" href="http://58.62.200.71:8098/arcgis_js_v316_api/arcgis_js_api/library/3.16/3.16/esri/css/esri.css">
    <link rel="stylesheet" href="css/map.css">
	<script src="http://58.62.200.71:8098/arcgis_js_v316_api/arcgis_js_api/library/3.16/3.16/init.js"></script>
</head>
<body>
	<div class="leftDiv">
		<dl class="leftmenu">	        
	    <!-- <dd>
	    	    <div class="title">
	    	    <span><img src="images/leftico01.png" /></span>分析类型
	    	    </div>
	    	        <ul class="menuson1">	        
	    	        	<li>
	    	        	<div style="text-align: center">
	    	        		<input type="radio" name="typename" checked="checked" id="Time">区域对比</input>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="typename" id="Area">时间对比</input>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="typename" id="Count">信息统计</input>
	    	        	</div></li>
	    	        </ul>    
	    	    </dd> -->	    
	    <dd>
	    <div class="title">
	    <span><img src="images/leftico02.png" /></span>分析内容
	    </div>
	    <ul class="menuson1">
	    	<li>
	    	<table id="Timecontent" class="tableLeft">
	    		<tr>
	    			<td>
	    				<input type="radio" name="Tcontentname" checked="checked" id="jbqkT">农业基本情况</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Tcontentname" id="zytrT">农业主要投入</input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Tcontentname" id="qyczT">农业及乡镇企业产值</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Tcontentname" id="xmyT">畜牧业渔业基本情况</input>
	    			</td>
	    		</tr>
	    	</table>
	    	<!-- <table id="Areacontent" style="display: none;">
	    		<tr>
	    			<td>
	    				<input type="radio" name="Acontentname" checked="checked" id="jbqkA">农业基本情况</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Acontentname" id="srqkA">农业收入情况</input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Acontentname" id="qyczA">农业及乡镇企业产值</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Acontentname" id="xmyA">畜牧业渔业基本情况</input>
	    			</td>
	    		</tr>
	    	</table>
	    	<table id="Countcontent" style="display: none;">
	    		<tr>
	    			<td>
	    				<input type="radio" name="Ccontentname" checked="checked" id="jbqkC">农业基本情况</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="zytrC">农业主要投入</input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="srqkC">农业收入情况</input>
	    			</td>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="qyczC">农业及乡镇企业产值</input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="radio" name="Ccontentname" id="xmyC">畜牧业渔业基本情况</input>
	    			</td>
	    			<td>
	    				
	    			</td>
	    		</tr>
	    	</table> -->
	    	</li>
	        </ul>     
	    </dd> 
	    
	    
	    <dd id="Timeanaly"><div class="title"><span><img src="images/leftico03.png" /></span>分析时间</div>
	    <ul class="menuson1">
	        <li>
	        <div style="text-align: center;">年份：<select style="width: 30%">
	        <option selected="selected">2015</option>
	        <option>2014</option>
	        <option>2013</option>
	        <option>2012</option>
	        <option>2011</option>
	        </select><div style="color: red;font-weight: bold;">备注：数据来源于年鉴</div></div>
	        </li>
	    </ul>    
	    </dd>  
	    
	    <!-- <dd id="Areaanaly" style="display: none"><div class="title"><span><img src="images/leftico03.png" /></span>分析地区</div>
	      <ul class="menuson1">
	          <li>
	          <div style="text-align: center;" id="Areaanaly">地区：<select style="width: 30%">
	          <option selected="selected">广州市</option>
	          <option>荔湾区</option>
	          <option>海珠区</option>
	          <option>天河区</option>
	          <option>白云区</option>
	          </select></div>
	          </li>
	      </ul>    
	      </dd> -->  

		<!-- <dd id="Countanaly" style="display: none"><div class="title"><span><img src="images/leftico03.png" /></span>分析时间</div>
			    <ul class="menuson1">
			        <li>
			        <div style="text-align: center;" id="Countanaly">年份：<select style="width: 30%">
			        <option selected="selected">2015</option>
			        <option>2014</option>
			        <option>2013</option>
			        <option>2012</option>
			        <option>2011</option>
			        </select></div>
			        </li>
			    </ul>    
			    </dd> -->


	    <dd id="yzanaly"><div class="title"><span><img src="images/leftico04.png" /></span>分析因子</div>
	    <ul class="menuson1">
	        <li id="yzTb">
				<table  id="jbqkTTb" class="tableLeft">
					<tr>
						<td>
							<input type="radio" name="jbqkTradioname" checked="checked" >农村劳动力</input>
						</td>
						<td>
							<input type="radio" name="jbqkTradioname">水田面积</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="jbqkTradioname">当年新增耕地面积</input>
						</td>
						<td>
							<input type="radio" name="jbqkTradioname">当年减少耕地面积</input>
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
				<!-- <table  id="jbqkATb" style="display: none;">
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
				<table  id="zytrATb" style="display: none">
					<tr>
						<td>
							<input type="radio" name="radioname" checked="checked">化肥用量（折纯）</input>
						</td>
						<td>
							<input type="radio" name="radioname">农机总动力</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">有效灌溉面积</input>
						</td>
						<td>
							<input type="radio" name="radioname">旱涝保收面积</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">农村用电量</input>
						</td>
						<td>
							<input type="radio" name="radioname">农村小水电站数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">农药用量</input>
						</td>
						<td>
							<input type="radio" name="radioname">小水电装机容量</input>
						</td>
					</tr>
				</table>
				<table  id="qyczATb" style="display: none">
					<tr>
						<td>
							<input type="radio" name="radioname" checked="checked">乡镇企业职工人数</input>
						</td>
						<td>
							<input type="radio" name="radioname">乡镇企业数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">乡镇企业总产值</input>
						</td>
						<td>
							<input type="radio" name="radioname">农业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">林业总产值</input>
						</td>
						<td>
							<input type="radio" name="radioname">牧业总产值</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">渔业总产值</input>
						</td>
						<td>
							
						</td>
					</tr>
				</table>
				<table  id="xmyATb" style="display: none">
					<tr>
						<td>
							<input type="radio" name="radioname" checked="checked">牛存栏数</input>
						</td>
						<td>
							<input type="radio" name="radioname">猪存栏数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">羊存栏数</input>
						</td>
						<td>
							<input type="radio" name="radioname">猪出栏数</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">猪牛羊肉产量</input>
						</td>
						<td>
							<input type="radio" name="radioname">牛奶产量</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">淡水养殖产量</input>
						</td>
						<td>
							<input type="radio" name="radioname">淡水养殖面积</input>
						</td>
					</tr>
					<tr>
						<td>
							<input type="radio" name="radioname">水产品产量</input>
						</td>
						<td>
							<input type="radio" name="radioname">海水捕获产量</input>
						</td>
					</tr>
				</table> -->
	        </li>
	    </ul>	    
	    </dd>
	    </dl>
	    <br>
	    <button style="margin-left: 33%;border: 1px solid #ccc;background-color: #A6EE7A;width: 80px;height: 40px;cursor: pointer;">开始分析</button>
	</div>
	<div class="rightDiv">
    <div id="usual1" class="usual"> 
	<div class="itab">
    <ul> 
    <li><a href="#tab1" class="selected">地图展示</a></li> 
    <li><a href="#tab2">表格展示</a></li> 
    </ul>
    </div> 

	  
	<div id="tab1" class="tabson">
        <div id="map" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'center'" class="tundra"></div>
        <div id="app-right-top">
            <div id="tool-container">
                <div class="tool-control-wrap">
                    <div class="left float-l">
                        <!-- <div class="remoteimage">
                            <span id="remoteimage_control" class="last"><img src="images/icon/layer.png"></span>
                            <i>遥感影像</i>
                        </div>
                        <b></b> -->
                        <!-- <div class="statement">
                            <span id="statement_control" class="last"><img src="images/icon/tongji.png"></span>
                            <i>统计报表</i>
                        </div>
                        <b></b> -->
                        <!-- <div class="legend">
                            <span id="legend_control" class="last"><img src="images/icon/legendicon.png"></span>
                            <i>图例</i>
                        </div>
                        <b></b> -->
                        <!-- <div class="fullscr">
                            <span id="fullscr_control" class="last"><img src="images/icon/menu.png"></span>
                            <i>全屏</i>
                        </div>
                        <b></b> -->
                        <div class="basictool">
                            <span id="basictool_control" class="last"><img src="images/icon/menu.png"></span>
                            <i>工具</i>
                            <em></em>
                        </div>
                        <div class="detail-box">
                        <ul id="boxul" class="boxinfo">
                            <li id="zoomin">
                                <span class="last"><img src="images/icon/zoomin.png"></span>
                                <i>拉框放大</i>
                            </li>
                            <li id="zoomout">
                               <span class="last"><img src="images/icon/zoomout.png"></span>
                               <i >拉框缩小</i>
                            </li>
                            <li id="zoomprev">
                               <span class="last"><img src="images/icon/previous.png"></span>
                               <i>前一视图</i>
                            </li>
                            <li id="zoomnext">
                               <span class="last"><img src="images/icon/next.png"></span>
                               <i>后一视图</i>
                            </li>
                            <li id="pan" class="map-short">
                               <span class="last"><img src="images/icon/pan.png"></span>
                               <i>平移</i>
                            </li>
                            <li id="extent" class="map-short">
                               <span class="last"><img src="images/icon/earth.png"></span>
                               <i>全图</i>
                            </li>
                            <!-- <li id="printmap" class="map-short">
                               <span class="last"><img src="images/icon/print.png"></span>
                               <i>打印</i>
                            </li> -->
                            <li id="deactivate" class="map-short">
                               <span class="last"><img src="images/icon/close.png"></span>
                               <i>取消</i>
                            </li> 
                             
                        </ul>
                    </div>
                    </div>

                </div>
            </div>
        </div>
        
    </div>
    <div id="tab2" class="tabson">
    <div style="overflow: auto;height: 500px;">
        <table class="tablelist tablesorter" style="margin: 0px auto">
        <caption><span class="maintitle">广州市2015年当年减少耕地面积对比分析图</span><span class="subtitle">来源于广州市最新的年鉴数据</span></caption>
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
        </tbody>
    </table>
    <div style="text-align: center;margin-top: 10px">
        <input type="button" value="打印" id="printbtn1" style="cursor:pointer;background:url(../images/toolbg.gif) repeat-x;line-height:33px; height:33px;width: 100px; border:solid 1px #d3dbde;padding-left: 10px;padding-right:10px;border-radius: 3px;margin:0px auto;"></input>
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
			$("table[id="+$("input[name$='contentname'][class='on']").attr("id")+"Tb"+"]").css("display","block");
			if($(this).attr("id")=="Area"||$(this).attr("id")=="Count"){
				$("#prealg").css("display","none");
			}else{
				$("#prealg").css("display","block");
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
		$("input[name=mainname]").click(function(){
			$("div[id$='main']").css("display","none");
			$("div[id="+$(this).attr("id")+"main"+"]").css("display","block");
		})
		$("#usual1 ul").idTabs(); 
		/*$('.tablelist tbody tr:odd').addClass('odd');*/

		$("div[class='map-menu']").hover(function(){
            $('div[class="map-menu"] i').css("color","#84B990");
        },function(){
            $('div[class="map-menu"] i').css("color","#000");
        })

        $('div[class="map-menu"]').click(function(){
            $('div[class="map-open"]').toggle("fast",function(){
                if($('div[class="map-open"]').is(":hidden")){
                    $('div[class="map-menu"] em').css("background-position","-13px -17px");
                    $('div[class="map-menu"] i').css("color","#000");
               }
               else{
                $('div[class="map-menu"] em').css("background-position","-12px -177px");
                $('div[class="map-menu"] i').css("color","#84B990");
               }  
              });               
        })
        $("div[class='map-open'] li").hover(function(){
            $(this).css("color","#84B990");
        },function(){
            $(this).css("color","#000");
        });    
        $('div[class="basictool"]').click(function(){
            $('div[class="detail-box"]').toggle("fast",function(){
                if($('div[class="detail-box"]').is(":hidden")){
                    $('div[class="basictool"] em').css("background-position","-13px -17px");
                    $('div[class="basictool"] i').removeClass("basictool-i-selected");
               }
               else{
                    $('div[class="basictool"] em').css("background-position","-12px -177px");
                    $('div[class="basictool"] i').addClass("basictool-i-selected");
               }  
              });               
        })
       
        $("div[class='statement']").click(function(){
            window.open('statement.jsp','_blank');
        })
        function showDetail(){
            window.open("page.html");
        }  
        $('#printbtn1').click(function(){
    		window.open("totalprint.jsp");
    	})
    	$(document).ready(function(){  
            $(".tablelist").tablesorter();       
        });
	</script>
	<script type="text/javascript">
		var map,layer,southCarolinaCounties;
  require([
    "esri/map", 
    "esri/layers/ArcGISTiledMapServiceLayer", 
    "esri/dijit/LayerList",
    "esri/InfoTemplate",
    "dojo/dom-construct",
    "esri/dijit/Popup",
    "esri/layers/ArcGISDynamicMapServiceLayer",
    "esri/layers/GraphicsLayer",
    "esri/layers/FeatureLayer",
    "esri/symbols/SimpleFillSymbol",
    "esri/symbols/SimpleLineSymbol",
    "esri/Color",
    "esri/graphic",
    "esri/geometry/Point",
    "esri/SpatialReference",
    "esri/geometry/Polygon",  
    "dojo/domReady!"
], function(Map, ArcGISTiledMapServiceLayer,LayerList,InfoTemplate,domConstruct, Popup,ArcGISDynamicMapServiceLayer,GraphicsLayer,FeatureLayer,SimpleFillSymbol,SimpleLineSymbol,Color,Graphic,Point,SpatialReference,Polygon) {
    var popup = new Popup({
        fillSymbol: null,
        lineSymbol: null,
        markerSymbol: null
      }, domConstruct.create("div"));

      map = new Map("map", {
            logo: false,
            sliderStyle: "large"
          });

      var baseMapLayer = new ArcGISTiledMapServiceLayer("http://58.62.200.71:8399/arcgis/rest/services/GzBaseMap/MapServer",{id:"广州市地图"});
      map.addLayer(baseMapLayer);
   
     var bar = new ArcGISDynamicMapServiceLayer("http://58.62.200.71:8399/arcgis/rest/services/gznjztchart/MapServer");
     map.addLayer(bar);   
});
	</script>
	    <script>
  var navToolbar;
  var navOption; // 当前选择的操作
  require([
      "dojo/parser",
      "esri/toolbars/navigation",
      "dojo/domReady!"],
    function (
      parser,
      Navigation
    ) {
      parser.parse();

      //地图基本操作功能（放大 缩小 全图 前一视图 后一视图 漫游 返回标准设置）
      map.on('load', setupNavBar);
      function setupNavBar(){
        navToolbar = new Navigation(map);
      }      
      $("div[class='detail-box'] li").click(function(){
        $("div[class='detail-box'] li").css("font-weight","normal");
        $("div[class='detail-box'] li").css("background-color","#fff");
        switch ($(this).attr("id")){
            case 'zoomin':
                navToolbar.activate(Navigation.ZOOM_IN);                
                $(this).css("background-color","#cccccc");
                $(this).css("font-weight","bold");
                break;
            case 'zoomout':
                navToolbar.activate(Navigation.ZOOM_OUT);
                $(this).css("background-color","#cccccc");
                $(this).css("font-weight","bold");
                break;
            case 'zoomprev':
                navToolbar.zoomToPrevExtent();
                break;
            case 'zoomnext':
                navToolbar.zoomToNextExtent();
                break;
            case 'pan':
                map.enablePan();
                navToolbar.activate(Navigation.PAN);
                $(this).css("background-color","#cccccc");
                $(this).css("font-weight","bold");
                break;
            case 'extent':
                navToolbar.zoomToFullExtent();
                break;
            case 'deactivate':
                navToolbar.deactivate();
                break;
            case 'printmap':
                $("#map").jqprint();
                break;
        }
      }) 
    });
</script>
</body>
</html>