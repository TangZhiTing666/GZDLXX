<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>统计报表</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/blue/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.jqprint-0.3.js"></script>
    <script type="text/javascript" src="js/jquery.tablesorter.js"></script>  

    <script type="text/javascript">
        $(document).ready(function(){  
            $(".tablelist").tablesorter();       
        });
    </script>
   
</head>
<body>
    <table class="tablelist tablesorter">
        <caption><span class="maintitle">广州市白云区江高柏德养殖场无公害产品统计</span><span class="subtitle">来源于广州市最新的年鉴数据</span></caption>
        <thead>
        <tr>
        <th>序号</th>
        <th>区</th>
        <th>通讯地址</th>
        <th>产地地址</th>
        <th>产品名称</th>
        <th>种类</th>
        <th>批准产量（吨）</th>
        <th>证书编号</th>
        <th>有效期限</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td>1</td>
        <td>白云</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>罗非鱼</td>
        <td>水产</td>
        <td>20</td>
        <td>WGH-10-00842</td>
        <td>2013.03.01-2016.05.31</td>
        </tr>         
        <tr>
        <td>2</td>
        <td>白云</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>鳙鱼</td>
        <td>水产</td>
        <td>60</td>
        <td>WGH-10-00841</td>
        <td>2013.03.01-2016.05.31</td>
        </tr>       
        <tr>
        <td>3</td>
        <td>白云</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>草鱼</td>
        <td>水产</td>
        <td>100</td>
        <td>WGH-10-00839</td>
        <td>2013.03.01-2016.05.31</td>
        </tr>       
        <tr>
        <td>4</td>
        <td>白云</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>广东省广州市白云区江高镇茅山村</td>
        <td>鲢鱼</td>
        <td>水产</td>
        <td>20</td>
        <td>WGH-10-00840</td>
        <td>2013.03.01-2016.05.31</td>
        </tr>
        </tbody>
    </table>
    <div style="text-align: center;margin-top: 20px">
        <input type="button" value="打印" id="printbtn" style="cursor:pointer;background:url(../images/toolbg.gif) repeat-x;line-height:33px; height:33px;width: 100px; border:solid 1px #d3dbde;padding-left: 10px;padding-right:10px;border-radius: 3px;margin:0px auto;"></input>
    </div>
    <script type="text/javascript">
           
        //$('.tablelist tbody tr:odd').addClass('odd');
        $('#printbtn').click(function(){
            
            $('.tablelist').jqprint();
            
        })
    </script>
</body>
</html>