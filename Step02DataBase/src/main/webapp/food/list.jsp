<%@page import="test.food.dto.FoodDto"%>
<%@page import="java.util.List"%>
<%@page import="test.food.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	FoodDao dao = new FoodDao();
	List<FoodDto> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/food/list.jsp</title>
<jsp:include page="/include/resource.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="food" name="current"/>
	</jsp:include>
	<div class="container">
		<a href="insertform.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
  				<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4"/>
			</svg>
			<span class="visually-hidden">맛집 추가</span>
		</a>
		
		<h1>맛집 목록입니다.</h1>
		<table class="table table-bordered">
			<thead class="table-dark">
				<tr>
					<th>번호</th>
					<th>타입</th>
					<th>이름</th>
					<th>가격</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(FoodDto tmp:list){%>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getType() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getPrice() %></td>
					<td>
						<a href="updateform.jsp?num=<%=tmp.getNum()%>">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear-fill" viewBox="0 0 16 16">
 								<path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"/>
							</svg>
							<span class="visually-hidden">수정</span>
						</a>	
					</td>
					<td>
						<a href="javascript: deleteConfirm(<%=tmp.getNum() %>)">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  								<path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5M8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5m3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0"/>
							</svg>
							<span class="visually-hidden">삭제</span>
						</a>
					</td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
	<script>
		function deleteConfirm(num){
			const isDelete = confirm("삭제할까요?");
			if(isDelete){
				location.href = "delete.jsp?num="+num;
			}else{
				location.href = "list.jsp";
			}
		}
	</script>
</body>
</html>