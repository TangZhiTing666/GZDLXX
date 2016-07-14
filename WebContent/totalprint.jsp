<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>统计报表</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- <link href="css/blue/style.css" rel="stylesheet" type="text/css" /> -->
    <script language="JavaScript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.jqprint-0.3.js"></script>
    <!-- <script type="text/javascript" src="js/jquery.tablesorter.js"></script>  --> 

    <script type="text/javascript">
        $(document).ready(function(){  
            $('.tablelist tbody tr:odd').addClass('odd');
            $('.tablelist').jqprint();   
        });
    </script>
    
</head>
<body>
	<table class="tablelist tablesorter">
        <caption><span class="maintitle">广州市各区现代农业统计（单位：家）</span><span class="subtitle">来源于广州市最新的年鉴数据</span></caption>
        <thead>
        <tr>
        <th>序号</th>
        <th>区名</th>
        <th>龙头企业</th>
        <th>示范区</th>
        <th>蔬菜基地</th>
        <th>总计</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <tr>1</tr>
        <td>广州市</td>
        <td>146</td>
        <td>95</td>
        <td>624</td>
        <td>862</td>
        </tr>         
        <tr>
        <tr>2</tr>
        <td>白云区</td>
        <td>27</td>
        <td>16</td>
        <td>33</td>
        <td>76</td>
        </tr>       
        <tr>
        <tr>3</tr>
        <td>从化市</td>
        <td>13</td>
        <td>11</td>
        <td>103</td>
        <td>127</td>
        </tr>       
        <tr>
        <tr>4</tr>
        <td>番禺区</td>
        <td>43</td>
        <td>20</td>
        <td>84</td>
        <td>147</td>
        </tr>
        <tr>
        <tr>5</tr>
        <td>花都区</td>
        <td>27</td>
        <td>8</td>
        <td>136</td>
        <td>171</td>
        </tr>
        <tr>
        <tr>6</tr>
        <td>萝岗区</td>
        <td>1</td>
        <td>4</td>
        <td>18</td>
        <td>23</td>
        </tr>
        <tr>
        <tr>7</tr>
        <td>南沙区</td>
        <td>22</td>
        <td>3</td>
        <td>43</td>
        <td>68</td>
        </tr>        
        <tr>
        <tr>8</tr>
        <td>增城市</td>
        <td>13</td>
        <td>33</td>
        <td>204</td>
        <td>250</td>
        </tr>
        
        </tbody>
    </table>
    <!-- <div style="text-align: center;margin-top: 20px">
        <input type="button" value="打印" id="printbtn" style="cursor:pointer;background:url(../images/toolbg.gif) repeat-x;line-height:33px; height:33px;width: 100px; border:solid 1px #d3dbde;padding-left: 10px;padding-right:10px;border-radius: 3px;margin:0px auto;"></input>
    </div> -->
    <script type="text/javascript">
           
    	//$('.tablelist tbody tr:odd').addClass('odd');
    	/*$('#printbtn').click(function(){
    		
    		$('.tablelist').jqprint();
    		
    	})*/
    </script>
</body>
</html>