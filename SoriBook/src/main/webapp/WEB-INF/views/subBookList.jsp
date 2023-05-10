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
<link rel="stylesheet"
	href="/soribook/resources/Main/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/elegant-icons.css" type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/nice-select.css" type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/style.css"
	type="text/css">

<%-- <% 

String categoryno = request.getParameter("categoryno");
String categoryname = request.getParameter("categoryname");

%> --%>
    <script type="text/javascript">

//이전 버튼 이벤트


function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "subBookList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;

	}

//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "subBookList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "subBookList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;

	}

</script>

</head>



<body>
	<!-- Page Preloder -->

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
                            <h2>구독전용상품</h2>
                        </div>
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                
                                    <select class="form-select" id="sortId">
                                    	<option value="">-선택-</option>
                                        <option value="1">가나다순</option>
                                        <option value="2">판매순</option>
                                        <option value="3">최신순</option>
                                    </select>
                                
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>${listSize}</span> Books found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 상품--> 
                      
                    <div class="row">  
                    <c:forEach items="${bookListCnt}" var="subBook">                    
                     <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">              
                          <a id="bookClick" href="BookDetail.do?bookno=${subBook.bookNo}">
                           <div class="product__item__pic set-bg" onclick="location.href='BookDetail.do?bookno=${subBook.bookNo}'" data-setbg="${subBook.bookImg}">                     
                                </a>
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                 </div>  
                                <div class="product__item__text">
                                    <h6><a id="bookClick" href="BookDetail.do?bookno=${subBook.bookNo}">${subBook.bookTitle}</a></h6>
                                    <h5>${subBook.bookPrice} 원 </h5>  
                                </div>   
                            </div>
                        </div>
                        </c:forEach>
                        <!-- 상품 끝 -->
                    </div>
                    <div id="paginationBox">

		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item">
				<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>

			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item" value="${pagination.page == idx ? 'active' : ''}">
				<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item">
				<a class="page-link" href="#" onClick="fn_next('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
			</c:if>

		</ul>

	</div>

	<!-- pagination{e} -->
	
                </div>
            </div>
        </div>
    </section>
				</div>
			</div>
	</section>
    
	<!--#############################################################################  -->
	<jsp:include page="footer.jsp"></jsp:include>
	

</body>

 <!-- Js Plugins -->
 <script src="/soribook/resources/Main/js/jquery-3.3.1.min.js"></script>
<script src="/soribook/resources/Main/js/bootstrap.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.nice-select.min.js"></script>
<script src="/soribook/resources/Main/js/jquery-ui.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.slicknav.js"></script>
<script src="/soribook/resources/Main/js/mixitup.min.js"></script>
<script src="/soribook/resources/Main/js/owl.carousel.min.js"></script>
<script src="/soribook/resources/Main/js/main.js"></script>
<script type="text/javascript">


</script>
</html>