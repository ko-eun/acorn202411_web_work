<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id="getBtn">친구 이름 목록 받아오기</button>
	<ul id="friendList">
	</ul>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	<script>
		$("#getBtn").on("click", ()=>{
			
			fetch("friend.jsp")
			.then(res=>res.json())
			.then(data=>{
				for(let i=0; i<data.length; i++){
					// li  요소를 만들어서 선택하고 innerText 출력한 후 
					const li = $("<li>").text(data[i]);
					// id 가 friendList 인 요소에 추가하기
					$("#friendList").append(li);
				}
			})
			.catch(error=>{
				console.log("에러정보 : "+ error)
			});
		});
	</script>
</body>
</html>