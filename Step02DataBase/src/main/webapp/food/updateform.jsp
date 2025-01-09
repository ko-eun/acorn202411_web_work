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
<jsp:include page="/include/resource.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath }/">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
	  							<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5z"/>
							</svg>
							<span class="visually-hidden">Home</span>
						</a>
					</li>
					<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath }/food/list.jsp"> 
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-egg" viewBox="0 0 16 16">
  								<path d="M8 15a5 5 0 0 1-5-5c0-1.956.69-4.286 1.742-6.12.524-.913 1.112-1.658 1.704-2.164C7.044 1.206 7.572 1 8 1s.956.206 1.554.716c.592.506 1.18 1.251 1.704 2.164C12.31 5.714 13 8.044 13 10a5 5 0 0 1-5 5m0 1a6 6 0 0 0 6-6c0-4.314-3-10-6-10S2 5.686 2 10a6 6 0 0 0 6 6"/>
							</svg>
							<span class="visually-hidden">목록</span>
						</a>
					</li>
					<li class="breadcrumb-item">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear-fill" viewBox="0 0 16 16">
 							<path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"/>
						</svg>
						<span class="visually-hidden">수정</span>
					</li>
					<li class="breadcrumb-item">
						<a href="${pageContext.request.contextPath }/food/insertform.jsp">
							<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
  								<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4"/>
							</svg>
							<span class="visually-hidden">맛집 추가</span>
						</a>
					</li>
				</ol>
			</nav>
		<h1>맛집 정보 수정 폼</h1>
		
		<p><%=false ? "selected" : "" %></p>
		
		<form action="update.jsp" method="post">
			
			<!-- 화면에 보이지 않지만 폼 제출할 때 같이 전송되는 값 -->
			<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
			<div class="mb-2">
				<label class="form-label" for="type">타입</label>
				<select class="form-control" name="type" id="type">
					<option value="">선택</option>
					<option <%=dto.getType().equals("한식")? "selected" : "" %>>한식</option>
					<option <%=dto.getType().equals("양식")? "selected" : "" %>>양식</option>
					<option <%=dto.getType().equals("중식")? "selected" : "" %>>중식</option>
					<option <%=dto.getType().equals("일식")? "selected" : "" %>>일식</option>
					<option <%=dto.getType().equals("기타")? "selected" : "" %>>기타</option>
				</select>
			</div>
			<div class="mb-2">
				<label class="form-label" for="name">이름</label>
				<input class="form-control" type="text" name="name" id="name" value="<%=dto.getName()%>"/>
			</div>
			<div class="mb-2">
				<label class="form-label" for="price">가격</label>
				<input class="form-control" type="number" name="price" id="price" max="100000" min="1000" step="100" value="<%=dto.getPrice()%>"/>
			</div>
			<button class="btn btn-outline-success btn-sm" type="submit">저장</button>
			<button class="btn btn-outline-danger btn-sm" type="reset">취소</button>
		</form>
	</div>
</body>
</html>