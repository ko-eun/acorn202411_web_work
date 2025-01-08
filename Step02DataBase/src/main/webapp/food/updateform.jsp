<%@page import="test.food.dao.FoodDao"%>
<%@page import="test.food.dto.FoodDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	FoodDto dto = new FoodDao().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/food/update.jsp</title>
</head>
<body>
	<div class="container">
		<h1>맛집 정보 수정 폼</h1>
		
		<p><%=false ? "selected" : "" %></p>
		
		<form action="update.jsp" method="post">
			
			<!-- 화면에 보이지 않지만 폼 제출할 때 같이 전송되는 값 -->
			<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
			<div>
				<label for="type">타입</label>
				<select name="type" id="type">
					<option value="">선택</option>
					<option <%=dto.getType().equals("한식")? "selected" : "" %>>한식</option>
					<option <%=dto.getType().equals("양식")? "selected" : "" %>>양식</option>
					<option <%=dto.getType().equals("중식")? "selected" : "" %>>중식</option>
					<option <%=dto.getType().equals("일식")? "selected" : "" %>>일식</option>
					<option <%=dto.getType().equals("기타")? "selected" : "" %>>기타</option>
				</select>
			</div>
			<div>
				<label for="name">이름</label>
				<input type="text" name="name" id="name" value="<%=dto.getName()%>"/>
			</div>
			<div>
				<label for="price">가격</label>
				<input type="number" name="price" id="price" max="100000" min="1000" step="100" value="<%=dto.getPrice()%>"/>
			</div>
			<button type="submit">저장</button>
			<button type="reset">취소</button>
		</form>
	</div>
</body>
</html>