<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>广州市农业地理信息系统</title>
</head>
<frameset rows="93,*,25" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="top.do" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset  frameborder="no" border="0" framespacing="0">
    <!-- <frame src="left.html" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" /> -->
    <frame src="rightFrame.do?jspflog=${jspflog}" name="rightFrame" id="rightFrame" title="rightFrame" />
  </frameset>
  <frame src="footer.html" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset>
<noframes><body>
</body></noframes>
</html>
