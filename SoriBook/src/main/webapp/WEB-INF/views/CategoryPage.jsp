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
<title>Ogani | Template</title>

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



<!-- Js Plugins -->
<script src="/soribook/resources/Main/js/jquery-3.3.1.min.js"></script>
<script src="/soribook/resources/Main/js/bootstrap.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.nice-select.min.js"></script>
<script src="/soribook/resources/Main/js/jquery-ui.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.slicknav.js"></script>
<script src="/soribook/resources/Main/js/mixitup.min.js"></script>
<script src="/soribook/resources/Main/js/owl.carousel.min.js"></script>
<script src="/soribook/resources/Main/js/main.js"></script>

<% 

String categoryno = request.getParameter("categoryno");
String categoryname = request.getParameter("categoryname");
String bookUrl;
bookUrl = "BookList.jsp";

%>


<%-- <script type="text/javascript">

//이전 버튼 이벤트


function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "CategoryPage.do?categoryno=<%= categoryno%>&categoryname=<%= categoryname%>";
		url = url + "&page=" + page;
		url = url + "&range=" + range;
		location.href = url;

	}

//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "CategoryPage.do?categoryno=<%= categoryno%>&categoryname=<%= categoryname%>";
		url = url + "&page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "CategoryPage.do?categoryno=<%= categoryno%>&categoryname=<%= categoryname%>";
		url = url + "&page=" + page;
		url = url + "&range=" + range;

		location.href = url;

	}

</script> --%>




</head>



<body>
	<!-- Page Preloder -->

	<jsp:include page="header.jsp"></jsp:include>

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="sidebar">
					<!-- 카테고리 목록 sidebar 시작 -->
						<div class="sidebar__item">
							<ul>
								<li><h4>국내도서</h4></li>
	 								<c:forEach items="${category }" var="category">
										<c:if test="${category.majorCategoryNo == '1'}"> 
											<li><a href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}</a></li>
										</c:if>
									</c:forEach>
								<li><h4>외국도서</h4></li>
	 								<c:forEach items="${category }" var="category">
		 								<c:if test="${category.majorCategoryNo == '2' }"> 
											<li><a href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}</a></li>
										</c:if>
									</c:forEach>
							</ul>
						</div>
						<!-- 카테고리 목록 sidebar 끝 -->
						<div class="sidebar__item">
							<h4>Price</h4>
							<div class="price-range-wrap">
								<div
									class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
									data-min="10" data-max="540">
									<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
								</div>
								<div class="range-slider">
									<div class="price-input">
										<input type="text" id="minamount"> <input type="text"
											id="maxamount">
									</div>
								</div>
							</div>
						</div>
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Colors</h4>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="white"> White <input type="radio" id="white">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--gray">
								<label for="gray"> Gray <input type="radio" id="gray">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--red">
								<label for="red"> Red <input type="radio" id="red">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--black">
								<label for="black"> Black <input type="radio" id="black">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--blue">
								<label for="blue"> Blue <input type="radio" id="blue">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="green"> Green <input type="radio" id="green">
								</label>
							</div>
						</div>
						<div class="sidebar__item">
							<h4>Popular Size</h4>
							<div class="sidebar__item__size">
								<label for="large"> Large <input type="radio" id="large">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="medium"> Medium <input type="radio"
									id="medium">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="small"> Small <input type="radio" id="small">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="tiny"> Tiny <input type="radio" id="tiny">
								</label>
							</div>
						</div>
						<div class="sidebar__item">
							<div class="latest-product__text">
								<h4>Latest Products</h4>
								<div class="latest-product__slider owl-carousel">
									<div class="latest-prdouct__slider__item">
										<a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img
													src="/soribook/resources/Main/img/latest-product/lp-1.jpg"
													alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img
													src="/soribook/resources/Main/img/latest-product/lp-2.jpg"
													alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img
													src="/soribook/resources/Main/img/latest-product/lp-3.jpg"
													alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a>
									</div>
									<div class="latest-prdouct__slider__item">
										<a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img
													src="/soribook/resources/Main/img/latest-product/lp-1.jpg"
													alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img
													src="/soribook/resources/Main/img/latest-product/lp-2.jpg"
													alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img
													src="/soribook/resources/Main/img/latest-product/lp-3.jpg"
													alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Crab Pool Security</h6>
												<span>$30.00</span>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ProductList 페이지 삽입-->
				<div class="col-lg-9 col-md-9">
					<%-- <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>${param.categoryname}</h2>
                        </div>
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Default</option>
                                        <option value="0">Default</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>${listSize }</span> Books found</h6>
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
                    <div class="row">
                    
                    
                     <!-- 상품--> 
                     <c:forEach items="${bookListCnt}" var="bookList">
                     <div class="col-lg-4 col-md-6 col-sm-6"> 
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${bookList.bookImg}">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">${bookList.bookTitle}</a></h6>
                                    <h5>${bookList.bookPrice} 원 </h5>
                                </div>
                            </div>
                        </div>
						</c:forEach>
						<!-- 상품 끝 -->
						
						
	
                    
                    </div>
<!--                     <div class="product__pagination">
                       
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div> -->
                    
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
    </section> --%>
    <div id=include>
<jsp:include page="<%=bookUrl %>"></jsp:include>
    </div>
				</div>
			</div>
	</section>
	<!-- Product Section End -->
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script type="text/javascript">
$(function(){

/* $('#include').load('BookList.do'); 
	
$("#include-btn").click(function(){

	    //queryString 형식

	    //받는객체의 setXXX 를 타고 알아서 세팅됨

 	    var send;

	    $.ajax({
	        url:"MainPage.do",
	        data:send,
	        method: 'post',
	        success:function(data){
	            //page 자체를 받아서 div에 넣는식
	            alert(data);
	            $("#include").html(data);
	        },error:function(request,status,error){
	             alert("code:"+request.status+"\n"+"message:"
	             +request.responseText+"\n"+"error:"+error);
	         }
	    }) 

}) */

})
</script>
	




</body>


</html>