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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">


</head>


<% 

String bookno = request.getParameter("bookno");

%>

<body>



<jsp:include page="header.jsp"></jsp:include>

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row shadow-none p-3 bg-light rounded">
            <div class="col-lg-3 col-md-3 ">
					<div class="sidebar">
					<!-- 카테고리 목록 sidebar 시작 -->
						<div class="sidebar__item category_sidebar shadow p-3 mb-5 bg-body rounded ">
							<ul>
								<li><h4>구독 전용상품</h4></li>
								<li><h4>TOP 100</h4></li>
							</ul>
							<hr/>
							<ul>
								<li><h4>국내도서</h4></li>
	 								<c:forEach items="${category }" var="category">
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
					</div>
					</div>
					<!-- 카테고리 목록 sidebar 끝 -->
	
                <div class="col-lg-4 col-md-4 ">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="${bookDetail.bookImg }" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl=""
                                src="" alt="">
<!--                             <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt=""> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 ">
                
                    <div class="product__details__text">
                        <h3>${bookDetail.bookTitle}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <div class="product__details__price">${bookDetail.bookPrice} 원</div>
                        <%-- <p>${bookDetail.bookSyno }</p> --%>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="primary-btn">장바구니</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                        	<li><b>장르</b> <span>${bookDetail.categoryName}</span></li>
                            <li><b>출판사</b> <span>${bookDetail.companyName}</span></li>
                            <li><b>출판일자</b> <span>${bookDetail.bookPdate }<samp>
                            <li><b>작가</b> <span>${bookDetail.writerName }</span></li>
                           	<c:forEach items="${bookCnt }" var="bookCnt">
                            <li><b>구매수</b> <span>${bookCnt.bookCnt }</span></li>
                            </c:forEach>
                            <li><b>공유하기</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                      
                        </ul>
                    </div>
                </div>
              
                <div class="col-lg-12 shadow-none p-3  bg-light rounded">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">책소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">작가소개</a>
                            </li>
<!--                             <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Reviews <span>(1)</span></a>
                            </li> -->
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>줄거리</h6>
                                    <p>${bookDetail.bookSyno }</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>작가 : ${bookDetail.writerName}</h6>
                                    <p>${bookDetail.writerDetail }</p>
                                </div>
                            </div>
<!--                             <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam</p>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 shadow-none p-3  bg-light rounded">
                    <div class="section-title related__product__title">
                        <h3>댓글</h3>
                        
                        
                        <!-- 댓글폼 시작 -->
                        <div class="container mt-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-8">
            <div class="d-flex flex-column comment-section">
            <!-- 댓글 입력창 -->
            <div class="bg-light p-2">
                    <div class="d-flex flex-row align-items-start"><img class="rounded-circle" src="https://i.imgur.com/RpzrMR2.jpg" width="40"><textarea class="form-control ml-1 shadow-none textarea"></textarea></div>
                    <div class="mt-2 text-right"><button class="btn btn-primary btn-sm shadow-none" type="button">Post comment</button><button class="btn btn-outline-primary btn-sm ml-1 shadow-none" type="button">Cancel</button></div>
                </div>
                <!-- 댓글 입력창 끝 -->
                
                <!-- 댓글 출력 창 -->
                <div class="bg-white p-2">
                    <div class="d-flex flex-row user-info"><img class="rounded-circle" src="https://i.imgur.com/RpzrMR2.jpg" width="40">
                        <div class="d-flex flex-column justify-content-start ml-2"><span class="d-block font-weight-bold name">Marry Andrews</span><span class="date text-black-50">Shared publicly - Jan 2020</span></div>
                    </div>
                    <div class="mt-2">
                        <p class="comment-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>
                <!-- 댓글 출력 창 끝 -->
                <div class="bg-white">
                    <div class="d-flex flex-row fs-12">
                        <div class="like p-2 cursor"><i class="fa fa-thumbs-o-up"></i><span class="ml-1">Like</span></div>
                        <div class="like p-2 cursor"><i class="fa fa-commenting-o"></i><span class="ml-1">Comment</span></div>
                        <div class="like p-2 cursor"><i class="fa fa-share"></i><span class="ml-1">Share</span></div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>
 <!-- 댓글폼 끝 -->
 
 
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- Related Product Section End -->
<jsp:include page="footer.jsp"></jsp:include>



<script src="/soribook/resources/Main/js/jquery-3.3.1.min.js"></script>
<script src="/soribook/resources/Main/js/bootstrap.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.nice-select.min.js"></script>
<script src="/soribook/resources/Main/js/jquery-ui.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.slicknav.js"></script>
<script src="/soribook/resources/Main/js/mixitup.min.js"></script>
<script src="/soribook/resources/Main/js/owl.carousel.min.js"></script>
<script src="/soribook/resources/Main/js/main.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
// 댓글 데이터를 딱 10개만 가지고 오도록 하는 파라미터 모음
var params={"curPage":1, "rowSizePerPage" : 10
        ,"reCategory" : "FREE", "reParentNo": ${freeBoard.boNo} };
        
//ajax 요청해서 댓글리스트를 받아오는 함수.
function fn_reply_list(){
	//아작스 호출해서 DB에 있는 reply 데이터 가지고 옵니다.
	//가지고오면(success)하면 댓글 div 만들어줍니다. 
	//list를 가지고오니까 jquery 반복문 써서 div 여러개 만들어주면됩니다.
    // 다 했으면 param의 curPage=2로 바꿔줍시다
}//function fn_reply_list

$(document).ready(function(){ //documnet가 준비될 때 
    //더보기 버튼
    $("#id_reply_list_more").on("click",function(e){
		//fn_reply_list에서 마지막에 curPage=2로 바꿔줍니다. 
        //그래서 그냥 fn_reply_list()하면 다음 댓글 10개 가져옵니다.
	});

    //등록버튼
    $("#btn_reply_regist").on("click",function(e){
		// form태그안에 input hidden으로 필요한거 넣기
        //가장가까운 form찾은 후 ajax 호출(data는 form.serialize(), )
	    //성공 : 등록 글 내용부분 지우기,  댓글영역초기화( list_area.html('), curPage=1, fn_reply_list)
        //실패 : error : req.status==401이면 login으로   location.href
    });//등록버튼

    
  	//수정버튼 : 댓글 영역안에 있는 수정버튼만  이벤트 등록 
    $("#id_reply_list_area").on("click", 'button[name="btn_reply_edit"]'
            ,function(e){
       //현재 버튼의 상위 div(한개 댓글) 찾기
	       //div에서 현재 댓글 내용을 modal에 있는 textarea에 복사
       //div태그의 data-re-no 값을 modal에 있는 input name="reNo" 태그의 value값에 복사 
       //복사 후   .modal('show')
    });//수정버튼


    //모달창 저장 버튼
    $("#btn_reply_modify").on("click", function(e){
		//가장 가까운form 찾기 , ajax 호출(  data:form.serialzie()
        // 성공 :  modal찾은 후 modal('hide')
        // 현재 모달에 있는 reNo, reContent 찾기
        // 댓글영역에서 re_no에 해당하는 댓글 찾은 후 안의 내용 re_content로 변경
    });//모달창 저장버튼


    //삭제버튼
    $("#id_reply_list_area").on("click", 'button[name="btn_reply_delete"]'
            ,function(e){
		//가장 가까운 div 찾기, 
		//reNo,  reMemId(현재 로그인 한 사람의 id) 구하기
        // ajax 호출(reNo, reMemeId보내기) reMemId는 본인이 쓴 글인지 확인하는데 쓰임 (BizAccessFailException)
        //성공  후 해당 div.remove 
    }); //삭제버튼


});
</script>


</body>

</html>