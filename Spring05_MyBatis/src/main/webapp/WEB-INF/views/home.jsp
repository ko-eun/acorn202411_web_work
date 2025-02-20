<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>/WEB-INF/views/home.jsp</title>
</head>
<body>
	<div class="container">
		<h1>인덱스 페이지입니다 (jsp)</h1>
		<ul>
			<!-- <li><a th:href="@{/member/list}">회원 목록보기</a></li>
			<li><a th:href="@{/todo/list}">할 일 목록보기</a></li> -->
			<li><a href="${pageContext.request.contextPath }/">회원 목록보기</a></li>
		</ul>
	</div>
</body>
</html>