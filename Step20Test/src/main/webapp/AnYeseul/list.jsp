<%@page import="test.dto.SongDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> songs = new ArrayList<>();
	songs.add("너로 인해 내 오늘은 찬란해");
	songs.add("하얀 눈이 내리면");
	songs.add("인생네컷");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/AnYeseul/list.jsp</title>
</head>
<body>
	<h1>안예슬 노래 목록</h1>
	<u1>
		<%for(String tmp:songs){ %>
			<li><%=tmp %></li>
		<%} %>
	</u1>
</body>
</html>