
<%@page import="test.food.dao.FoodDao"%>
<%@page import="test.food.dto.FoodDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type");
	String name = request.getParameter("name");
	int price = Integer.parseInt(request.getParameter("price"));
	
	FoodDto dto = new FoodDto();
	dto.setType(type);
	dto.setName(name);
	dto.setPrice(price);
	
	FoodDao dao = new FoodDao();
	boolean isSuccess = dao.insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			alert("<%=name%> 을(를) 추가 했습니다.");
			location.href="list.jsp";
		<%}else{%>
			alert("추가 실패!");
			location.href="insertform.jsp";
		<%}%>
	</script>
</body>
</html>