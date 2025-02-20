<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>/templates/member/list.html</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>회원목록</h1>
		<a th:href="${pageContext.request.contextPath }/member/new">회원추가</a>
		<table class="table table-bordered">
			<thead class="table-dark">
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>주소</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
                <tr th:each="member : ${list}">
                    <td th:text="${member.num}"></td>
                    <td th:text="${member.name}"></td>
                    <td th:text="${member.addr}"></td>
                    <td>
                    	<a th:href="@{/member/edit(num=${member.num})}">수정</a>
                    </td>
                    <td>
                    	<a th:href="@{/member/delete(num=${member.num})}">삭제</a>
                    </td>
                </tr>
            </tbody>
		</table>
	</div>
</body>
</html>