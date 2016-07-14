<!DOCTYPE html>
<% String ipp=request.getParameter("ipp");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线更新</title>
<script type="text/javascript">
	function on(){
		var str=<%=ipp%>;
		//alert(str);
		switch(str){
			case 0:
				//(0);
				//document.getElementById("rightFrame").src="zhcx.jsp" ;
			break;
			case 1:
				//alert(1);
				//var a=document.getElementById("rightFrame");
				//var a =window.frames["rightFrame"].src;
				////alert(a);
			break;
			default: 
				//alert("default");
				//document.getElementById("rightFrame").src="zhcx.jsp" ;
		}
	}
	on();
</script>
</head>
<frameset rows="93,*,25" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="zxgx_top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset  frameborder="no" border="0" framespacing="0">
    <!-- <frame src="left.html" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" /> -->
    <frame src="zxgx_xdny.jsp" name="rightFrame" id="rightFrame" title="rightFrame" />
  </frameset>
  <frame src="footer.html" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset>
<noframes><body>
</body></noframes>
</html>
