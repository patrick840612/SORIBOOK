<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 마이페이지 </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/soribook/resources/Main/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/soribook/resources/Main/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/soribook/resources/Main/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/soribook/resources/Main/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/soribook/resources/Main/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/soribook/resources/Main/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/soribook/resources/Main/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/soribook/resources/Main/css/style.css" type="text/css">
    
    

     <!-- Js Plugins -->
    <script src="/soribook/resources/Main/js/jquery-3.3.1.min.js"></script>
    <script src="/soribook/resources/Main/js/bootstrap.min.js"></script>
    <script src="/soribook/resources/Main/js/jquery.nice-select.min.js"></script>
    <script src="/soribook/resources/Main/js/jquery-ui.min.js"></script>
    <script src="/soribook/resources/Main/js/jquery.slicknav.js"></script>
    <script src="/soribook/resources/Main/js/mixitup.min.js"></script>
    <script src="/soribook/resources/Main/js/owl.carousel.min.js"></script>
    <script src="/soribook/resources/Main/js/main.js"></script>

<!-- jQuery 라이브러리를 불러옵니다. -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- jQuery UI 라이브러리를 불러옵니다. -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<!-- jQuery UI 라이브러리의 datepicker() 메서드를 사용하여 달력을 생성합니다. -->
<script>
$(document).ready(function() {
	  var date = new Date();
	  date.setMonth(date.getMonth() + 1); // 한 달 전 날짜로 설정
	  $("#datepicker").datepicker({dateFormat: 'yy-mm-dd'});
	  $("#datepicker").datepicker("setDate", date);
	});
	
$(document).ready(function() {
	  var date = new Date();
	  date.setMonth(date.getMonth() - 3); // 한 달 전 날짜로 설정
	  $("#datepicker1").datepicker({dateFormat: 'yy-mm-dd'});
	  $("#datepicker1").datepicker("setDate", date);
	});
	
$(document).ready(function() {
	  var date = new Date();
	  date.setMonth(date.getMonth() +3); // 한 달 전 날짜로 설정
	  $("#datepicker2").datepicker({dateFormat: 'yy-mm-dd'});
	  $("#datepicker2").datepicker("setDate", date);
	});
</script>


    
</head>

<body>
    <!-- Page Preloder -->


    
<jsp:include page="header.jsp"></jsp:include>


    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>나의 계정</h4>
                            <ul>
                                <li><a href="#">나의 소리북</a></li>
                                <li><a href="#">회원정보관리</a></li>
                                <li>구독신청<input type=button value="구독하기"></li>
                                <li>구독만료일<input type="text" id="datepicker">
                                </li>

                            </ul>
                        </div>
                      </div>
                      </div>
                      
                      <div class="col-lg-9 col-md-5">
                      <div class="myPageBook">
                      <jsp:include page="myPageBook.jsp" />
                      </div>
                      
                      
                      </div>  
                </div>
        </div>
    </section>
    <!-- Product Section End -->
 <jsp:include page="footer.jsp"></jsp:include>



</body>


</html>