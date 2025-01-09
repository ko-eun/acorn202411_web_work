<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 삭제할 글의 글 번호와 비밀번호를 추출해서
	int num = Integer.parseInt(request.getParameter("num"));
	String pwd = request.getParameter("pwd");
	
	//2. 비밀번호가 일치하는지 확인해서 일치하면 삭제한다.
	//삭제할 글 정보를 얻어와서
	GuestDto dto = GuestDao.getInstance().getData(num);
	if(pwd.equals(dto.getPwd())){
		//DB에서 삭제하고
		GuestDao.getInstance().delete(num);
		// "/guest/list.jsp" 페이지로 리다일렉트 이동하라는 응답하기
		String cPath = request.getContextPath();
		response.sendRedirect(cPath+"/guest/list.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/delete.jsp</title>
</head>
<body>
	<script>
		alert("비밀번호가 일치하지 않습니다");
		location.href = "${pageContext.request.contextPath }/guest/list.jsp";
	</script>
</body>
</html>