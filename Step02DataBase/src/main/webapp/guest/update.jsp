<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	GuestDao dao=GuestDao.getInstance();
	String savedPwd = dao.getData(num).getPwd();
	
	//작업의 성공여부를 저장할 변수를 만들고 false 를 초기값으로 부여한다.
	boolean isSuccess = false;
	
	//만일 비밀번호가 일치한다면
	if(pwd.equals(savedPwd)){
		GuestDto dto = new GuestDto();
		dto.setNum(num);
		dto.setWriter(writer);
		dto.setContent(content); // dao에서 pwd는 수정을 하지 않았기 때문에 반영하지 않는다.
		dao.update(dto);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/update.jsp</title>
</head>
<body>
	<div class="container">
		<h3>알림</h3>
			<%if(isSuccess){ %>
				<p>
					<strong><%=writer %></strong> 님이 작성한 글이 수정되었습니다.
					<a href="list.jsp">목록보기</a>
				</p>
			<%}else{ %>
				<p>
					수정 실패!
					<a href="updateform.jsp?num=<%=num%>">다시 수정</a>
				</p>
			<%} %>
	</div>
</body>
</html>