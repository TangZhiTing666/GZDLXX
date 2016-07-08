<%--
  Created by IntelliJ IDEA.
  User: tzt
  Date: 2016-6-24
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
  <title>用户登录</title>

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" />
  <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
  <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
  <style type="text/css">
    html,body {
      height: 100%;
    }
    .box {
      filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /*  IE */
      background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
      background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
      background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
      background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
      background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);

      margin: 0 auto;
      position: relative;
      width: 100%;
      height: 100%;
    }
    .login-box {
      width: 100%;
      max-width:500px;
      height: 400px;
      position: absolute;
      top: 50%;

      margin-top: -200px;
      /*设置负值，为要定位子盒子的一半高度*/

    }
    @media screen and (min-width:500px){
      .login-box {
        left: 50%;
        /*设置负值，为要定位子盒子的一半宽度*/
        margin-left: -250px;
      }
    }

    .form {
      width: 100%;
      max-width:500px;
      height: 275px;
      margin: 25px auto 0px auto;
      padding-top: 25px;
    }
    .login-content {
      height: 300px;
      width: 100%;
      max-width:500px;
      background-color: rgba(255, 250, 2550, .6);
      float: left;
    }


    .input-group {
      margin: 0px 0px 30px 0px !important;
    }
    .form-control,
    .input-group {
      height: 40px;
    }

    .form-group {
      margin-bottom: 0px !important;
    }
    .login-title {
      padding: 20px 10px;
      background-color: rgba(0, 0, 0, .6);
    }
    .login-title h1 {
      margin-top: 10px !important;
    }
    .login-title small {
      color: #fff;
    }

    .link p {
      line-height: 20px;
      margin-top: 30px;
    }
    .btn-sm {
      padding: 8px 24px !important;
      font-size: 16px !important;
    }
    .error{
      color:red;
    }
  </style>


</head>
<script>
  $.validator.setDefaults({
    submitHandler: function() {
      form.submit();
      alert("提交事件!");
    }
  });

  $().ready(function() {
    // 提交时验证表单
    var validator = $("#commentForm").validate({
      errorPlacement: function(error, element) {
        // Append error within linked label
        $( element )
                .closest( "form" )
                .find( "label[for='" + element.attr( "id" ) + "']" )
                .append( error );
      },
      errorElement: "span",
      messages: {
        mobile: {
          required: "请输入手机号",
          minlength: "手机号必须为11位",
          maxlength: "手机号必须为11位",
          number: " 必须为数字"
        },
        password: {
          required: " 请输入密码",
          minlength: " 字母不能少于 6 位且不能大于 16 位",
          maxlength: " 字母不能少于 6 位且不能大于 16 位"
        }
      }
    });

    $(".cancel").click(function() {
      validator.resetForm();
    });
  });
</script>
<body>
<div class="box">
  <div class="login-box">
    <div class="login-title text-center">
      <h1><small>WEIPAI后台登录</small></h1>
    </div>
    <div class="login-content ">
      <div class="form">
        <form id="commentForm" action="${pageContext.request.contextPath}/web/login.do" method="post">
          <div class="form-group">
            <div class="col-xs-12  ">
              <div>
                <span id="errorInfo" style="color: red;margin-left: 10px">${loginError}</span>
              </div>
              <div class="input-group">
                <label for="mobile" class="input-group-addon"></label>
                <input type="text" onclick="" id="mobile" name="mobile" maxlength="11" required minlength="11" required number class="form-control" placeholder="请输入手机号" value="" >
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="col-xs-12  ">
              <div class="input-group">
                <label for="password" class="input-group-addon"></label>
                <input type="text" id="password" name="password"  maxlength="16" required minlength="6" class="form-control"  placeholder="请输入密码" value="">
              </div>
            </div>
          </div>
          <div class="form-group form-actions">
            <div class="col-xs-4 col-xs-offset-4 ">
              <input type="submit" value="登录" class="btn btn-sm btn-info"> </input>
            </div>
          </div>
          <div class="form-group">
            <div class="col-xs-6 link">
              <p class="text-center remove-margin"><small>忘记密码？</small> <a href="javascript:void(0)" ><small>找回</small></a>
              </p>
            </div>
           <%--   <div class="col-xs-6 link">
                <p class="text-center remove-margin"><small>还没注册?</small> <a href="javascript:void(0)" ><small>注册</small></a>
            </p>
            </div>--%>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<div style="text-align:center;">
  <p>来源：<a href="http://www.mycodes.net/" target="_blank">牛逼的应用</a></p>
</div>

</body>

</html>