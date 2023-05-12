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
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

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
</head>

<body>
<!--  header section -->
<jsp:include page="header.jsp"></jsp:include>
<!--  header section end -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                    <h2 class="my-2">장바구니</h2>
                    
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product"></th>
                                    <th>가격</th>
                                    
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <input type="hidden" name="userTel" id="userTel" value="${sessionScope.id.userTel}">
                                 <!-- 장바구니 상품 시작 -->
                            <tbody id="cartListTable">

                             <!-- 장바구니 상품 위치 -->

                            </tbody>
                             <!-- 장바구니 상품 끝 -->
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                    			<!-- 쇼핑 계속하기는 뒤로가기로 구현 -->
                        <a class="primary-btn cart-btn"  onclick="history.back()">쇼핑 계속하기</a>
                      			  <!-- 장바구니 새로고침은 새로고침 구현 -->
                        <a class="primary-btn cart-btn cart-btn-right"  onclick="location.reload()"><span class="icon_loading"></span>
                            장바구니 새로고침</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>장바구니 종합</h5>
                        <ul>
                            <li>상품 개수 <span> </span></li>
                            <li>총 가격 <span> </span></li>
                        </ul>
                        <a href="#" class="primary-btn" id="pay">결제하기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

    <!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer Section End -->

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

var params = {"userTel" : $("#userTel").val() };

//장바구니 전체 가격 구하는 함수
function updateTotalPrice() {
    var total = 0;
    $('.shoping__cart__price').each(function() {
        var price = Number($(this).text().replace('원', '')); 
        total += price;
    });
    $('.shoping__checkout ul li:nth-child(2) span').text(total.toLocaleString() + '원');
}

//장바구니 전체 상품 개수 구하는 함수
function updateTotalAmount() {
    var total = 0;
    $('.shoping__cart__price').each(function() {
        var price = Number($(this).text().replace('원', '')); 
        total += price;
    });
    $('.shoping__checkout ul li:nth-child(1) span').text(total + '개');
}

function cartListAll(){
	$.ajax({
		url : "cartListAll.do"
		,type     : "POST"
		,data     : params
		,dataType : 'JSON'
		,success  : function(data) {
			$("#cartListTable").empty();
			let count = $(".cartBookNo").length;
			console.log(count)
			
			$.each(data.data,function(index, element){
				
				var str = "";
				str = str
				+'<tr><td class="shoping__cart__item">'
				+'<input type="hidden" name="cartBookNo" class="cartBookNo" id="cartBookNo" value="'
				+element.cartBookNo
				+'">'
				+'<input type="hidden" name="bookNo" id="bookNo" value="'
				+element.bookNo
				+'">'
				+'<img src="'
				+element.bookImg
				+'" width="100" height="150" alt="">'
				+'<h5>'
				+element.bookTitle
				+'</h5>'
				+'</td>'
				+'<td class="shoping__cart__price">'
				+parseInt(element.bookPrice, 10).toLocaleString()
				+'원'
				+'</td>'
				+'<td class="shoping__cart__item__close">'
				+'<span class="icon_close" id="cartListDelete'
				+element.cartBookNo
				+'" ></span>'
				+'</td>'
				+'</tr>';
				$('#cartListTable').append(str);
				updateTotalPrice();
				
			});
		}
		,error: function(){
			alert("cartListAll 실패!!")
		}
	})
	
}

$(function(){

 	window.onload = cartListAll();

	//cartListDelete 삭제 ajax
	$(document).on("click",'[id^="cartListDelete"]',(function(e){
		e.preventDefault()
			var params = {
			"bookNo" :  $(this).closest('tr').find('#bookNo').val(),
			"userTel" : $("#userTel").val(),
			"cartBookNo" : $(this).closest('tr').find('#cartBookNo').val()
		};
		console.log(params)
		 $.ajax({
			url : "cartListDelete.do"
			,type    : "POST"
			,data 	 :	params
			,success : function(){
				cartListAll();
				}
			,error   : function(){
			}
		})  // end of ajax
	})) // end of cartListDelete function
	
	

})
</script>



</body>

</html>