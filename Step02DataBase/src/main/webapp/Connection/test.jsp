<%@page import="test.util.DbcpBean"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// DbcpBean 객체를 이용해서 Connection 얻어오기
	Connection conn = new DbcpBean().getConn();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>webapp/connection.test.html</title>
</head>
<body>
	<div class="container">
		<h1>Connection 테스트 페이지</h1>
		<%if(conn != null) %>
			<p>Connection 객체를 성공적으로 얻어왔습니다.</p>
		<%else{ %>
		 <p>Connection 객체 얻옹기 실페!</p>
		<%} %>
	</div>
</body>
</html>
<%
	if(conn!=null)conn.close(); //close() 를 호출하면 Connection 이 Pool에 반환된다.
%>