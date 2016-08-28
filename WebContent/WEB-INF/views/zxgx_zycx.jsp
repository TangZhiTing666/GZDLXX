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
                        <div class="header" id="yszy" name="yszy">
                            <cite></cite>
                            <a href="#">野生资源</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="nzpz" name="nzpz">
                            <cite></cite>
                            <a href="#">农作品种</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="xmzy" name="xmzy">
                            <cite></cite>
                            <a href="#">畜牧资源</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="sczy" name="sczy">
                            <cite></cite>
                            <a href="#">水产资源</a>
                            <i></i>
                        </div>
                    </li>
                    <li>
                        <div class="header" id="nytc" name="nytc">
                            <cite></cite>
                            <a href="#">农业特产</a>
                            <i></i>
                        </div>
                    </li>
                     <li>
                         <div class="header" id="mycp" name="mycp">
                             <cite></cite>
                             <a href="#">名优产品</a>
                             <i></i>
                         </div>
                     </li>
                </ul>   
            </dd>      
        </dl>
    </div>
    <div class="rightDiv">
        <div class="formbody">
            <div id="yszyDiv" class="usual">
                <!-- <ul class="prosearch">
                   <li><label>状态：</label><input name="" type="radio" value="" checked="checked" />&nbsp;已检查&nbsp;&nbsp;<input name="" type="radio" value="" />&nbsp;未检查&nbsp;&nbsp;</li>
                   <li><label>名称：</label><a><input name="" type="text" class="scinput" /></a><a><input name="" type="button" class="sure" value="查询"/></a></li>
                </ul> -->
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">野生资源</h1></div>
                <div class="tools" style="margin-left: 5%">
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>选择：</label><a><select class="scinput"><option>植物资源</option><option>动物资源</option></select></a></li>
                        <li style="background: none;border:none;"><label>名称：</label><a><input name="" type="text" class="scinput" /></a></li>
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
            <div id="nzpzDiv" class="usual hide">
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">农作品种</h1></div>
                <div class="tools" style="margin-left: 20%">
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>名称：</label><a><input name="" type="text" class="scinput" /></a></li>
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
            <div id="xmzyDiv" class="usual hide">
                <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">畜牧资源</h1></div>
                <div class="tools" style="margin-left: 5%">
                    <ul class="toolbar1">
                        <li style="background: none;border:none;"><label>选择：</label><a><select class="scinput"><option>畜牧品种资源</option><option>兽病</option><option>兽药和添加剂</option></select></a></li>
                        <li style="background: none;border:none;"><label>名称：</label><a><input name="" type="text" class="scinput" /></a></li>
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

    <div id="sczyDiv" class="usual hide">
    <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">水产资源</h1></div>
    <div class="tools" style="margin-left: 5%">
    <ul class="toolbar1">
    <li style="background: none;border:none;"><label>选择：</label><a><select class="scinput"><option>水产资源</option><option>水产病毒防治</option></select></a></li>
    <li style="background: none;border:none;"><label>名称：</label><a><input name="" type="text" class="scinput" /></a></li>
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


    <div id="nytcDiv" class="usual hide">
    <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">农业特产</h1></div>
    <div class="tools" style="margin-left: 20%">
    <ul class="toolbar1">
    <li style="background: none;border:none;"><label>名称：</label><a><input name="" type="text" class="scinput" /></a></li>
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

     <div id="mycpDiv" class="usual hide">
     <div style="width: 100%;height: 50px;"><h1 style="font-size: 25px;line-height: 50px;text-align: center;color: #6BD477;">名优产品</h1></div>
     <div class="tools" style="margin-left: 20%">
     <ul class="toolbar1">
     <li style="background: none;border:none;"><label>名称：</label><a><input name="" type="text" class="scinput" /></a></li>
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
                        <table id="yszyAddTb">
                            <tr>
                                <td>名称：</td>
                                <td><input type="text"><span>*</span></td>
                            </tr>
                            <tr>
                                <td>图片展示：</td>
                                <td><input type="file"></td>
                            </tr>

                            <tr>
                                <td>简介：</td>
                                <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                            </tr>
                        </table>
                         <table id="nzpzAddTb" class="hide">
                             <tr>
                                 <td>名称：</td>
                                 <td><input type="text"><span>*</span></td>
                             </tr>
                             <tr>
                                 <td>别名：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>拉丁名：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>生长特性：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>分布：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>经济价值：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>图片展示：</td>
                                 <td><input type="file"></td>
                             </tr>
                             <tr>
                                 <td>特点：</td>
                                 <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                             </tr>
                         </table>
                         <table id="xmzyAddTb" class="hide">
                             <tr>
                                 <td>名称：</td>
                                 <td><input type="text"><span>*</span></td>
                             </tr>
                             <tr>
                                 <td>图片展示：</td>
                                 <td><input type="file"></td>
                             </tr>
                             <tr>
                                 <td>简介：</td>
                                 <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                             </tr>
                         </table>
                         <table id="sczyAddTb" class="hide">
                             <tr>
                                 <td>名称：</td>
                                 <td><input type="text"><span>*</span></td>
                             </tr>
                             <tr>
                                 <td>图片展示：</td>
                                 <td><input type="file"></td>
                             </tr>
                             <tr>
                                 <td>简介：</td>
                                 <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                             </tr>
                         </table>
                         <table id="nytcAddTb" class="hide">
                             <tr>
                                 <td>名称：</td>
                                 <td><input type="text"><span>*</span></td>
                             </tr>
                             <tr>
                                 <td>特征特性：</td>
                                 <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                             </tr>
                             <tr>
                                 <td>种养特点：</td>
                                 <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                             </tr>
                             <tr>
                                 <td>图片展示：</td>
                                 <td><input type="file"></td>
                             </tr>
                             <tr>
                                 <td>概况：</td>
                                 <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                             </tr>
                         </table>
                         <table id="mycpAddTb" class="hide">
                             <tr>
                                 <td>产品名称：</td>
                                 <td><input type="text"><span>*</span></td>
                             </tr>
                             <tr>
                                 <td>产品品牌：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>品种类型：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>生产单位：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>单位联系方式：</td>
                                 <td><input type="text"></td>
                             </tr>
                             <tr>
                                 <td>图片展示：</td>
                                 <td><input type="file"></td>
                             </tr>
                             <tr>
                                 <td>产品描述：</td>
                                 <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
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
                         <table id="yszyUpdTb">
                         <tr>
                         <td>名称：</td>
                         <td><input type="text"><span>*</span></td>
                         </tr>
                         <tr>
                         <td>图片展示：</td>
                         <td><input type="file"></td>
                         </tr>

                         <tr>
                         <td>简介：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                         </tr>
                         </table>
                         <table id="nzpzUpdTb" class="hide">
                         <tr>
                         <td>名称：</td>
                         <td><input type="text"><span>*</span></td>
                         </tr>
                         <tr>
                         <td>别名：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>拉丁名：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>生长特性：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>分布：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>经济价值：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>图片展示：</td>
                         <td><input type="file"></td>
                         </tr>
                         <tr>
                         <td>特点：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                         </tr>
                         </table>
                         <table id="xmzyUpdTb" class="hide">
                         <tr>
                         <td>名称：</td>
                         <td><input type="text"><span>*</span></td>
                         </tr>
                         <tr>
                         <td>图片展示：</td>
                         <td><input type="file"></td>
                         </tr>
                         <tr>
                         <td>简介：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                         </tr>
                         </table>
                         <table id="sczyUpdTb" class="hide">
                         <tr>
                         <td>名称：</td>
                         <td><input type="text"><span>*</span></td>
                         </tr>
                         <tr>
                         <td>图片展示：</td>
                         <td><input type="file"></td>
                         </tr>
                         <tr>
                         <td>简介：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                         </tr>
                         </table>
                         <table id="nytcUpdTb" class="hide">
                         <tr>
                         <td>名称：</td>
                         <td><input type="text"><span>*</span></td>
                         </tr>
                         <tr>
                         <td>特征特性：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                         </tr>
                         <tr>
                         <td>种养特点：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                         </tr>
                         <tr>
                         <td>图片展示：</td>
                         <td><input type="file"></td>
                         </tr>
                         <tr>
                         <td>概况：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
                         </tr>
                         </table>
                         <table id="mycpUpdTb" class="hide">
                         <tr>
                         <td>产品名称：</td>
                         <td><input type="text"><span>*</span></td>
                         </tr>
                         <tr>
                         <td>产品品牌：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>品种类型：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>生产单位：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>单位联系方式：</td>
                         <td><input type="text"></td>
                         </tr>
                         <tr>
                         <td>图片展示：</td>
                         <td><input type="file"></td>
                         </tr>
                         <tr>
                         <td>产品描述：</td>
                         <td><textarea cols="65" rows="5" style="resize: none;"></textarea></td>
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

        $("#yszyDiv .tablelist th input[type='checkbox']").click(function(){
            if($(this).is(":checked")){
                $("#yszyDiv .tablelist td input").each(function(){
                    this.checked = true;
                })
            }
            else{
                $("#yszyDiv .tablelist td input").each(function(){
                    this.checked = false;
                })
            }
        })

        $("#yszyDiv .tablelist td input[type='checkbox']").click(function(){
            if($("#yszyDiv .tablelist td input:checked").length==10){
                $("#yszyDiv .tablelist th input[type='checkbox']").each(function(){
                    this.checked = true;
                })
            }
            else{
                $("#yszyDiv .tablelist th input[type='checkbox']").each(function(){
                    this.checked = false;
                })
            }
        })

    $("#nzpzDiv .tablelist th input[type='checkbox']").click(function(){
        if($(this).is(":checked")){
            $("#nzpzDiv .tablelist td input").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#nzpzDiv .tablelist td input").each(function(){
                this.checked = false;
            })
        }
    })

    $("#nzpzDiv .tablelist td input[type='checkbox']").click(function(){
        if($("#nzpzDiv .tablelist td input:checked").length==10){
            $("#nzpzDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#nzpzDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
            })
        }
    })
    $("#xmzyDiv .tablelist th input[type='checkbox']").click(function(){
        if($(this).is(":checked")){
            $("#xmzyDiv .tablelist td input").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#xmzyDiv .tablelist td input").each(function(){
                this.checked = false;
            })
        }
    })

    $("#xmzyDiv .tablelist td input[type='checkbox']").click(function(){
        if($("#xmzyDiv .tablelist td input:checked").length==10){
            $("#xmzyDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
            })
        }
        else{
            $("#xmzyDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
            })
        }
    })

     $("#sczyDiv .tablelist th input[type='checkbox']").click(function(){
         if($(this).is(":checked")){
             $("#sczyDiv .tablelist td input").each(function(){
                this.checked = true;
             })
         }
         else{
             $("#sczyDiv .tablelist td input").each(function(){
                this.checked = false;
             })
         }
     })

     $("#sczyDiv .tablelist td input[type='checkbox']").click(function(){
         if($("#sczyDiv .tablelist td input:checked").length==10){
             $("#sczyDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
             })
         }
         else{
             $("#sczyDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
             })
         }
     })


     $("#nytcDiv .tablelist th input[type='checkbox']").click(function(){
         if($(this).is(":checked")){
             $("#nytcDiv .tablelist td input").each(function(){
                this.checked = true;
             })
         }
         else{
             $("#nytcDiv .tablelist td input").each(function(){
                this.checked = false;
             })
         }
     })

     $("#nytcDiv .tablelist td input[type='checkbox']").click(function(){
         if($("#nytcDiv .tablelist td input:checked").length==10){
             $("#nytcDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
             })
         }
         else{
             $("#nytcDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
             })
         }
     })


     $("#mycpDiv .tablelist th input[type='checkbox']").click(function(){
         if($(this).is(":checked")){
             $("#mycpDiv .tablelist td input").each(function(){
                this.checked = true;
             })
         }
         else{
             $("#mycpDiv .tablelist td input").each(function(){
                this.checked = false;
             })
         }
     })

     $("#mycpDiv .tablelist td input[type='checkbox']").click(function(){
         if($("#mycpDiv .tablelist td input:checked").length==10){
             $("#mycpDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = true;
             })
         }
         else{
             $("#mycpDiv .tablelist th input[type='checkbox']").each(function(){
                this.checked = false;
             })
         }
     })
    </script>
</body>
</html>
