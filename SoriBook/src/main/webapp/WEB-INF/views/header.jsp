<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">


<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>소리북</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<!-- Google Font -->
<!-- <link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet"> -->

<!-- Css Styles -->
<!-- <link rel="stylesheet" href="/soribook/resources/Main/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/style.css"
	type="text/css"> -->
	

</head>

<body>

	<!--#########################################################################################  -->

	<!-- 카테고리 섹션 시작 -->

	<div class="container ">
	<div class="row "><br/><br/></div>
		<div class="row shadow-none p-3 mb-5 bg-light rounded">
			<div class="col-lg-2">		
			<!-- <div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>카테고리</span>
						</div>

						<ul style="display: none;">

						<ul>

							<li><a href="#">건강 - 취미</a></li>
							<li><a href="#">경영 - 경제</a></li>
							<li><a href="#">공무원수험서</a></li>
							<li><a href="#">사회과학</a></li>
							<li><a href="#">여행</a></li>
							<li><a href="#">역사</a></li>
							<li><a href="#">예술</a></li>
							<li><a href="#">만화</a></li>
							<li><a href="#">소설</a></li>
							<li><a href="#">에세이</a></li>
						</ul>
					</div> -->
			</div>
			<div class="col-lg-8">				
					<nav class="header__menu">
					<ul>
						<!-- 카테고리 dropdown 시작  -->
						<li><a href="#" id="catecate"><i class="fa fa-bars"></i>카테고리</a>
						<ul  id="catedrop" class="header__menu__dropdown">
							<!-- 국내도서 -->
							<li class="catehead"><h5>국내도서</h5></li>
							<c:forEach items="${category }" var="category">
										<c:if test="${category.majorCategoryNo == '1'}"> 
											<li><a href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}</a></li>
										</c:if>
							</c:forEach> 
							<!-- 외국도서 -->
							<li class="catehead"><h5>외국도서</h5></li>
							<c:forEach items="${category }" var="category">
										<c:if test="${category.majorCategoryNo == '2'}"> 
											<li><a href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}</a></li>
										</c:if>
							</c:forEach> 
						</ul>
						</li>
						<!-- 카테고리 dropdown 끝  -->
						<li class="active"><a href="MainPage.do"><i class="bi bi-house-door-fill"></i>Home</a></li>
						<li><a href="subBookList.do">구독상품</a></li>
						<li><a href="top100.do">TOP100</a></li>
						<li><a href="event.do">이벤트</a></li>
						<li><a href=" ">고객센터</a>
							<ul class="header__menu__dropdown">
								<li><a href=" ">공지사항</a></li>
								<li><a href=" ">1:1문의</a></li>
							</ul></li>
					</ul>

				</nav>
			</div>
			<div class="col-lg-2">
				<div class="header__cart">
					<ul>
						
						
						<c:if test="${sessionScope.id == null}">
						<!-- 회원가입 버튼  -->
						<li><a href="UserLoginForm.do" >로그인/회원가입<i class="bi bi-person-fill-add"></i></a></li>
						</c:if>
						
						<c:if test="${sessionScope.id != null && sessionScope.id.userId != 'admin'}">
						<!-- 마이페이지 버튼 -->
						
						<li><a href="myPage.do"><i class="bi bi-person-circle"></i></a></li>
						</c:if>
						
						<c:if test="${sessionScope.id != null && sessionScope.id.userId != 'admin'}">
						<!--장바구니  버튼-->
						<li><a href="#"><i class="bi bi-cart-check-fill"></i></i></a></li>
						</c:if>
						
						<c:if test="${sessionScope.id.userId == 'admin'}">
						<!-- 관리자페이지 버튼 -->
						<li><a href="managePage.do"><i class="bi bi-clipboard-data-fill"></i></a></li>
						</c:if>
						
						<c:if test="${sessionScope.id != null}">
						<!-- 로그아웃 버튼  -->
						<li><a href="user/logout.do"><i class="bi bi-box-arrow-left"></i></a></li>
						</c:if>
						
					</ul>
				</div>
			</div>
		</div>
<!-- 		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div> -->
	</div>
	
	<!-- 헤더섹션 종료 -->
	
	<!--#########################################################################################  -->
	<!-- 검색창섹션 -->
	<section class="hero">
	<div class="row "><br/><br/></div>
		<div class="container">	    
			<div class="row ">
			<div class="col-sm-3">
            <div class="header__logo">
			<a href="MainPage.do"><img src="/soribook/resources/Main/img/soribookLogoAll.png" alt=""><br/></a>
				</div>	
			</div>		
				<div class="col-lg-9">			
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#" method="post">
								
																							
								<input type="text" placeholder="검색어를 입력하세요">
								<button type="submit" class="site-btn">SEARCH</button>						
							</form>	
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- 검색창 섹션 종료 -->




	<!-- Js Plugins -->
<!-- 	<script src="/soribook/resources/Main/js/jquery-3.3.1.min.js"></script>
	<script src="/soribook/resources/Main/js/bootstrap.min.js"></script>
	<script src="/soribook/resources/Main/js/jquery.nice-select.min.js"></script>
	<script src="/soribook/resources/Main/js/jquery-ui.min.js"></script>
	<script src="/soribook/resources/Main/js/jquery.slicknav.js"></script>
	<script src="/soribook/resources/Main/js/mixitup.min.js"></script>
	<script src="/soribook/resources/Main/js/owl.carousel.min.js"></script>
	<script src="/soribook/resources/Main/js/main.js"></script> -->

</body>

</html>