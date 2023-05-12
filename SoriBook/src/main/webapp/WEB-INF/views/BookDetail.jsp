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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

</head>


<%
	String bookno = request.getParameter("bookno");
%>

<body>

	<!-- Button trigger modal -->


	<jsp:include page="header.jsp"></jsp:include>

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row shadow-none p-3 bg-light rounded">
				<div class="col-lg-3 col-md-3 ">
					<div class="sidebar">
						<!-- 카테고리 목록 sidebar 시작 -->
						<div
							class="sidebar__item category_sidebar shadow p-3 mb-5 bg-body rounded ">
							<ul>
								<li><h4>구독 전용상품</h4></li>
								<li><h4>TOP 100</h4></li>
							</ul>
							<hr />
							<ul>
								<li><h4>국내도서</h4></li>
								<c:forEach items="${category }" var="category">
									<c:if test="${category.majorCategoryNo == '1'}">
										<li><a
											href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}
												(${category.cateCnt })</a></li>
									</c:if>
								</c:forEach>
								<li><h4>외국도서</h4></li>
								<c:forEach items="${category }" var="category">
									<c:if test="${category.majorCategoryNo == '2' }">
										<li><a
											href="CategoryPage.do?categoryno=${category.categoryNo}&categoryname=${category.categoryName}">${category.categoryName}
												(${category.cateCnt })</a></li>
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
							<img data-imgbigurl="" src="" alt="">
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
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
						</div>
						<div class="product__details__price">${bookDetail.bookPrice}
							원</div>
						<%-- <p>${bookDetail.bookSyno }</p> --%>
						<div class="product__details__quantity">
							<div class="quantity">
								<div class="pro-qty">
									<input type="text" value="1">
								</div>
							</div>
						</div>
						
						<!-- 장바구니 버튼 -->
						<a href="#" class="primary-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" >장바구니</a> <a href="#"
							class="heart-icon"><span class="icon_heart_alt" id="cartcart"></span></a>
						<!-- 장바구니 버튼 끝 -->
						
						<!-- Modal 시작 -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="exampleModalLabel">상품 선택</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
									선택상품 : ${bookDetail.bookTitle}<br/>
									가격 	 : ${bookDetail.bookPrice} 원
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="modalClose">닫기</button>
										<!-- addCartForm 시작 -->
										<form action="addCart.do" name="addCartFrm" method="post">
										<input type="hidden" class="form-control" id="bookNo" name="bookNo" value="${param.bookno}">
										<input type="hidden" class="form-control" id="userTel" name="userTel" value="${sessionScope.id.userTel }">
										<button type="button" class="btn btn-primary" id="addCart" >장바구니 담기</button>
										</form>
										<!-- addCartForm 끝 -->
									</div>
								</div>
							</div>
						</div>
						<!-- Modal 끝 -->
						
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
												<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
													class="fa fa-twitter"></i></a> <a href="#"><i
													class="fa fa-instagram"></i></a> <a href="#"><i
													class="fa fa-pinterest"></i></a>
											</div></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-12 shadow-none p-3  bg-light rounded">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">책소개</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">작가소개</a></li>
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
						<hr />
						<h3>댓글</h3>



						<!-- 댓글폼 시작 -->
						<div class="container mt-5">
							<div class="d-flex justify-content-center row">
								<div class="col-md-8">
									<div class="d-flex flex-column comment-section">
										<!-- 댓글 입력창 ************** -->
										<form name="frm_reply"
											action="<c:url value='/reply/replyRegist' />" method="post"
											onclick="return false;">
											<input type="hidden" name="bookNo" value="${param.bookno}">
											<input type="hidden" name="userTel"
												value="${sessionScope.id.userTel}">
											<div class="bg-light p-2">
												<div class="d-flex flex-row align-items-start">
													<i class="bi bi-person-circle " style="font-size: 2rem"></i>
													<textarea name="replyContent"
														class="form-control ml-1 shadow-none textarea"></textarea>
												</div>
												<div class="mt-2 text-right">
													<button id="btn_reply_regist"
														class="btn btn-primary btn-sm shadow-none" type="button">등록</button>
													<button
														class="btn btn-outline-primary btn-sm ml-1 shadow-none"
														type="button">취소</button>
												</div>
											</div>
										</form>
										<!-- 댓글 입력창 끝 -->

										<!-- 댓글 출력 창 -->
										<div id="id_reply_list_area" class="bg-white p-2">
											<!-- 											<div class="d-flex flex-row user-info">
												<img class="rounded-circle"
													src="https://i.imgur.com/RpzrMR2.jpg" width="40">
												<div class="d-flex flex-column justify-content-start ml-2">
													<span class="d-block font-weight-bold name">회원ID출력</span>회원ID

													<span class="date text-black-50">댓글 생성 날짜</span>댓글날짜
												</div>
											</div>
											<div class="mt-2">
												<p class="comment-text">댓글내용</p>댓글내용
											</div> -->
										</div>
										<!-- 댓글 출력 창 끝 -->

										<div class="bg-white">
											<div class="d-flex flex-row fs-12">
												<div class="like p-2 cursor">
													<i class="fa fa-thumbs-o-up"></i><span class="ml-1">Like</span>
												</div>
												<div class="like p-2 cursor">
													<i class="fa fa-commenting-o"></i><span class="ml-1">Comment</span>
												</div>
												<div class="like p-2 cursor">
													<i class="fa fa-share"></i><span class="ml-1">Share</span>
												</div>
											</div>
										</div>
										<div class="row text-center" id="id_reply_list_more">
											<a id="btn_reply_list_more"
												class="btn btn-sm btn-default col-sm-10 col-sm-offset-1">
												<span class="glyphicon glyphicon-chevron-down"
												aria-hidden="true"></span> 더보기
											</a>
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
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" ></script>

	<script type="text/javascript">
	
		//파라메터 bookno 가져오기
		$.urlParam = function(name) {
			var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)')
					.exec(window.location.href);
			return results[1] || 0;
		}
		//10개씩만 불러오도록 params 초기 설정
		var params = {
			"curPage" : 1,
			"rowSizePerPage" : 10,
			"bookNo" : $.urlParam('bookno')
		};

		function fn_reply_list() {

			//아작스 호출해서 DB에 있는 reply 데이터 가지고 옵니다.
			//가지고오면(success)하면 댓글 div 만들어줍니다. 
			//list를 가지고오니까 jquery 반복문 써서 div 여러개 만들어주면되겠죠?
			$.ajax({
						url : "<c:url value='/reply/replyList.do' />",
						type : "POST",
						data : params,
						dataType : 'JSON' //받을 때 data를 어떻게 받을지  
						,success : function(data) {console.log(data); $.each(data.data,function(index, element) {
												var str = "";
												str = str
														+ '<div class="d-flex flex-row user-info">'
														+ '<i class="bi bi-person-circle " style="font-size: 2rem"></i>'
														+ '<div class="d-flex flex-column justify-content-start ml-2">'
														+ '<span class="d-block font-weight-bold name">'
														+ element.userId
														+ '</span>'
														+ '<span class="date text-black-50">'
														+ element.replyDate
														+ '</span></div></div>'
														+ '<div class="mt-2">'
														+ '<p class="comment-text">'
														+ element.replyContent
														+ '</p>'
												str = str + '</div>' + '</div>';
												$('#id_reply_list_area')
														.append(str);
												
											});
							params.curPage += 1;
						}//success
					}); //ajax
		}//function fn_reply_list

		$(document).ready(function() { //documnet가 준비될 때 
			fn_reply_list(); //freeView처음에 댓글 10개 보여주기
			// 등록버튼,     수정,삭제버튼,  모달의 등록버튼
			//더보기 버튼
			$("#id_reply_list_more").on("click", function(e) {
				e.preventDefault();
				fn_reply_list();

			});

			//등록버튼
			$("#btn_reply_regist").on("click", function(e) {

				e.preventDefault();

				$form = $(this).closest("form[name='frm_reply']");
				$.ajax({
					url : "<c:url value='/reply/replyRegist.do'/>",
					type : "POST",
					dataType : "JSON",
					data : $form.serialize(),
					success : function(data) {
						console.log(data);
						$form.find("textarea[name='replyContent']").val('');
						$("#id_reply_list_area").html('');
						params.curPage = 1;
						fn_reply_list();
					}
				/* ,error : function(req,st,err){
				if(req.status==401){
					location.href="<c:url value='/login/login.wow'  />";				
				} 
				} */
				});//ajax 
			});//등록버튼

			/* //수정버튼  function(){}은 동적으로 생긴 태그에도 적용이 되는거같아.. 
			//$().on("click") 동적으로생긴 태그에 적용됨
			$("#id_reply_list_area").on("click", 'button[name="btn_reply_edit"]'
					,function(e){
				//modal 아이디=id_reply_edit_modal
				//현재 버튼의  상위 div(하나의 댓글 전체)를 찾으세요
				// 그 div에서 현재 댓글의 내용 =modal에 있는 textarea에 복사 
				// 그 div태그의 data-re-no에 있는 값   $().data('re-no')
				//=modal에 있는  < input name=reNo>태그에 값으로 복사  
				//2개 복사했으면   $('#id_reply_edit_modal').modal('show')
				$btn=$(this);  //수정버튼
				$div=$btn.closest('div.row');   //버튼의 댓글 div
				$modal=$('#id_reply_edit_modal'); //modal div 
				$pre=$div.find('pre'); 
				 var content=$pre.html(); 
				 $textarea=$modal.find('textarea'); 
				
				 $textarea.val(content);  
				 var reNo=$div.data('re-no');	
				 $modal.find('input[name=reNo]').val(reNo);
				 $modal.modal('show');
			});//수정버튼
			

			//모달창 저장 버튼
			$("#btn_reply_modify").on("click", function(e){
				e.preventDefault(); 
				$form= $(this).closest('form[name="frm_reply_edit"]');
				$.ajax({
					url : "<c:url value='/reply/replyModify.wow' />"
					,type : "POST"
					,data : $form.serialize()
					,dataType : "JSON"
					,success: function(){
						$modal=$('#id_reply_edit_modal'); 
						$modal.modal('hide');
						
						var reNo=$modal.find('input[name=reNo]').val();
						var reContent=$modal.find('textarea').val();
						$("#id_reply_list_area").find("div[data-re-no='"+reNo+"']").find("pre").html(reContent);
					}
				});//ajax
			});//모달창 저장버튼
			
			
			//삭제버튼
			$("#id_reply_list_area").on("click", 'button[name="btn_reply_delete"]'
					,function(e){
				e.preventDefault();
				$div=$(this).closest('.row');
				reNo=$div.data('re-no');
				reMemId="${USER_INFO.userId}";
				$.ajax({
					url : "<c:url value='/reply/replyDelete.wow' />"
					,type : "POST"
					,data : {"reNo" : reNo, "reMemId" : reMemId}
					,dataType : 'JSON'
					,success : function(){
						$div.remove();
					}
				});//ajax
			}); //삭제버튼 */
			
			//장바구니 담기 버튼
			$("#addCart").on("click", function(e) {
				e.preventDefault();

				$form = $(this).closest("form[name='addCartFrm']");
				$.ajax({
					url :'<c:url value='/addCart.do'/>',
					type : "POST",
					data : $form.serialize(),
					success : function() {
						$("#modalClose").trigger("click");
					}
				 ,error : function(){
				alert("실패")		
				}
				});//ajax 
			});//장바구니 담기버튼
			
			
		});
	</script>


</body>

</html>