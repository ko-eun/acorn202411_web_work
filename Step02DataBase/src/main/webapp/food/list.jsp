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
<style>
	.container{
		max-width : 768px;
		margin : 0 auto;
	}
	table{
		border-collapse : collapse;
		width:100%;
		border-radius : 8px;
		overflow : hidden;
		box-shadow : 0 4px 8px rgba(0,0,0,0.3)
	}
	th{
		background-color : rgba(212, 105, 255, 0.801);
		color : white;
		padding : 5px 15px;
	}
	 td{
            padding: 5px 15px;
            border-bottom: 1px solid #ee6eff;
            text-align: center;
        }
      tr:nth-child(odd){
            background-color: #d6d6d6;
        }
</style>
</head>
<body>
	<div class="container">
		<a href="insertform.jsp">맛집 추가</a>
		<h1>맛집 목록입니다.</h1>
		<table>
			<thead>
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
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
					<td><a href="javascript: deleteConfirm(<%=tmp.getNum() %>)">삭제</a></td>
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