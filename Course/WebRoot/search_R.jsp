<%@page import="info.dao.dbc.DatabaseConnection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>queryResult</title>
	<link rel="stylesheet" href="css/index.css">	
</head>
<body>
	<div class="header">
		<div class="headerBottom">
			<a href="search.jsp" class="fr">返回首页</a>
		</div>
	</div>
    <% 
    	String n = request.getParameter("sn");
    	DatabaseConnection dbconn = new DatabaseConnection();
    	Connection conn = dbconn.getConnection();
		String sql = "select * from student where sno= ? ";
		PreparedStatement pstmt = conn.prepareCall(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, n);
		
		ResultSet rs = pstmt.executeQuery(); 
    	int i = 1;
  %>
  	<div class="content">
		
		<table>
			<tr>
				<th>学号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>专业</th>
				<th>分数</th>
			</tr>
			<%while (rs.next()) { %>
			<tr>
				<td><%=i++ %></td>
				<td><%=rs.getString("sno")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("sex")%></td>
				<td><%=rs.getString("major")%></td>
				<td><%=rs.getString("score")%></td>
			</tr>
			<%} %>
		</table>
		<p style="color: red; font-size: 12px; font-weight: bold; text-align: center; margin-top: 12px;">
		<%
			if (i == 1) {
				out.print("没有此同学！");
			}
		 %>
		 </p>
  	</div>

</body>
</html>