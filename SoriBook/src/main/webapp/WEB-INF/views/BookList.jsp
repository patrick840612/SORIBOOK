<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ProductList</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    
<% 

String categoryno = request.getParameter("categoryno");
String categoryname = request.getParameter("categoryname");

%>
    <script type="text/javascript">

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

</script>
    
</head>
<body>

<c:set var="categoryNo" value="${param.categoryno}" />
<c:set var="categoryName" value="${param.categoryname}" />

 				<div class="col-lg-12 col-md-12">
					<section class="product spad">
					
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
                                    <h6><a id="bookClick" href="#">${bookList.bookTitle}</a></h6>
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
    </section>
				</div>
			</div>
	</section>

     <!-- Js Plugins -->

</body>
</html>