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
		<div class="haveReg"><a href="admin.jsp">����</a></div>
	<form action="servlet/insertStudent" method="post">
  	  ѧ�ţ�<input type="text" name="sno"><br>
         ������<input type="text" name="name"><br>
         �Ա� ��<input type="text" name="sex"><br>
  	 רҵ��<input type="text" name="major"><br>
         ������ <input type="text" name="score"><br>   
    <input type="submit" value = "ȷ��">
    <input type="reset" value = "����">
    </form>
	</div>
  </body>
</html>
