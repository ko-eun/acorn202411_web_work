<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>example.html</title>
    <style>
        .carousel-item img {
            height: 70vh; 
            width: 100%; 
            object-fit: cover; 
        }
        footer {
            font-size: 0.9rem; 
            padding: 10px 0; 
        }
        footer .text-center p,
        footer .text-center a {
            margin-bottom: 5px; 
        }
        .container {
            margin-top: 20px; 
            margin-bottom: 10px; 
        }
        .nav-item.dropdown:hover .dropdown-menu {
        	display: block !important;
    	}
  		.dropdown-menu {
	        position: absolute;
	        top: 100%; /* 버튼 바로 아래에 표시 */
	        left: 0;
	        z-index: 1000;
	    }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>

<body class="d-flex flex-column bg-light" style="min-height: 100vh;">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <div class="navbar" style="background-color: #495057;">
        <nav class="navbar navbar-expand-lg bg-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="${pageContext.request.contextPath }/" style="color: white;">홈페이지</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath }/user/example.jsp" style="color: white;">회원가입</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" aria-expanded="false" style="color: white;">로그인</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" style="color: black;">CEO</a></li>
                                <li><a class="dropdown-item" href="#" style="color: black;">점장</a></li>
                                <li><a class="dropdown-item" href="#" style="color: black;">직원</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
				            <a class="nav-link dropdown-toggle" href="#" role="button" aria-expanded="false" style="color: white;">계정 설명</a>
				            <ul class="dropdown-menu">
				                <li><a class="dropdown-item" href="#" style="color: black;">관리자계정</a></li>
				                <li><a class="dropdown-item" href="#" style="color: black;">지점장계정</a></li>
				                <li><a class="dropdown-item" href="#" style="color: black;">매장직원계정</a></li>
				            </ul>
				        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link active" style="color: white;">기능 추가..</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" aria-disabled="true" style="color: white;">추가 서비스 준비중...</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

   <div class="container flex-fill" style="width: 600px; height:600px; margin-top: 50px;">
	    <div class="d-inline-block" style="padding: 10px 20px; cursor: pointer; font-weight: bold; background-color: #f1f1f1; border: 1px solid #ddd;" id="ceoTab" onclick="switchTab('ceo')">점장 회원가입</div>
	    <div class="d-inline-block" style="padding: 10px 20px; cursor: pointer; font-weight: bold; background-color: #f1f1f1; border: 1px solid #ddd;" id="staffTab" onclick="switchTab('staff')">직원 회원가입</div>
	
	    <div id="ceoContent" class="tab-content" style="padding: 20px; background-color: #fff; border-top: 1px solid #ddd; display: none;">
	        <h3>점장 회원가입</h3>
	        <form class="login-form" style="display: flex; flex-direction: column; gap: 15px;">
	            <label for="id">ID:</label>
	            <input type="text" id="id" name="id" style="padding: 10px; width: 100%;"><br>
	            <label for="password">비밀번호:</label>
	            <input type="password" id="password" name="password" style="padding: 10px; width: 100%;"><br>
	            
	            <label>권한 선택:</label>
	            <div style="display: flex; gap: 10px;">
	                <label><input type="radio" name="role" value="admin"> Admin</label>
	                <label><input type="radio" name="role" value="staff"> Staff</label>
	            </div>
	            
	            <button type="submit" style="padding: 10px;">회원가입</button>
	        </form>
	    </div>
	
	    <div id="staffContent" class="tab-content" style="padding: 20px; background-color: #fff; border-top: 1px solid #ddd; display: none;">
	        <h3>직원 회원가입</h3>
	        <form class="login-form" style="display: flex; flex-direction: column; gap: 15px;">
	            <label for="id">ID:</label>
	            <input type="text" id="id" name="id" style="padding: 10px; width: 100%;"><br>
	            <label for="password">비밀번호:</label>
	            <input type="password" id="password" name="password" style="padding: 10px; width: 100%;"><br>
	            
	            <label>권한 선택:</label>
	            <div style="display: flex; gap: 10px;">
	                <label><input type="radio" name="role" value="admin"> Admin</label>
	                <label><input type="radio" name="role" value="staff"> Staff</label>
	            </div>
	            
	            <button type="submit" style="padding: 10px;">회원가입</button>
	        </form>
	    </div>
	</div>


   <div style="background-color: #495057;">
   		<footer class="text-white py-2 no-margin">
        	<div class="container">
	            <div class="row">
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-2">CEO</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-2">점장</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-2">직원</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-2">게시판</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	            </div>
	            <div class="text-center mt-3">
	                <p class="mb-1">햣나뭇가지 | 대표이사: 정홍석 | 사업자등록번호: xxx-xx-xxxxx</p>
	                <p class="mb-1">주소: 서울특별시 강남구 테헤란로 124 삼원타워 5층</p>
	                <p>고객지원: <a href="tel:0000-0000" class="text-white text-decoration-none">0000-0000</a> | 이메일: <a href="kem1401@naver.com" class="text-white text-decoration-none">kem1401@naver.com</a></p>
	            </div>
	            <div class="text-center mt-2">
	                <a href="https://facebook.com" class="text-white me-2"><i class="bi bi-facebook"></i> Facebook</a>
	                <a href="https://blog.com" class="text-white me-2"><i class="bi bi-pencil"></i> Blog</a>
	                <a href="https://youtube.com" class="text-white me-2"><i class="bi bi-youtube"></i> YouTube</a>
	                <a href="https://instagram.com" class="text-white me-2"><i class="bi bi-instagram"></i> Instagram</a>
	                <a href="https://kakaotalk.com" class="text-white"><i class="bi bi-chat"></i> KakaoTalk</a>
	            </div>
       	 	</div>
   	 </footer>
</div>


    <script>
        function switchTab(tab) {
            // Hide all content
            document.getElementById('ceoContent').style.display = 'none';
            document.getElementById('staffContent').style.display = 'none';

            // Remove active class from both tabs
            document.getElementById('ceoTab').classList.remove('active-tab');
            document.getElementById('staffTab').classList.remove('active-tab');

            // Show the clicked tab's content
            if (tab === 'ceo') {
                document.getElementById('ceoContent').style.display = 'block';
                document.getElementById('ceoTab').classList.add('active-tab');
            } else if (tab === 'staff') {
                document.getElementById('staffContent').style.display = 'block';
                document.getElementById('staffTab').classList.add('active-tab');
            }
        }

        // Initialize with "점장 회원가입" tab active
        switchTab('ceo');
    </script>
</body>

</html>
