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
        .leftDiv{width: 15% !important;}
        .rightDiv{width: 85% !important;}
        .tipright input,.tipright select{width: 70% !important}
    </style>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="js/select-ui.min.js"></script>    
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

    /*$('.title').click(function(){
        var $ul = $(this).next('ul');
        $('dd').find('.menuson').slideUp();
        if($ul.is(':visible')){
            $(this).next('.menuson').slideUp();
        }else{
            $(this).next('.menuson').slideDown();
        }
    });*/
    })  
    </script>
</head>
<body>
    <div class="leftDiv">
        <dl class="leftmenu">                  
            <dd>
                <div class="title">
                    <span><img src="images/leftico02.png" /></span>数据录入
                </div>
                <ul class="menuson" style="display: block;">
                    <li class="active">
                        <div class="header" id="nyjb" name="nyjb">
                            <cite></cite>
                            <a href="#">农业基本情况</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="nysr" name="nysr">
                            <cite></cite>
                            <a href="#">农业收入情况</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="xmy" name="xmy">
                            <cite></cite>
                            <a href="#">畜牧业渔业基本情况</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="nytr" name="nytr">
                            <cite></cite>
                            <a href="#">农业主要投入</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="xzcz" name="xzcz">
                            <cite></cite>
                            <a href="#">农业及乡镇企业产值</a>
                            <i></i>
                        </div>
                    </li>
                </ul>   
            </dd>      
        </dl>
    </div>
    <div class="rightDiv">
        <div class="formbody">
            <div id="nyjbDiv" class="usual">
                <!-- <ul class="prosearch">
                   <li><label>状态：</label><input name="" type="radio" value="" checked="checked" />&nbsp;已检查&nbsp;&nbsp;<input name="" type="radio" value="" />&nbsp;未检查&nbsp;&nbsp;</li>
                   <li><label>名称：</label><a><input name="" type="text" class="scinput" /></a><a><input name="" type="button" class="sure" value="查询"/></a></li>
                </ul> -->
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">农业基本情况</h1></div>
                <div class="tools" style="margin-left: 5%">   
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>统计年份选择：</label><a><select class="scinput"><option>1998</option></select></a></li>
                        <li style="background: none;border:none;"><label>区域选择：</label><a><select class="scinput"><option>广州市</option></select></a></li>
                        <li style="background: none;border:none;"><a><input name="" type="button" class="sure" value="查询"/></a></li>
                        <li class="import"><span><img src="images/t01.png" /></span>导入</li>
                        <li class="add"><span><img src="images/t01.png" /></span>添加</li>
                        <li class="update"><span><img src="images/t02.png" /></span>修改</li>
                        <li class="delete"><span><img src="images/t03.png" /></span>删除</li>
                        <li class="export"><span><img src="images/t04.png" /></span>导出</li>
                    </ul>                    
                </div>
                <table class="tablelist">
                    <thead>
                        <tr>
                            <th><input name="" type="checkbox" value=""/></th>
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
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>5</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr> 
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>6</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr> 
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>7</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr> 
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>8</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr> 
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>9</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr> 
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>10</td>
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
            <div id="nysrDiv" class="usual hide">
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">农业收入情况</h1></div>
                <div class="tools" style="margin-left: 5%">
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>统计年份选择：</label><a><select class="scinput"><option>1998</option></select></a></li>
                        <li style="background: none;border:none;"><label>区域选择：</label><a><select class="scinput"><option>广州市</option></select></a></li>
                        <li style="background: none;border:none;"><a><input name="" type="button" class="sure" value="查询"/></a></li>
                        <li class="import"><span><img src="images/t01.png" /></span>导入</li>
                        <li class="add"><span><img src="images/t01.png" /></span>添加</li>
                        <li class="update"><span><img src="images/t02.png" /></span>修改</li>
                        <li class="delete"><span><img src="images/t03.png" /></span>删除</li>
                        <li class="export"><span><img src="images/t04.png" /></span>导出</li>
                    </ul>
                </div>
                <table class="tablelist">
                    <thead>
                        <tr>
                            <th><input name="" type="checkbox" value=""/></th>
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
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>5</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>6</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>7</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>8</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>9</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>10</td>
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
            <div id="xmyDiv" class="usual hide">
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">畜牧业渔业基本情况</h1></div>
                <div class="tools" style="margin-left: 5%">
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>统计年份选择：</label><a><select class="scinput"><option>1998</option></select></a></li>
                        <li style="background: none;border:none;"><label>区域选择：</label><a><select class="scinput"><option>广州市</option></select></a></li>
                        <li style="background: none;border:none;"><a><input name="" type="button" class="sure" value="查询"/></a></li>
                        <li class="import"><span><img src="images/t01.png" /></span>导入</li>
                        <li class="add"><span><img src="images/t01.png" /></span>添加</li>
                        <li class="update"><span><img src="images/t02.png" /></span>修改</li>
                        <li class="delete"><span><img src="images/t03.png" /></span>删除</li>
                        <li class="export"><span><img src="images/t04.png" /></span>导出</li>
                    </ul>
                </div>
                <table class="tablelist">
                    <thead>
                        <tr>
                            <th><input name="" type="checkbox" value=""/></th>
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
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>5</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>6</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>7</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>8</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>9</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>10</td>
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

            <div id="nytrDiv" class="usual hide">
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">农业主要投入</h1></div>
                <div class="tools" style="margin-left: 5%">
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>统计年份选择：</label><a><select class="scinput"><option>1998</option></select></a></li>
                        <li style="background: none;border:none;"><label>区域选择：</label><a><select class="scinput"><option>广州市</option></select></a></li>
                        <li style="background: none;border:none;"><a><input name="" type="button" class="sure" value="查询"/></a></li>
                        <li class="import"><span><img src="images/t01.png" /></span>导入</li>
                        <li class="add"><span><img src="images/t01.png" /></span>添加</li>
                        <li class="update"><span><img src="images/t02.png" /></span>修改</li>
                        <li class="delete"><span><img src="images/t03.png" /></span>删除</li>
                        <li class="export"><span><img src="images/t04.png" /></span>导出</li>
                    </ul>
                </div>
                <table class="tablelist">
                    <thead>
                        <tr>
                            <th><input name="" type="checkbox" value=""/></th>
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
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>5</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>6</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>7</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>8</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>9</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>10</td>
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


            <div id="xzczDiv" class="usual hide">
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">农业及乡镇企业产值</h1></div>
                <div class="tools" style="margin-left: 5%">
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>统计年份选择：</label><a><select class="scinput"><option>1998</option></select></a></li>
                        <li style="background: none;border:none;"><label>区域选择：</label><a><select class="scinput"><option>广州市</option></select></a></li>
                        <li style="background: none;border:none;"><a><input name="" type="button" class="sure" value="查询"/></a></li>
                        <li class="import"><span><img src="images/t01.png" /></span>导入</li>
                        <li class="add"><span><img src="images/t01.png" /></span>添加</li>
                        <li class="update"><span><img src="images/t02.png" /></span>修改</li>
                        <li class="delete"><span><img src="images/t03.png" /></span>删除</li>
                        <li class="export"><span><img src="images/t04.png" /></span>导出</li>
                    </ul>
                </div>
                <table class="tablelist">
                    <thead>
                        <tr>
                            <th><input name="" type="checkbox" value=""/></th>
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
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>5</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>6</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>7</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>8</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>9</td>
                            <td>广州（木黎）檬</td>
                            <td>（木黎）檬Citr......</td>
                            <td>1.繁殖方法：实......</td>
                            <td>（木黎）檬系矮生灌木......</td>
                        </tr>
                        <tr>
                            <td><input name="" type="checkbox" value="" /></td>
                            <td>10</td>
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
        </div>
        <div class="tip" id="t_add">
            <div class="tiptop"><span>添加数据</span><a></a></div>        
            <div class="tipinfo">
            <!-- <span><img src="images/ticon.png" /></span> -->
                <div class="tipright">
                    <!-- <p>是否确认对信息的修改 ？</p>
                    <cite>如果是请点击确定按钮 ，否则请点取消。</cite> -->
                    <form>
                        <table id="nyjbAddTb">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>总人口：</td>
                                <td><input type="text">人</td>
                                <td>农业人口：</td>
                                <td><input type="text">人</td>
                            </tr>
                            <tr>
                                <td>总户数：</td>
                                <td><input type="text">户</td>
                                <td>农村劳动力：</td>
                                <td><input type="text">人</td>
                            </tr>
                            <tr>
                                <td>耕地面积：</td>
                                <td><input type="text">公顷</td>
                                <td>水田面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>旱地面积：</td>
                                <td><input type="text">公顷</td>
                                <td>财政收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>财政支出：</td>
                                <td><input type="text">万元</td>
                                <td>第一产业增加值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>农村社会总产值：</td>
                                <td><input type="text">万元</td>
                                <td>当年新增耕地面积：</td>
                                <td><input type="text">亩</td>
                            </tr>
                            <tr>
                                <td>当年减少耕地面积：</td>
                                <td><input type="text">亩</td>
                                <td>土地面积：</td>
                                <td><input type="text">平方公里</td>
                            </tr>
                            <tr>
                                <td>国内生产总值：</td>
                                <td><input type="text">万元</td>
                                <td>人均国内生产总值：</td>
                                <td><input type="text">元</td>
                            </tr>
                        </table>
                        <table id="nysrAddTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>农业收入：</td>
                                <td><input type="text">万元</td>
                                <td>种植业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>林业收入：</td>
                                <td><input type="text">万元</td>
                                <td>牧业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>其他农业收入：</td>
                                <td><input type="text">万元</td>
                                <td>工业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>建筑业收入：</td>
                                <td><input type="text">万元</td>
                                <td>运输业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>商饮业收入：</td>
                                <td><input type="text">万元</td>
                                <td>服务业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>其他收入：</td>
                                <td><input type="text">万元</td>
                                <td>净收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>农民人均所得：</td>
                                <td><input type="text">万元</td>
                                <td>农村经济总收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>渔业收入：</td>
                                <td><input type="text">万元</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                        <table id="xmyAddTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>海水养殖面积：</td>
                                <td><input type="text">公顷</td>
                                <td>水产品产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>淡水养殖产量：</td>
                                <td><input type="text">吨</td>
                                <td>淡水产品产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>海水捕获产量：</td>
                                <td><input type="text">吨</td>
                                <td>海水产品产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>塘鱼产量：</td>
                                <td><input type="text">吨</td>
                                <td>海水鱼产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>存栏数：</td>
                                <td><input type="text">头</td>
                                <td>大牲畜存栏数：</td>
                                <td><input type="text">头</td>
                            </tr>
                            <tr>
                                <td>牛存栏数：</td>
                                <td><input type="text">头</td>
                                <td>猪存栏数：</td>
                                <td><input type="text">头</td>
                            </tr>
                            <tr>
                                <td>羊存栏数：</td>
                                <td><input type="text">头</td>
                                <td>猪出栏数：</td>
                                <td><input type="text">头</td>
                            </tr>
                            <tr>
                                <td>肉类总产值：</td>
                                <td><input type="text">万元</td>
                                <td>猪牛羊肉产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>牛奶产量：</td>
                                <td><input type="text">吨</td>
                                <td>禽类产量</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>淡水养殖面积</td>
                                <td><input type="text">公顷</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                        <table id="nytrAddTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>农药用量：</td>
                                <td><input type="text">吨</td>
                                <td>农村小水电站数：</td>
                                <td><input type="text">座</td>
                            </tr>
                            <tr>
                                <td>小水电装机容量：</td>
                                <td><input type="text">千瓦</td>
                                <td>旱涝保收面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>化肥用量（折纯）：</td>
                                <td><input type="text">吨</td>
                                <td>农机总动力：</td>
                                <td><input type="text">千瓦</td>
                            </tr>
                            <tr>
                                <td>机耕面积：</td>
                                <td><input type="text">公顷</td>
                                <td>有效灌溉面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>农村用电量：</td>
                                <td><input type="text">万千瓦时</td>
                                <td>受灾面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>成灾面积：</td>
                                <td><input type="text">公顷</td>
                                <td></td>
                                <td></td>
                            </tr>
                            
                        </table>
                        <table id="xzczAddTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>乡镇企业职工人数：</td>
                                <td><input type="text">人</td>
                                <td>乡镇企业数：</td>
                                <td><input type="text">家</td>
                            </tr>
                            <tr>
                                <td>乡镇企业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>副业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>农业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>种植业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>工业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>建筑业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>交通运输业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>商饮业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>林业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>牧业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>渔业总产值：</td>
                                <td><input type="text">万元</td>
                                <td></td>
                                <td></td>
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
            <!-- <span><img src="images/ticon.png" /></span> -->
                <div class="tipright">
                    <!-- <p>是否确认对信息的修改 ？</p>
                    <cite>如果是请点击确定按钮 ，否则请点取消。</cite> -->
                    <form>
                        <table id="nyjbUpdTb">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>总人口：</td>
                                <td><input type="text">人</td>
                                <td>农业人口：</td>
                                <td><input type="text">人</td>
                            </tr>
                            <tr>
                                <td>总户数：</td>
                                <td><input type="text">户</td>
                                <td>农村劳动力：</td>
                                <td><input type="text">人</td>
                            </tr>
                            <tr>
                                <td>耕地面积：</td>
                                <td><input type="text">公顷</td>
                                <td>水田面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>旱地面积：</td>
                                <td><input type="text">公顷</td>
                                <td>财政收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>财政支出：</td>
                                <td><input type="text">万元</td>
                                <td>第一产业增加值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>农村社会总产值：</td>
                                <td><input type="text">万元</td>
                                <td>当年新增耕地面积：</td>
                                <td><input type="text">亩</td>
                            </tr>
                            <tr>
                                <td>当年减少耕地面积：</td>
                                <td><input type="text">亩</td>
                                <td>土地面积：</td>
                                <td><input type="text">平方公里</td>
                            </tr>
                            <tr>
                                <td>国内生产总值：</td>
                                <td><input type="text">万元</td>
                                <td>人均国内生产总值：</td>
                                <td><input type="text">元</td>
                            </tr>
                        </table>
                        <table id="nysrUpdTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>农业收入：</td>
                                <td><input type="text">万元</td>
                                <td>种植业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>林业收入：</td>
                                <td><input type="text">万元</td>
                                <td>牧业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>其他农业收入：</td>
                                <td><input type="text">万元</td>
                                <td>工业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>建筑业收入：</td>
                                <td><input type="text">万元</td>
                                <td>运输业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>商饮业收入：</td>
                                <td><input type="text">万元</td>
                                <td>服务业收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>其他收入：</td>
                                <td><input type="text">万元</td>
                                <td>净收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>农民人均所得：</td>
                                <td><input type="text">万元</td>
                                <td>农村经济总收入：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>渔业收入：</td>
                                <td><input type="text">万元</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                        <table id="xmyUpdTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>海水养殖面积：</td>
                                <td><input type="text">公顷</td>
                                <td>水产品产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>淡水养殖产量：</td>
                                <td><input type="text">吨</td>
                                <td>淡水产品产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>海水捕获产量：</td>
                                <td><input type="text">吨</td>
                                <td>海水产品产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>塘鱼产量：</td>
                                <td><input type="text">吨</td>
                                <td>海水鱼产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>存栏数：</td>
                                <td><input type="text">头</td>
                                <td>大牲畜存栏数：</td>
                                <td><input type="text">头</td>
                            </tr>
                            <tr>
                                <td>牛存栏数：</td>
                                <td><input type="text">头</td>
                                <td>猪存栏数：</td>
                                <td><input type="text">头</td>
                            </tr>
                            <tr>
                                <td>羊存栏数：</td>
                                <td><input type="text">头</td>
                                <td>猪出栏数：</td>
                                <td><input type="text">头</td>
                            </tr>
                            <tr>
                                <td>肉类总产值：</td>
                                <td><input type="text">万元</td>
                                <td>猪牛羊肉产量：</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>牛奶产量：</td>
                                <td><input type="text">吨</td>
                                <td>禽类产量</td>
                                <td><input type="text">吨</td>
                            </tr>
                            <tr>
                                <td>淡水养殖面积</td>
                                <td><input type="text">公顷</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                        <table id="nytrUpdTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>农药用量：</td>
                                <td><input type="text">吨</td>
                                <td>农村小水电站数：</td>
                                <td><input type="text">座</td>
                            </tr>
                            <tr>
                                <td>小水电装机容量：</td>
                                <td><input type="text">千瓦</td>
                                <td>旱涝保收面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>化肥用量（折纯）：</td>
                                <td><input type="text">吨</td>
                                <td>农机总动力：</td>
                                <td><input type="text">千瓦</td>
                            </tr>
                            <tr>
                                <td>机耕面积：</td>
                                <td><input type="text">公顷</td>
                                <td>有效灌溉面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>农村用电量：</td>
                                <td><input type="text">万千瓦时</td>
                                <td>受灾面积：</td>
                                <td><input type="text">公顷</td>
                            </tr>
                            <tr>
                                <td>成灾面积：</td>
                                <td><input type="text">公顷</td>
                                <td></td>
                                <td></td>
                            </tr>
                            
                        </table>
                        <table id="xzczUpdTb" class="hide">
                            <tr>
                                <td>区域：</td>
                                <td><select><option>市（地）</option><option>区（县）</option><option>镇（乡）</option></select><select><option>广州市</option></select></td>
                                <td>年份：</td>
                                <td><select><option>1998</option></select><span>*</span></td>
                            </tr>
                            <tr>
                                <td>乡镇企业职工人数：</td>
                                <td><input type="text">人</td>
                                <td>乡镇企业数：</td>
                                <td><input type="text">家</td>
                            </tr>
                            <tr>
                                <td>乡镇企业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>副业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>农业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>种植业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>工业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>建筑业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>交通运输业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>商饮业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>林业总产值：</td>
                                <td><input type="text">万元</td>
                                <td>牧业总产值：</td>
                                <td><input type="text">万元</td>
                            </tr>
                            <tr>
                                <td>渔业总产值：</td>
                                <td><input type="text">万元</td>
                                <td></td>
                                <td></td>
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
        <div class="tip" id="t_delete" style="height:200px;">
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
        <div class="tip" id="t_uchoose" style="height:200px;width:300px;left:40%;">
            <div class="tiptop"><span>提示</span><a></a></div>
            <div class="tipinfo">
            <!-- <span></span> -->
                <div class="tipright">
                    <p style="margin-top:30px;color:red;">请选择一条需修改的数据！</p>
                    <%--<cite>如果是请点击确定按钮 ，否则请点取消。</cite>--%>
                </div>
            </div>
            <%--<div class="tipbtn">--%>
                <%--<input name="" type="button"  class="sure" value="确定" />&nbsp;--%>
                <%--<input name="" type="button"  class="cancel" value="取消" />--%>
            <%--</div>--%>
        </div>
        <div class="tip" id="t_dchoose" style="height:200px;width:300px;left:40%;">
            <div class="tiptop"><span>提示</span><a></a></div>
            <div class="tipinfo">
                <!-- <span></span> -->
                <div class="tipright">
                    <p style="margin-top:30px;color:red;">请选择一条或以上需删除的数据！</p>
                    <%--<cite>如果是请点击确定按钮 ，否则请点取消。</cite>--%>
                </div>
            </div>
            <%--<div class="tipbtn">--%>
            <%--<input name="" type="button"  class="sure" value="确定" />&nbsp;--%>
            <%--<input name="" type="button"  class="cancel" value="取消" />--%>
            <%--</div>--%>
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
            if($(".tablelist td input:checked").length==1){
                $("#t_update").fadeIn(200);
            }
            else{
                $("#t_uchoose").fadeIn(200);
            }

        })
        $(".delete").click(function(){
            if($(".tablelist td input:checked").length>=1){
                $("#t_delete").fadeIn(200);
            }
            else{
                $("#t_dchoose").fadeIn(200);
            }

        })
        $(".export").click(function(){

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
            $("#t_uchoose").fadeOut(200);
            $("#t_dchoose").fadeOut(200);
        });

        $(".menuson .header").click(function(){
            $("#t_add table").addClass("hide");
            $("#t_update table").addClass("hide");
            $("div[class='usual']").addClass("hide");
            var headerid = $(this).attr("name");
            $("div[id="+headerid+"Div"+"]").removeClass("hide");
            $(".tablelist td input").each(function(){
                this.checked = false;
            })
            $("table[id="+headerid+"AddTb"+"]").removeClass("hide");
            $("table[id="+headerid+"UpdTb"+"]").removeClass("hide");
            /*if($(this).attr("class")==="header data2"){
                $(".toolbar1").addClass("hide");
                $(".toolbar2").removeClass("hide");
            }
            else{
                $(".toolbar1").removeClass("hide");
                $(".toolbar2").addClass("hide");
            }*/
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

        $("#nyjbDiv .tablelist th input[type='checkbox']").click(function(){
            if($(this).is(":checked")){
                $("#nyjbDiv .tablelist td input").each(function(){
                    this.checked = true;
                })
            }
            else{
                $("#nyjbDiv .tablelist td input").each(function(){
                    this.checked = false;
                })
            }
        })

        $("#nyjbDiv .tablelist td input[type='checkbox']").click(function(){
            if($("#nyjbDiv .tablelist td input:checked").length==10){
                $("#nyjbDiv .tablelist th input[type='checkbox']").each(function(){
                    this.checked = true;
                })
            }
            else{
                $("#nyjbDiv .tablelist th input[type='checkbox']").each(function(){
                    this.checked = false;
                })
            }
        })

    $("#nysrDiv .tablelist th input[type='checkbox']").click(function(){
        if($(this).is(":checked")){
            $("#nysrDiv .tablelist td input").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#nysrDiv .tablelist td input").each(function(){
                this.checked = false;
            })
        }
    })

    $("#nysrDiv .tablelist td input[type='checkbox']").click(function(){
        if($("#nysrDiv .tablelist td input:checked").length==10){
            $("#nysrDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#nysrDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
            })
        }
    })
    $("#xmyDiv .tablelist th input[type='checkbox']").click(function(){
        if($(this).is(":checked")){
            $("#xmyDiv .tablelist td input").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#xmyDiv .tablelist td input").each(function(){
                this.checked = false;
            })
        }
    })

    $("#xmyDiv .tablelist td input[type='checkbox']").click(function(){
        if($("#xmyDiv .tablelist td input:checked").length==10){
            $("#xmyDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#xmyDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
            })
        }
    })

    $("#nytrDiv .tablelist th input[type='checkbox']").click(function(){
        if($(this).is(":checked")){
            $("#nytrDiv .tablelist td input").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#nytrDiv .tablelist td input").each(function(){
                this.checked = false;
            })
        }
    })

    $("#nytrDiv .tablelist td input[type='checkbox']").click(function(){
        if($("#nytrDiv .tablelist td input:checked").length==10){
            $("#nytrDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#nytrDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
            })
        }
    })

    $("#xzczDiv .tablelist th input[type='checkbox']").click(function(){
        if($(this).is(":checked")){
            $("#xzczDiv .tablelist td input").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#xzczDiv .tablelist td input").each(function(){
                this.checked = false;
            })
        }
    })

    $("#xzczDiv .tablelist td input[type='checkbox']").click(function(){
        if($("#xzczDiv .tablelist td input:checked").length==10){
            $("#xzczDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#xzczDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
            })
        }
    })
    </script>
</body>
</html>
