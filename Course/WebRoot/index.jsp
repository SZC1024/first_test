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
 <form  method="post" action="servlet/LoginCheck">
                <p>��ݣ� <select name="ident" id="ident">
                    <option value="admin">����Ա</option>
                    <option value="student">ѧ��</option>
                </select></p>
                <p>�˺ţ� <input type="text" name="username" id="username"></p>
                <p>���룺 <input type="text" name="password" id="password"></p>
                <p><input type="submit" value="��¼"><input type="reset" value="����"></p>
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
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_left">
      <div class="column2">
        <ul>
          <li>
            <h2>�γ����</h2>
            <div class="imgholder"><img src="images/6.jpg" alt="" /></div>
            <br>
            <a href="#">���</a>
          </li>
          <li class="last">
            <h2>�γ���ɫ</h2>
            <div class="imgholder"><img src="images/7.jpg" alt="" /></div>
            <br>
            <a href="#">���</a>
          </li>
        </ul>
        <br class="clear" />
      </div>
      <div class="column2">
        <h2>ʵ��</h2>
        <img class="imgl" src="images/8.jpg" alt="" />
        <p></a>.</p>
        <p></p>
        <p></p>
        <p></p>
      </div>
    </div>
    <div class="fl_right">
      <h2>�γ�һ��</h2>
      <ul>
        <li>
          <div class="imgholder"><a href="#"><img src="images/9.jpg" alt="" /></a></div>
          <p><strong><a href="#">JDBC�������ݿ�</a></strong></p>
           <p><a href="#">���</a></p>
        </li>
        <li>
          <div class="imgholder"><a href="#"><img src="images/10.jpg" alt="" /></a></div>
          <p><strong><a href="#">���ϴ洢����	</a></strong></p>
          <p><a href="#">���</a></p>
        </li>
        <li>
          <div class="imgholder"><a href="#"><img src="images/11.jpg" alt="" /></a></div>
          <p><strong><a href="#">web���������ú͵���</a></strong></p>
           <p><a href="#">���</a></p>
        </li>
        <li>
          <div class="imgholder"><a href="#"><img src="images/12.jpg" alt="" /></a></div>
          <p><strong><a href="#">JavaScriptʵ�ֽ���</a></strong></p>
           <p><a href="#">���</a></p>
        </li>
        <li class="last">
          <div class="imgholder"><a href="#"><img src="images/13.jpg" alt="" /></a></div>
          <p><strong><a href="#">�������ߵ�ʹ�������</a></strong></p>
          <p><a href="#">���</a></p>
        </li>
      </ul>
    </div>
    <br class="clear" />
  </div>
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

