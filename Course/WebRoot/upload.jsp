<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Java Web��Ʒ�γ���վ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
      <div class="topbox">
    <p>��ӭ��¼</p>
    </div>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="#">Java Web��Ʒ�γ���վ</a></h1>
     
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="upload.jsp">��ҵ�ϴ�</a></li>
        <li><a href="search.jsp">��ѯ����</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper row3">
  <div id="container" class="clear">
    <h1>���ڴ˴�ѡ����Ҫ�ϴ�����ҵ</h1>
    <form method="post" name="upload">
   <input type="file" name="myfile">
   <input type="submit" value="�ϴ�">
   </form>
 
    <p> </p>
    
    <p> </p>
   
    <!-- ####################################################################################################### -->
  </div>
</div>
</body>
</html>

