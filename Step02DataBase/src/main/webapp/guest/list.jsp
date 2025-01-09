<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<GuestDto> list = GuestDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/list.jsp</title>
<jsp:include page="/include/resource.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="guest" name="current"/>
	</jsp:include>
	<div class="container">
		<a href="insertform.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-stickies-fill" viewBox="0 0 16 16">
  				<path d="M0 1.5V13a1 1 0 0 0 1 1V1.5a.5.5 0 0 1 .5-.5H14a1 1 0 0 0-1-1H1.5A1.5 1.5 0 0 0 0 1.5"/>
  				<path d="M3.5 2A1.5 1.5 0 0 0 2 3.5v11A1.5 1.5 0 0 0 3.5 16h6.086a1.5 1.5 0 0 0 1.06-.44l4.915-4.914A1.5 1.5 0 0 0 16 9.586V3.5A1.5 1.5 0 0 0 14.5 2zm6 8.5a1 1 0 0 1 1-1h4.396a.25.25 0 0 1 .177.427l-5.146 5.146a.25.25 0 0 1-.427-.177z"/>
			</svg>
		</a>
		<h1> 방명록 목록입니다 </h1>
		<table class="table table-boardered">
			<thead class="table-dark">
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>등록일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(GuestDto tmp:list){%>
					<tr>
						<td><%=tmp.getNum() %></td>
						<td><%=tmp.getWriter() %></td>
						<td>
							<textarea class="form-control" style="height:100px;resize:none;" readonly><%=tmp.getContent() %></textarea>
						</td>
						<td><%=tmp.getRegdate() %></td>
						<td>
							<a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a>
						</td>
						<td>
							<form action="delete.jsp" method="post">
								<input type="hidden" name="num" value="<%=tmp.getNum() %>" />
								<input type="text" name="pwd" placeholder="비밀번호 입력.." />
								<button class="btn btn-danger btn-sm" type="submit">삭제</button>
							</form>
						</td>
					</tr>
				<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>