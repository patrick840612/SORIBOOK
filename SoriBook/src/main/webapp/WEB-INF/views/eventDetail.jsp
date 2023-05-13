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
<br/>
<!--#########################################################################################  -->
    <h7>${eventDetail.eventName}</h7>
    <hr/>
  
<br/>
               <div class="eventDetail">    
              <tr> 
                <td><img src="${eventDetail.eventImg}"></td>
               </tr>   
               <hr/>
                <br/>
                <br/>
                <br/>
                
                <div class="detail"></div>
                <tr>
                <td><h6>이벤트 내용</h6></td><br/>
                 
                <td> ${eventDetail.eventDetail}</td>
                </tr>
                </div>
        
           </div>       


    


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