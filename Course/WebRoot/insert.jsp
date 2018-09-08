<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert.jsp' starting page</title>
    
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
  	<div class="registerBox">
  		<div class="header">
		<div class="haveReg"><a href="admin.jsp">返回</a></div>
	<form action="servlet/insertStudent" method="post">
  	  学号：<input type="text" name="sno"><br>
         姓名：<input type="text" name="name"><br>
         性别 ：<input type="text" name="sex"><br>
  	 专业：<input type="text" name="major"><br>
         分数： <input type="text" name="score"><br>   
    <input type="submit" value = "确定">
    <input type="reset" value = "重置">
    </form>
	</div>
  </body>
</html>
