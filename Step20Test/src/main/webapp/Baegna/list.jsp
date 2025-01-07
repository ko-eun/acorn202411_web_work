<%@page import="test.dto.SongDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> songs = new ArrayList<>();
	songs.add("가슴으로 운다");
	songs.add("결국 나도 똑같네요");
	songs.add("좋아요");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/AnYeseul/list.jsp</title>
</head>
<body>
	<h1>배그나 노래 목록</h1>
	<u1>
		<%for(String tmp:songs){ %>
			<li><%=tmp %></li>
		<%} %>
	</u1>
</body>
</html>