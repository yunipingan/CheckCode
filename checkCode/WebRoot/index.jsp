<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript">
	function reloadImage(){
	var time = new Date().getTime();
		document.getElementById("image").src ="<%=request.getContextPath()%>/servlet/ImageServlet?d="+time;
	}
</script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <form action="<%=request.getContextPath()%>/servlet/LoginServlet" method="post">
    ��֤�룺<input type="text" name="checkCode"/>
    <img id="image" alt="��֤��" src="<%=request.getContextPath() %>/servlet/ImageServlet">
    <a href="javascript:reloadImage();">�������</a><br>
    <input type="submit" value="�ύ" />
    </form>
  </body>
</html>
