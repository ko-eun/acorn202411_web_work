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
	    <nav class="navbar navbar-expand-lg">
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

    <div class="container my-5">
        <%-- Carousel --%>
        <div id="photoCarousel" class="carousel slide" data-bs-ride="carousel">
            <%-- Indicators --%>
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#photoCarousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#photoCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#photoCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>

            <%-- Carousel Images --%>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://i.namu.wiki/i/nQMJ4i6eHUG9XqSmXIMdxfWy1TPAQ6czLPWwvQPrlaKp72xbIRjm6cNiCzNg_br9dfoPFlgOH1Z0RxJ1Y91CJ3wIHK2q-g2OMcniiU5Ro2jdtW7plaKKI9B_j8r_jPOY8fIEcdi0L2tT7G-6PUabNQ.webp" class="d-block w-100" alt="이미지 1">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>개죽이</h5>
                        <p>ㅎㅎㅎㅎ</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://www.yomidog.com/preSaleUpFile/200730_%EA%B0%95%EB%82%A8%ED%86%A0%EC%9D%B4%ED%91%B8%EB%93%A4_638.JPG" class="d-block w-100" alt="이미지 2">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>푸들</h5>
                        <p>토이푸들</p>
                    </div>
                </div>
            </div>

            <%-- Controls --%>
            <button class="carousel-control-prev" type="button" data-bs-target="#photoCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">이전</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#photoCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">다음</span>
            </button>
        </div>
    </div>
    
	     <%-- 버튼 클릭 후 세션 이동 --%>
	    <div class="container text-center my-5">
		    <a href="#section1" class="btn btn-outline-secondary" style="font-size: 1.5rem; padding: 1rem 2rem; margin: 5rem;">섹션 1</a>
		    <a href="#section2" class="btn btn-outline-secondary" style="font-size: 1.5rem; padding: 1rem 2rem; margin: 5rem;">섹션 2</a>
		    <a href="#section3" class="btn btn-outline-secondary" style="font-size: 1.5rem; padding: 1rem 2rem; margin: 5rem;">섹션 3</a>
		</div>

	    
	    <section id="section1" class="bg-light" style="color: black;">
		    <div class="container">
		        <div class="row align-items-center">
		            <div class="col-md-6 text-end">
		                <h2>CEO</h2>
		                <p>여기는 섹션 1입니다. 이미지에 대한 설명을 여기에 추가할 수 있습니다. 
		                	<br /> 이 부분은 텍스트입니다.</p>
		                <a href="https://www.naver.com/" class="btn btn-danger">+ 자세히 보기</a>
		            </div>
		            <div class="col-md-6">
		                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDEwMTFfMTMz%2FMDAxNzI4NjMwOTMyNDU0.6h7ySWiqHYdZ3RcQzLqAQcsSvoaTiikV9lrMM9w_As4g.9p1pyrM-kMJU2qkfm7kkPLQIfGVabMixheo8vx_AsD8g.JPEG%2Foutput_4171609214.jpg&type=sc960_832" 
		                		alt="설명 이미지" class="img-fluid" style="border-radius: 8px;">
		            </div>
		        </div>
		    </div>
		</section>
	
	     <section id="section2" class="bg-light" style="color: black;">
		    <div class="container">
		        <div class="row align-items-center">
		        	<div class="col-md-6 img-end">
		                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDEwMTFfMTMz%2FMDAxNzI4NjMwOTMyNDU0.6h7ySWiqHYdZ3RcQzLqAQcsSvoaTiikV9lrMM9w_As4g.9p1pyrM-kMJU2qkfm7kkPLQIfGVabMixheo8vx_AsD8g.JPEG%2Foutput_4171609214.jpg&type=sc960_832" 
		                		alt="설명 이미지" class="img-fluid" style="border-radius: 8px;">
		            </div>
		            <div class="col-md-6">
		                <h2>섹션 2</h2>
		                <p>여기는 섹션 2입니다. 이미지에 대한 설명을 여기에 추가할 수 있습니다.
		                	<br /> 이 부분은 텍스트입니다.</p>
		                <a href="#" class="btn btn-danger">+ 자세히 보기</a>
		            </div>
		        </div>
		    </div>
		</section>
	
	    <section id="section3" class="bg-light" style="color: black;">
		    <div class="container">
		        <div class="row align-items-center">
		            <div class="col-md-6 text-end">
		                <h2>섹션 3</h2>
		                <p>여기는 섹션 3입니다. 이미지에 대한 설명을 여기에 추가할 수 있습니다.
		                	<br /> 이 부분은 텍스트입니다.</p>
		                <a href="#" class="btn btn-danger">+ 자세히 보기</a>
		            </div>
		            <div class="col-md-6">
		                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDEwMTFfMTMz%2FMDAxNzI4NjMwOTMyNDU0.6h7ySWiqHYdZ3RcQzLqAQcsSvoaTiikV9lrMM9w_As4g.9p1pyrM-kMJU2qkfm7kkPLQIfGVabMixheo8vx_AsD8g.JPEG%2Foutput_4171609214.jpg&type=sc960_832" 
		                		alt="설명 이미지" class="img-fluid" style="border-radius: 8px;">
		            </div>
		        </div>
		    </div>
		</section>



     <%-- Footer Section --%>
     <div style="background-color: #495057;">
	    <footer class="text-white py-3">
	        <div class="container">
	            <div class="row">
	                <%-- Column 1 --%>
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-3">CEO</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	                <%-- Column 2 --%>
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-3">점장</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	                <%-- Column 3 --%>
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-3">직원</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	                <%-- Column 4 --%>
	                <div class="col-md-3">
	                    <h5 class="text-uppercase mb-3">게시판</h5>
	                    <ul class="list-unstyled">
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                        <li><a href="#" class="text-white text-decoration-none">!!!</a></li>
	                    </ul>
	                </div>
	            </div>
	
	            <%-- Bottom Info --%>
	            <div class="text-center mt-4">
	                <p class="mb-1">햣나뭇가지 | 대표이사: 정홍석 | 사업자등록번호: xxx-xx-xxxxx</p>
	                <p class="mb-1">주소: 서울특별시 강남구 테헤란로 124 삼원타워 5층</p>
	                <p>고객지원: <a href="tel:0000-0000" class="text-white text-decoration-none">0000-0000</a> | 이메일: <a href="kem1401@naver.com" class="text-white text-decoration-none">kem1401@naver.com</a></p>
	            </div>
	
	            <%-- Social Media Icons --%>
	            <div class="text-center mt-3">
	                <a href="https://facebook.com" class="text-white me-3"><i class="bi bi-facebook"></i> Facebook</a>
	                <a href="https://blog.com" class="text-white me-3"><i class="bi bi-pencil"></i> Blog</a>
	                <a href="https://youtube.com" class="text-white me-3"><i class="bi bi-youtube"></i> YouTube</a>
	                <a href="https://instagram.com" class="text-white me-3"><i class="bi bi-instagram"></i> Instagram</a>
	                <a href="https://kakaotalk.com" class="text-white"><i class="bi bi-chat"></i> KakaoTalk</a>
	            </div>
	        </div>
	    </footer>
	  </div>
</body>

</html>
