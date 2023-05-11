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
    <title> 고객센터 </title>

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
                            <h4>고객센터</h4>                          
                            <ul>
                                <li><a href="serviceCenter.do">-공지사항</a></li>
                                <li><a href="qna.do">-1:1문의</a></li>                                                               
                            </ul>                          
                        </div>
                      </div>
                      </div>
                      
                      <div class="col-lg-9 col-md-5">
                      <div class="notice">
                      
                      <jsp:include page="notice.jsp" />
                      </div>
                      
                      
                      </div>  
                </div>
        </div>
    </section>
    <!-- Product Section End -->
 <jsp:include page="footer.jsp"></jsp:include>



</body>


</html>