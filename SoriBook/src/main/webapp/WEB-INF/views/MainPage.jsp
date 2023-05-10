<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/Main/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/style.css" type="text/css">
    <link rel="stylesheet" href="/path/to/jquery.bxslider.css">
    


 
    
</head>

<body>


<jsp:include page="header.jsp"></jsp:include>
<hr/>
<!--#########################################################################################  -->
    <!-- 베스트셀러 슬라이더 -->
    <section class="categories">

        <div class="container">
            <div class="row">
            
                <div class="categories__slider owl-carousel">
                <c:forEach var='bookvo' items='${bookimg}' begin="0" end="9">
                    <div class="col-lg-12">

                        <div class="categories__item set-bg">
                       		<img src='${ bookvo.bookImg }'/>
                            <h5><a href="#">${bookvo.bookTitle}</a></h5>
                        </div>
                    </div>                    
                    </c:forEach>
                </div>
                <div class="section-title">
                <h7><베스트셀러></h7>
                </div>
                <div class="categories__slider owl-carousel">
                <c:forEach var='bookvo' items='${bookimg}' begin="0" end="9" >
                    <div class="col-lg-3">

                        <div class="categories__item set-bg">
                       		<img src='${ bookvo.bookImg }'/>
                            <h5><a href="#">${bookvo.bookTitle}</a></h5>
                        </div>
                    </div>                    
                    </c:forEach>
                </div>
                <div class="section-title">
                <h7><행사상품리스트></h7>
                </div>
                
                <div class="categories__slider owl-carousel">
                <c:forEach var='bookvo' items='${bookimg}' begin="0" end="9" >
                    <div class="col-lg-3">

                        <div class="categories__item set-bg">
                       		<img src='${ bookvo.bookImg }'/>
                            <h5><a href="#">${bookvo.bookTitle}</a></h5>
                        </div>
                    </div>                    
                    </c:forEach>
                </div>
                <div class="section-title">
                <h7><신간리스트></h7>
                </div>
            </div>
        </div>
    </section>
    <!-- 베스트셀러 슬라이더 엔드 -->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>이달의 행사</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="resources/Main/img/월간.JPG" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 2023, 05</li>
                                
                            </ul>
                            <h5><a href="#">소리북 선정 월간취미책 5월호</a></h5>
                            <p>당신은 사건 현장에 있습니다. 시즌2 </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="resources/Main/img/20만구독.JPG" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 2023, 02~</li>
                                
                            </ul>
                            <h5><a href="#">소리북 구독 20만 감사제</a></h5>
                            <p> 구독자 이북 구매시 1000원 추가 할인! </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="resources/Main/img/도스토옙스키.JPG" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 2023, 05</li>
                                
                            </ul>
                            <h5><a href="#">러시아 대문호와 만나다</a></h5>
                            <p>19세기부터 20세기 러시아 문호들의 작품들과 만나는 시간, 지금 바로 구독상품을 확인해보세요. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->

  

 <jsp:include page="footer.jsp"></jsp:include>

    <!-- Footer Section End -->
        <!-- Js Plugins -->
    <script src="resources/Main/js/jquery-3.3.1.min.js"></script>
    <script src="resources/Main/js/bootstrap.min.js"></script>
    <script src="resources/Main/js/jquery.nice-select.min.js"></script>
    <script src="resources/Main/js/jquery-ui.min.js"></script>
    <script src="resources/Main/js/jquery.slicknav.js"></script>
    <script src="resources/Main/js/mixitup.min.js"></script>
    <script src="resources/Main/js/owl.carousel.min.js"></script>
    <script src="resources/Main/js/main.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/path/to/jquery.bxslider.min.js"></script>
    



</body>

</html>