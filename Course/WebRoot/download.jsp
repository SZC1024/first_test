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
    <div id="slidepanel">
      <div class="topbox">
        <h2>��¼��֪</h2>
        <p>�ڴ˴�ѡ���Ӧ�ĵ�¼��ʽ</p>
        <p class="readmore"><a href="#">���� &raquo;</a></p>
      </div>
      <div class="topbox last">
        <h2>��¼�˺� </h2>
        <form action="servlet/LoginCheck" method="post">
          <fieldset>
            <legend>Login Form</legend>
             	��¼�ߣ� <select name="ident" id="ident">
              <option value="admin">����Ա</option>
              <option value="student">ѧ��</option>
            <label for="username">�˺�:
              <input type="text" name="username" id="username" value="" />
            </label>
            <label for="password">����:
              <input type="password" name="password" id="password" value="" />
            </label>
            <label for="remember">
              <input class="checkbox" type="checkbox" name="remember" id="remember" checked="checked" />
              ��ס����</label>
            <p>
              <input type="submit" name="login" id="slogin" value="��¼" />
              &nbsp;
              <input type="reset" name="reset" id="sreset" value="����" />
            </p>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    <div id="loginpanel">
      <ul>
        <li class="left">��¼ &raquo;</li>
        <li class="right" id="toggle"><a id="slideit" href="#slidepanel">-></a><a id="closeit" style="display: none;" href="#slidepanel">����</a></li>
      </ul>
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
        <li class="active"><a href="index.jsp">�������</a></li>
        <li><a href="download.jsp">�μ�����</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
 <div id="container">
    <h1><a href="download1.jsp?file=img.jpg">��������</a></h1>
    <h2><a href="download1.jsp?file=img.jpg">��������</a></h2>
    <h3><a href="download1.jsp?file=img.jpg">��������</a></h3>
    <h4><a href="download1.jsp?file=img.jpg">��������</a></h4>
    <h5><a href="download1.jsp?file=img.jpg">��������</a></h5>
    <h6><a href="download1.jsp?file=img.jpg">��������</a></h6>
  </div>
<div class="wrapper col4">
  <div id="footer">
    <div class="footbox">
      <h2>������վ</h2>
      <ul>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li class="last"><a href="#">*</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>������վ</h2>
      <ul>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li class="last"><a href="#">*</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>������վ</h2>
      <ul>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li class="last"><a href="#">*</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>������վ</h2>
      <ul>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li class="last"><a href="#">*</a></li>
      </ul>
    </div>
    <div class="footbox last">
      <h2>������վ</h2>
      <ul>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li><a href="#">*</a></li>
        <li class="last"><a href="#">*</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">L</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>

