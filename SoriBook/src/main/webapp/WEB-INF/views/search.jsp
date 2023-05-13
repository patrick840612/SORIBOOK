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


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->

<link rel="stylesheet" href="resources/Main/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/Main/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="resources/Main/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="resources/Main/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/Main/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/Main/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/Main/css/style.css"
	type="text/css">
<link rel="stylesheet" href="/path/to/jquery.bxslider.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row shadow-none p-3 mb-5 bg-light rounded">
				<div class="col-lg-3 col-md-3">
					<div class="sidebar">
					<!-- 카테고리 목록 sidebar 시작 -->
						<div class="sidebar__item shadow p-3 mb-5 bg-body rounded">
						<ul>
								<li><h4><a href="subBookList.do">구독 전용상품</a></h4></li>
								<li><h4><a href="top100.do">탑 100</a></h4></li>
							</ul>
							<hr/>
							<ul>
								<li><h4>국내도서</h4></li>
	 								<c:forEach items="${category}" var="category">
										<c:if test="${category.majorCategoryNo == '1'}"> 
											<li><a href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}  (${category.cateCnt })</a></li>
										</c:if>
									</c:forEach>
								<li><h4>외국도서</h4></li>
	 								<c:forEach items="${category }" var="category">
		 								<c:if test="${category.majorCategoryNo == '2' }"> 
											<li><a href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}  (${category.cateCnt })</a></li>
										</c:if>
									</c:forEach>
							</ul>
						</div>
						<!-- 카테고리 목록 sidebar 끝 -->
						</div>
						</div>
						<div class="col-lg-9 col-md-9">
					

 				<div class="col-lg-12 col-md-12">
					<section class="product spad">
					
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>검색 결과</h2>
                        </div>
                    <div class="filter__item">
                        <div class="row">
                            
                        
                        </div>
                    </div>                   

					<table>
						<tbody>

							<br />
							<c:forEach items="${SearchBookList}" var="SearchBookList">
								<tr>
									
						<td><a href="BookDetail.do?bookno=${SearchBookList.bookNo}"><img src="${SearchBookList.bookImg}"></a>
									
									</td>
							
						 <td><a href="BookDetail.do?bookno=${SearchBookList.bookNo}"><h4>『${SearchBookList.bookTitle}』</h4></a></td>
									
								</tr>
									
							</c:forEach>
							
						</tbody>
					</table>
                    </div>
                    

	<!-- pagination{e} -->
	
                </div>
            </div>
        </div>
    </section>
				</div>
			</div>
	</section>






	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Footer Section End -->
	<!-- Js Plugins -->

	<script src="resources/Main/js/jquery.nice-select.min.js"></script>
	<script src="resources/Main/js/jquery-ui.min.js"></script>
	<script src="resources/Main/js/jquery.slicknav.js"></script>
	<script src="resources/Main/js/mixitup.min.js"></script>
	<script src="resources/Main/js/owl.carousel.min.js"></script>
	<script src="resources/Main/js/main.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="/path/to/jquery.bxslider.min.js"></script>

</body>
</html>