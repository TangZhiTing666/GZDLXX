<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">   
        table{
            text-align: center;
        }
        .tablelist{
            width: 100%;
        }
        .hide{
            display: none;
        } 
        .menuson li a, .menuson1 li a{
            text-decoration: none !important;
        }
        .addA,.updateA{font-size: 14px;}        
    </style>
    <link href="resources/css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="resources/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="resources/js/select-ui.min.js"></script>    
    <script type="text/javascript">
        $(document).ready(function(e) {
            $(".select1").uedSelect({
                width : 345           
            });
            $(".select2").uedSelect({
                width : 167  
            });
            $(".select3").uedSelect({
                width : 100
            });
        });
    </script>
    <script type="text/javascript">
    $(function(){   
    //导航切换
    $(".menuson .header").click(function(){
        var $parent = $(this).parent();
        $(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();       
        $parent.addClass("active");
        if(!!$(this).next('.sub-menus').size()){
            if($parent.hasClass("open")){
                $parent.removeClass("open").find('.sub-menus').hide();
            }else{
                $parent.addClass("open").find('.sub-menus').show(); 
            }          
        }
    });

    // 三级菜单点击
    $('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
        $(this).addClass("active");
    });

    $('.title').click(function(){
        var $ul = $(this).next('ul');
        $('dd').find('.menuson').slideUp();
        if($ul.is(':visible')){
            $(this).next('.menuson').slideUp();
        }else{
            $(this).next('.menuson').slideDown();
        }
    });
    })  
    </script>
</head>
<body>
    <div class="leftDiv">
        <dl class="leftmenu">                  
            <dd>
                <div class="title">
                    <span><img src="resources/images/leftico02.png" /></span>数据录入
                </div>
                <ul class="menuson" style="display: block;">
                    <li class="active">
                        <div class="header data1" id="xdny1" name="xdny">
                            <cite></cite>
                            <a href="#">现代农业</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data1" id="njzt1" name="njzt">
                            <cite></cite>
                            <a href="#">农经专题</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data1" id="zycx1" name="zycx">
                            <cite></cite>
                            <a href="#">资源查询</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data1" id="wghjd1" name="wghjd">
                            <cite></cite>
                            <a href="#">无公害基地</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data1" id="wghcp1" name="wghcp">
                            <cite></cite>
                            <a href="#">无公害产品</a>
                            <i></i>
                        </div>
                    </li> 
                </ul>   
            </dd>
            <dd>
                <div class="title">
                    <span><img src="resources/resources/images/leftico02.png" /></span>数据审核
                </div>
                <ul class="menuson" style="display: none;">
                    <li>
                        <div class="header data2" id="xdny2" name="xdny">
                            <cite></cite>
                            <a href="#">现代农业</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data2" id="njzt2" name="njzt">
                            <cite></cite>
                            <a href="#">农经专题</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data2" id="zycx2" name="zycx">
                            <cite></cite>
                            <a href="#">资源查询</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data2" id="wghjd2" name="wghjd">
                            <cite></cite>
                            <a href="#">无公害基地</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header data2" id="wghcp2" name="wghcp">
                            <cite></cite>
                            <a href="#">无公害产品</a>
                            <i></i>
                        </div>
                    </li> 
                </ul>      
            </dd>        
        </dl>
    </div>
    <div class="rightDiv">
        <div class="formbody">
            <div id="xdnyDiv" class="usual">
                <div class="itab">
                    <ul> 
                        <li><a href="#xdnyDivtab" class="selected">龙头企业</a></li> 
                        <li><a href="#xdnyDivtab">示范村</a></li> 
                        <li><a href="#xdnyDivtab">蔬菜基地</a></li>
                        <!-- <li class="addli hide newtab"><a href="#addxdnyDivtab"><span class='addA'>新增</span></a></li>
                        <li class="updateli hide newtab"><a href="#updatexdnyDivtab"><span class='updateA'>修改</span></a></li>   -->
                    </ul>
                </div>
                <div id="xdnyDivtab" class="tabson">
                    <ul class="prosearch">
                       <li><label>状态：</label><input name="" type="radio" value="" checked="checked" />&nbsp;已检查&nbsp;&nbsp;<input name="" type="radio" value="" />&nbsp;未检查&nbsp;&nbsp;</li>
                       <li><label>名称：</label><a><input name="" type="text" class="scinput" /></a><a><input name="" type="button" class="sure" value="查询"/></a></li>      
                    </ul>
                    <div class="tools">
                        <ul class="toolbar1">
                            <li class="import"><span><img src="resources/images/t01.png" /></span>导入</li>
                            <li class="add"><span><img src="resources/images/t01.png" /></span>添加</li>
                            <li class="update"><span><img src="resources/images/t02.png" /></span>修改</li>
                            <li class="delete"><span><img src="resources/images/t03.png" /></span>删除</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                        <ul class="toolbar2 hide">
                            <li class="pass"><span><img src="resources/images/t01.png" /></span>通过</li>
                            <li class="dispass"><span><img src="resources/images/t02.png" /></span>不通过</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                    </div>
                    <table class="tablelist">
                        <thead>
                            <tr>
                                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                                <th>序号</th>
                                <th>名称</th>
                                <th>特征特性</th>
                                <th>生长特性</th>
                                <th>概况</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>1</td>
                            <td>三黎鱼</td>
                            <td>三黎鱼，又名鳃鱼 M......</td>
                            <td>目前渔民捕捞三黎鱼主......</td>
                            <td>三黎鱼体扁长，呈长椭......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>2</td>
                            <td>万顷沙过沙香</td>
                            <td>过沙香，又名过山香或......</td>
                            <td>过沙香种植技术与大蕉......</td>
                            <td>过沙香植株假茎高32......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>3</td>
                            <td>广州甜杨桃</td>
                            <td>甜杨桃Averrho......</td>
                            <td>1.繁殖方法。用嫁接......</td>
                            <td>甜杨桃是常绿或半落叶......</td>
                        </tr>    
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>4</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>      
                        </tbody>
                    </table>  
                    <div class="pagin">
                        <div class="message">共<i class="blue">4</i>条记录，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页</div>
                        <ul class="paginList">
                            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                            <li class="paginItem current"><a href="javascript:;">1</a></li>
                            <li class="paginItem "><a href="javascript:;">2</a></li>
                            <li class="paginItem"><a href="javascript:;">3</a></li>
                            <li class="paginItem"><a href="javascript:;">4</a></li>
                            <li class="paginItem"><a href="javascript:;">5</a></li>
                            <li class="paginItem more"><a href="javascript:;">...</a></li>
                            <li class="paginItem"><a href="javascript:;">10</a></li>
                            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                        </ul>
                    </div>    
                </div> 
                <!-- <div id="addxdnyDivtab" class="tabson"></div>
                <div id="updatexdnyDivtab" class="tabson"></div> -->
            </div>
            <div id="njztDiv" class="usual hide">
                <div class="itab">
                    <ul> 
                        <li><a href="#njztDivtab" class="selected">农业基本情况</a></li>
                        <li><a href="#njztDivtab">农业收入情况</a></li> 
                        <li><a href="#njztDivtab">畜牧业渔业基本情况</a></li>  
                        <li><a href="#njztDivtab">农业主要投入</a></li> 
                        <li><a href="#njztDivtab">农业及乡镇企业产值</a></li> 
                        <!-- <li class="addli hide newtab"><a href="#addnjztDivtab"><span class='addA'>新增</span></a></li>
                        <li class="updateli hide newtab"><a href="#updatenjztDivtab"><span class='updateA'>修改</span></a></li>  -->
                    </ul>
                </div>
                <div id="njztDivtab" class="tabson">
                    <ul class="prosearch">
                       <li><label>状态：</label><input name="" type="radio" value="" checked="checked" />&nbsp;已检查&nbsp;&nbsp;<input name="" type="radio" value="" />&nbsp;未检查&nbsp;&nbsp;</li>
                       <li><label>名称：</label><a><input name="" type="text" class="scinput" /></a><a><input name="" type="button" class="sure" value="查询"/></a></li>      
                    </ul>
                    <div class="tools">
                        <ul class="toolbar1">
                            <li class="import"><span><img src="resources/images/t01.png" /></span>导入</li>
                            <li class="add"><span><img src="resources/images/t01.png" /></span>添加</li>
                            <li class="update"><span><img src="resources/images/t02.png" /></span>修改</li>
                            <li class="delete"><span><img src="resources/images/t03.png" /></span>删除</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                        <ul class="toolbar2 hide">
                            <li class="pass"><span><img src="resources/images/t01.png" /></span>通过</li>
                            <li class="dispass"><span><img src="resources/images/t02.png" /></span>不通过</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                    </div>
                    <table class="tablelist">
                        <thead>
                            <tr>
                                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                                <th>序号</th>
                                <th>名称</th>
                                <th>特征特性</th>
                                <th>生长特性</th>
                                <th>概况</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>1</td>
                            <td>三黎鱼</td>
                            <td>三黎鱼，又名鳃鱼 M......</td>
                            <td>目前渔民捕捞三黎鱼主......</td>
                            <td>三黎鱼体扁长，呈长椭......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>2</td>
                            <td>万顷沙过沙香</td>
                            <td>过沙香，又名过山香或......</td>
                            <td>过沙香种植技术与大蕉......</td>
                            <td>过沙香植株假茎高32......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>3</td>
                            <td>广州甜杨桃</td>
                            <td>甜杨桃Averrho......</td>
                            <td>1.繁殖方法。用嫁接......</td>
                            <td>甜杨桃是常绿或半落叶......</td>
                        </tr>    
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>4</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>      
                        </tbody>
                    </table>  
                    <div class="pagin">
                        <div class="message">共<i class="blue">4</i>条记录，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页</div>
                        <ul class="paginList">
                            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                            <li class="paginItem current"><a href="javascript:;">1</a></li>
                            <li class="paginItem "><a href="javascript:;">2</a></li>
                            <li class="paginItem"><a href="javascript:;">3</a></li>
                            <li class="paginItem"><a href="javascript:;">4</a></li>
                            <li class="paginItem"><a href="javascript:;">5</a></li>
                            <li class="paginItem more"><a href="javascript:;">...</a></li>
                            <li class="paginItem"><a href="javascript:;">10</a></li>
                            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                        </ul>
                    </div>    
                </div>
                <!-- <div id="addnjztDivtab" class="tabson"></div>
                <div id="updatenjztDivtab" class="tabson"></div>  -->
            </div>    
            <div id="zycxDiv" class="usual hide"> 
                <div class="itab">
                    <ul> 
                        <li><a href="#zycxDivtab" class="selected">野生资源</a></li> 
                        <li><a href="#zycxDivtab">农作品种</a></li> 
                        <li><a href="#zycxDivtab">畜牧资源</a></li> 
                        <li><a href="#zycxDivtab">水产资源</a></li> 
                        <li><a href="#zycxDivtab">农业特产</a></li> 
                        <li><a href="#zycxDivtab">名优产品</a></li> 
                        <li><a href="#zycxDivtab">农作品种</a></li> 
                        <!-- <li class="addli hide newtab"><a href="#addzycxDivtab"><span class='addA'>新增</span></a></li>
                        <li class="updateli hide newtab"><a href="#updatezycxDivtab"><span class='updateA'>修改</span></a></li>
                                            </ul> -->
                </div>   
                <div id="zycxDivtab" class="tabson">
                    <ul class="prosearch">
                       <li><label>状态：</label><input name="" type="radio" value="" checked="checked" />&nbsp;已检查&nbsp;&nbsp;<input name="" type="radio" value="" />&nbsp;未检查&nbsp;&nbsp;</li>
                       <li><label>名称：</label><a><input name="" type="text" class="scinput" /></a><a><input name="" type="button" class="sure" value="查询"/></a></li>      
                    </ul>
                    <div class="tools">
                        <ul class="toolbar1">
                            <li class="import"><span><img src="resources/images/t01.png" /></span>导入</li>
                            <li class="add"><span><img src="resources/images/t01.png" /></span>添加</li>
                            <li class="update"><span><img src="resources/images/t02.png" /></span>修改</li>
                            <li class="delete"><span><img src="resources/images/t03.png" /></span>删除</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                        <ul class="toolbar2 hide">
                            <li class="pass"><span><img src="resources/images/t01.png" /></span>通过</li>
                            <li class="dispass"><span><img src="resources/images/t02.png" /></span>不通过</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                    </div>
                    <table class="tablelist">
                        <thead>
                            <tr>
                                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                                <th>序号</th>
                                <th>名称</th>
                                <th>特征特性</th>
                                <th>生长特性</th>
                                <th>概况</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>1</td>
                            <td>三黎鱼</td>
                            <td>三黎鱼，又名鳃鱼 M......</td>
                            <td>目前渔民捕捞三黎鱼主......</td>
                            <td>三黎鱼体扁长，呈长椭......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>2</td>
                            <td>万顷沙过沙香</td>
                            <td>过沙香，又名过山香或......</td>
                            <td>过沙香种植技术与大蕉......</td>
                            <td>过沙香植株假茎高32......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>3</td>
                            <td>广州甜杨桃</td>
                            <td>甜杨桃Averrho......</td>
                            <td>1.繁殖方法。用嫁接......</td>
                            <td>甜杨桃是常绿或半落叶......</td>
                        </tr>    
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>4</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>      
                        </tbody>
                    </table>  
                    <div class="pagin">
                        <div class="message">共<i class="blue">4</i>条记录，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页</div>
                        <ul class="paginList">
                            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                            <li class="paginItem current"><a href="javascript:;">1</a></li>
                            <li class="paginItem "><a href="javascript:;">2</a></li>
                            <li class="paginItem"><a href="javascript:;">3</a></li>
                            <li class="paginItem"><a href="javascript:;">4</a></li>
                            <li class="paginItem"><a href="javascript:;">5</a></li>
                            <li class="paginItem more"><a href="javascript:;">...</a></li>
                            <li class="paginItem"><a href="javascript:;">10</a></li>
                            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                        </ul>
                    </div>    
                </div> 
                <!-- <div id="addzycxDivtab" class="tabson"></div>
                <div id="updatezycxDivtab" class="tabson"></div> -->
            </div>
            <div id="wghjdDiv" class="usual hide">
                <div class="itab">
                    <ul> 
                        <li><a href="#wghjdDivtab" class="selected">水产</a></li>
                        <li><a href="#wghjdDivtab">种植</a></li> 
                        <li><a href="#wghjdDivtab">畜牧</a></li>
                        <!-- <li class="addli hide newtab"><a href="#addwghjdDivtab"><span class='addA'>新增</span></a></li>
                        <li class="updateli hide newtab"><a href="#updatewghjdDivtab"><span class='updateA'>修改</span></a></li>    -->
                    </ul>
                </div>
                <div id="wghjdDivtab" class="tabson">
                    <ul class="prosearch">
                       <li><label>状态：</label><input name="" type="radio" value="" checked="checked" />&nbsp;已检查&nbsp;&nbsp;<input name="" type="radio" value="" />&nbsp;未检查&nbsp;&nbsp;</li>
                       <li><label>名称：</label><a><input name="" type="text" class="scinput" /></a><a><input name="" type="button" class="sure" value="查询"/></a></li>      
                    </ul>
                    <div class="tools">
                        <ul class="toolbar1">
                            <li class="import"><span><img src="resources/images/t01.png" /></span>导入</li>
                            <li class="add"><span><img src="resources/images/t01.png" /></span>添加</li>
                            <li class="update"><span><img src="resources/images/t02.png" /></span>修改</li>
                            <li class="delete"><span><img src="resources/images/t03.png" /></span>删除</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                        <ul class="toolbar2 hide">
                            <li class="pass"><span><img src="resources/images/t01.png" /></span>通过</li>
                            <li class="dispass"><span><img src="resources/images/t02.png" /></span>不通过</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                    </div>
                    <table class="tablelist">
                        <thead>
                            <tr>
                                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                                <th>序号</th>
                                <th>名称</th>
                                <th>特征特性</th>
                                <th>生长特性</th>
                                <th>概况</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>1</td>
                            <td>三黎鱼</td>
                            <td>三黎鱼，又名鳃鱼 M......</td>
                            <td>目前渔民捕捞三黎鱼主......</td>
                            <td>三黎鱼体扁长，呈长椭......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>2</td>
                            <td>万顷沙过沙香</td>
                            <td>过沙香，又名过山香或......</td>
                            <td>过沙香种植技术与大蕉......</td>
                            <td>过沙香植株假茎高32......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>3</td>
                            <td>广州甜杨桃</td>
                            <td>甜杨桃Averrho......</td>
                            <td>1.繁殖方法。用嫁接......</td>
                            <td>甜杨桃是常绿或半落叶......</td>
                        </tr>    
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>4</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>      
                        </tbody>
                    </table>  
                    <div class="pagin">
                        <div class="message">共<i class="blue">4</i>条记录，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页</div>
                        <ul class="paginList">
                            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                            <li class="paginItem current"><a href="javascript:;">1</a></li>
                            <li class="paginItem "><a href="javascript:;">2</a></li>
                            <li class="paginItem"><a href="javascript:;">3</a></li>
                            <li class="paginItem"><a href="javascript:;">4</a></li>
                            <li class="paginItem"><a href="javascript:;">5</a></li>
                            <li class="paginItem more"><a href="javascript:;">...</a></li>
                            <li class="paginItem"><a href="javascript:;">10</a></li>
                            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                        </ul>
                    </div>    
                </div>
                <!-- <div id="addwghjdDivtab" class="tabson"></div>
                <div id="updatewghjdDivtab" class="tabson"></div>  -->
            </div>
            <div id="wghcpDiv" class="usual hide">
                <div class="itab">
                    <ul> 
                        <li><a href="#wghcpDivtab" class="selected">水产</a></li>
                        <li><a href="#wghcpDivtab">种植</a></li> 
                        <li><a href="#wghcpDivtab">畜牧</a></li>
                        <!-- <li class="addli hide newtab"><a href="#addwghcpDivtab"><span class='addA'>新增</span></a></li>
                        <li class="updateli hide newtab"><a href="#updatewghcpDivtab"><span class='updateA'>修改</span></a></li>    -->
                    </ul>
                </div>
                <div id="wghcpDivtab" class="tabson">
                    <ul class="prosearch">
                       <li><label>状态：</label><input name="" type="radio" value="" checked="checked" />&nbsp;已检查&nbsp;&nbsp;<input name="" type="radio" value="" />&nbsp;未检查&nbsp;&nbsp;</li>
                       <li><label>名称：</label><a><input name="" type="text" class="scinput" /></a><a><input name="" type="button" class="sure" value="查询"/></a></li>      
                    </ul>
                    <div class="tools">
                        <ul class="toolbar1">
                            <li class="import"><span><img src="resources/images/t01.png" /></span>导入</li>
                            <li class="add"><span><img src="resources/images/t01.png" /></span>添加</li>
                            <li class="update"><span><img src="resources/images/t02.png" /></span>修改</li>
                            <li class="delete"><span><img src="resources/images/t03.png" /></span>删除</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                        <ul class="toolbar2 hide">
                            <li class="pass"><span><img src="resources/images/t01.png" /></span>通过</li>
                            <li class="dispass"><span><img src="resources/images/t02.png" /></span>不通过</li>
                            <li class="refresh"><span><img src="resources/images/t04.png" /></span>刷新</li>
                        </ul>
                    </div>
                    <table class="tablelist">
                        <thead>
                            <tr>
                                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                                <th>序号</th>
                                <th>名称</th>
                                <th>特征特性</th>
                                <th>生长特性</th>
                                <th>概况</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>1</td>
                            <td>三黎鱼</td>
                            <td>三黎鱼，又名鳃鱼 M......</td>
                            <td>目前渔民捕捞三黎鱼主......</td>
                            <td>三黎鱼体扁长，呈长椭......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>2</td>
                            <td>万顷沙过沙香</td>
                            <td>过沙香，又名过山香或......</td>
                            <td>过沙香种植技术与大蕉......</td>
                            <td>过沙香植株假茎高32......</td>
                        </tr>        
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>3</td>
                            <td>广州甜杨桃</td>
                            <td>甜杨桃Averrho......</td>
                            <td>1.繁殖方法。用嫁接......</td>
                            <td>甜杨桃是常绿或半落叶......</td>
                        </tr>    
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>4</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>      
                        </tbody>
                    </table>  
                    <div class="pagin">
                        <div class="message">共<i class="blue">4</i>条记录，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页</div>
                        <ul class="paginList">
                            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                            <li class="paginItem current"><a href="javascript:;">1</a></li>
                            <li class="paginItem "><a href="javascript:;">2</a></li>
                            <li class="paginItem"><a href="javascript:;">3</a></li>
                            <li class="paginItem"><a href="javascript:;">4</a></li>
                            <li class="paginItem"><a href="javascript:;">5</a></li>
                            <li class="paginItem more"><a href="javascript:;">...</a></li>
                            <li class="paginItem"><a href="javascript:;">10</a></li>
                            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                        </ul>
                    </div>    
                </div> 
               <!--  <div id="addwghcpDivtab" class="tabson"></div>
               <div id="updatewghcpDivtab" class="tabson"></div> -->
            </div>
        </div>
        <div class="tip" id="t_add">
            <div class="tiptop"><span>添加数据</span><a></a></div>        
            <div class="tipinfo">
            <!-- <span><img src="resources/images/ticon.png" /></span> -->
                <div class="tipright">
                    <!-- <p>是否确认对信息的修改 ？</p>
                    <cite>如果是请点击确定按钮 ，否则请点取消。</cite> -->
                    <form>
                        <table>
                            <tr>
                                <td>企业名称：</td>
                                <td><input type="text"></input><span>*</span></td>
                                <td>企业编号：</td>
                                <td><input type="text"></input><span>*</span></td>
                            </tr>
                            <tr>
                                <td>年产值：</td>
                                <td><input type="text"></input></td>
                                <td>单位性质：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>负责人：</td>
                                <td><input type="text"></input></td>
                                <td>经营范围：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>固定资产：</td>
                                <td><input type="text"></input></td>
                                <td>员工人数：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>联系人：</td>
                                <td><input type="text"></input></td>
                                <td>利税：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>登记年份：</td>
                                <td><input type="text"></input></td>
                                <td>传真：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>电话：</td>
                                <td><input type="text"></input></td>
                                <td>电子邮件：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>邮政编码：</td>
                                <td><input type="text"></input></td>
                                <td>区域：</td>
                                <td><select><option>广州市</option></select></td>
                            </tr>
                            <tr>
                                <td>地址：</td>
                                <td colspan="3"><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>简介：</td>
                                <td colspan="3"><textarea cols="65" rows="2"></textarea></td>
                            </tr>
                            <tr>
                                <td>图片展示：</td>
                                <td colspan="3"><input type="file"></input></td>
                            </tr>
                            <tr>
                                <td>单位情况介绍：</td>
                                <td colspan="3"><textarea cols="65" rows="5"></textarea></td>
                            </tr>
                        </table>
                    </form>
                    <span>请注意：“*”为必填项。</span>
                </div>
            </div>
            <div class="tipbtn">
                <input name="" type="button"  class="sure" value="确定" />&nbsp;
                <input name="" type="button"  class="cancel" value="取消" />
            </div>   
        </div>
        <div class="tip" id="t_update">
            <div class="tiptop"><span>修改数据</span><a></a></div>
            <div class="tipinfo">
            <!-- <span><img src="resources/images/ticon.png" /></span> -->
                <div class="tipright">
                    <!-- <p>是否确认对信息的修改 ？</p>
                    <cite>如果是请点击确定按钮 ，否则请点取消。</cite> -->
                    <form>
                        <table>
                            <tr>
                                <td>企业名称：</td>
                                <td><input type="text"></input><span>*</span></td>
                                <td>企业编号：</td>
                                <td><input type="text"></input><span>*</span></td>
                            </tr>
                            <tr>
                                <td>年产值：</td>
                                <td><input type="text"></input></td>
                                <td>单位性质：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>负责人：</td>
                                <td><input type="text"></input></td>
                                <td>经营范围：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>固定资产：</td>
                                <td><input type="text"></input></td>
                                <td>员工人数：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>联系人：</td>
                                <td><input type="text"></input></td>
                                <td>利税：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>登记年份：</td>
                                <td><input type="text"></input></td>
                                <td>传真：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>电话：</td>
                                <td><input type="text"></input></td>
                                <td>电子邮件：</td>
                                <td><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>邮政编码：</td>
                                <td><input type="text"></input></td>
                                <td>区域：</td>
                                <td><select><option>广州市</option></select></td>
                            </tr>
                            <tr>
                                <td>地址：</td>
                                <td colspan="3"><input type="text"></input></td>
                            </tr>
                            <tr>
                                <td>简介：</td>
                                <td colspan="3"><textarea cols="65" rows="2"></textarea></td>
                            </tr>
                            <tr>
                                <td>图片展示：</td>
                                <td colspan="3"><input type="file"></input></td>
                            </tr>
                            <tr>
                                <td>单位情况介绍：</td>
                                <td colspan="3"><textarea cols="65" rows="5"></textarea></td>
                            </tr>
                        </table>
                    </form>
                    <span>请注意：“*”为必填项。</span>
                </div>
            </div>        
            <div class="tipbtn">
                <input name="" type="button"  class="sure" value="确定" />&nbsp;
                <input name="" type="button"  class="cancel" value="取消" />
            </div>  
        </div>
        <div class="tip" id="t_delete">
            <div class="tiptop"><span>删除数据</span><a></a></div>            
            <div class="tipinfo">
            <!-- <span></span> -->
                <div class="tipright">
                    <p>是否删除选中的数据 ？</p>
                    <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
                </div>
            </div>     
            <div class="tipbtn">
                <input name="" type="button"  class="sure" value="确定" />&nbsp;
                <input name="" type="button"  class="cancel" value="取消" />
            </div>      
        </div>
    </div>

    <script type="text/javascript">
      $("#xdnyDiv ul").idTabs();  
      $("#njztDiv ul").idTabs();
      $("#zycxDiv ul").idTabs();  
      $("#wghjdDiv ul").idTabs();
      $("#wghcpDiv ul").idTabs();  

      $('.tablelist tbody tr:odd').addClass('odd');
      $(".add").click(function(){
        $("#t_add").fadeIn(200);
      })
      $(".update").click(function(){
        $("#t_update").fadeIn(200);
      })
      $(".delete").click(function(){
        $("#t_delete").fadeIn(200);
      })
      $(".refresh").click(function(){

      })
      $(".sure").click(function(){
        $("#t_add").fadeOut(100);
        $("#t_update").fadeOut(100);
        $("#t_delete").fadeOut(100);
      });
      $(".cancel").click(function(){
        $("#t_add").fadeOut(100);
        $("#t_update").fadeOut(100);
        $("#t_delete").fadeOut(100);
      });
      $(".tiptop a").click(function(){
        $("#t_add").fadeOut(200);
        $("#t_update").fadeOut(200);
        $("#t_delete").fadeOut(200);
        });

      $(".menuson .header").click(function(){
        $("div[class='usual']").addClass("hide");
        var headerid = $(this).attr("name");
        $("div[id="+headerid+"Div"+"]").removeClass("hide");
        if($(this).attr("class")==="header data2"){
            $(".toolbar1").addClass("hide");
            $(".toolbar2").removeClass("hide");
        }
        else{
            $(".toolbar1").removeClass("hide");
            $(".toolbar2").addClass("hide");
        }
      })

      $(".add").click(function(){
        //$(".newtab").addClass("hide");
        $(".addli").removeClass("hide");
        $(".addA").click();
      })

      $(".update").click(function(){
        //$(".newtab").addClass("hide");
        $(".updateli").removeClass("hide");
        $(".updateA").click();
      })
    </script>
</body>
</html>
