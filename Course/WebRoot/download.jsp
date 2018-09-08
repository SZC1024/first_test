<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Java Web精品课程网站</title>
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
        <h2>登录需知</h2>
        <p>在此处选择对应的登录方式</p>
        <p class="readmore"><a href="#">继续 &raquo;</a></p>
      </div>
      <div class="topbox last">
        <h2>登录账号 </h2>
        <form action="servlet/LoginCheck" method="post">
          <fieldset>
            <legend>Login Form</legend>
             	登录者： <select name="ident" id="ident">
              <option value="admin">管理员</option>
              <option value="student">学生</option>
            <label for="username">账号:
              <input type="text" name="username" id="username" value="" />
            </label>
            <label for="password">密码:
              <input type="password" name="password" id="password" value="" />
            </label>
            <label for="remember">
              <input class="checkbox" type="checkbox" name="remember" id="remember" checked="checked" />
              记住密码</label>
            <p>
              <input type="submit" name="login" id="slogin" value="登录" />
              &nbsp;
              <input type="reset" name="reset" id="sreset" value="重置" />
            </p>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    <div id="loginpanel">
      <ul>
        <li class="left">登录 &raquo;</li>
        <li class="right" id="toggle"><a id="slideit" href="#slidepanel">-></a><a id="closeit" style="display: none;" href="#slidepanel">收起</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="#">Java Web精品课程网站</a></h1>
     
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="index.jsp">新闻浏览</a></li>
        <li><a href="download.jsp">课件下载</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
 <div id="container">
    <h1><a href="download1.jsp?file=img.jpg">资料下载</a></h1>
    <h2><a href="download1.jsp?file=img.jpg">资料下载</a></h2>
    <h3><a href="download1.jsp?file=img.jpg">资料下载</a></h3>
    <h4><a href="download1.jsp?file=img.jpg">资料下载</a></h4>
    <h5><a href="download1.jsp?file=img.jpg">资料下载</a></h5>
    <h6><a href="download1.jsp?file=img.jpg">资料下载</a></h6>
  </div>
<div class="wrapper col4">
  <div id="footer">
    <div class="footbox">
      <h2>合作网站</h2>
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
      <h2>合作网站</h2>
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
      <h2>合作网站</h2>
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
      <h2>合作网站</h2>
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
      <h2>合作网站</h2>
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

