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
 <form  method="post" action="servlet/LoginCheck">
                <p>身份： <select name="ident" id="ident">
                    <option value="admin">管理员</option>
                    <option value="student">学生</option>
                </select></p>
                <p>账号： <input type="text" name="username" id="username"></p>
                <p>密码： <input type="text" name="password" id="password"></p>
                <p><input type="submit" value="登录"><input type="reset" value="重置"></p>
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
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_left">
      <div class="column2">
        <ul>
          <li>
            <h2>课程浏览</h2>
            <div class="imgholder"><img src="images/6.jpg" alt="" /></div>
            <br>
            <a href="#">浏览</a>
          </li>
          <li class="last">
            <h2>课程特色</h2>
            <div class="imgholder"><img src="images/7.jpg" alt="" /></div>
            <br>
            <a href="#">浏览</a>
          </li>
        </ul>
        <br class="clear" />
      </div>
      <div class="column2">
        <h2>实践</h2>
        <img class="imgl" src="images/8.jpg" alt="" />
        <p></a>.</p>
        <p></p>
        <p></p>
        <p></p>
      </div>
    </div>
    <div class="fl_right">
      <h2>课程一览</h2>
      <ul>
        <li>
          <div class="imgholder"><a href="#"><img src="images/9.jpg" alt="" /></a></div>
          <p><strong><a href="#">JDBC访问数据库</a></strong></p>
           <p><a href="#">浏览</a></p>
        </li>
        <li>
          <div class="imgholder"><a href="#"><img src="images/10.jpg" alt="" /></a></div>
          <p><strong><a href="#">集合存储对象	</a></strong></p>
          <p><a href="#">浏览</a></p>
        </li>
        <li>
          <div class="imgholder"><a href="#"><img src="images/11.jpg" alt="" /></a></div>
          <p><strong><a href="#">web容器的配置和调试</a></strong></p>
           <p><a href="#">浏览</a></p>
        </li>
        <li>
          <div class="imgholder"><a href="#"><img src="images/12.jpg" alt="" /></a></div>
          <p><strong><a href="#">JavaScript实现交互</a></strong></p>
           <p><a href="#">浏览</a></p>
        </li>
        <li class="last">
          <div class="imgholder"><a href="#"><img src="images/13.jpg" alt="" /></a></div>
          <p><strong><a href="#">开发工具的使用与调试</a></strong></p>
          <p><a href="#">浏览</a></p>
        </li>
      </ul>
    </div>
    <br class="clear" />
  </div>
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

