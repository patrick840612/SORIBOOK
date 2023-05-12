<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>


    
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
    
    <link rel="stylesheet" href="resources/Main/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/Main/css/style.css" type="text/css">
    <link rel="stylesheet" href="/path/to/jquery.bxslider.css">
    

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- jQuery and Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
  // 검색어를 받아옴
  String keyword = request.getParameter("keyword");

  // 데이터베이스 연결 정보 설정
  String url = "jdbc:oracle:thin:@192.168.0.32:1521:xe";
  String username = "soribook";
  String password = "1234";

  // 데이터베이스 연결
  Connection conn = DriverManager.getConnection(url, username, password);

  // 검색 쿼리 실행
  String sql = "SELECT * FROM book WHERE booktitle LIKE ?";
  PreparedStatement stmt = conn.prepareStatement(sql);
  stmt.setString(1, "%" + keyword + "%");
  ResultSet rs = stmt.executeQuery();

  // 검색 결과를 반복하여 처리
  while (rs.next()) {
    // 결과 데이터를 가져와 처리
    String resultData = rs.getString("column");
    // 처리된 결과를 화면에 표시
    out.println(resultData);
  }

  // 리소스 해제
  rs.close();
  stmt.close();
  conn.close();
  
%>



 <jsp:include page="footer.jsp"></jsp:include>
 
  <!-- Footer Section End -->
        <!-- Js Plugins -->

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