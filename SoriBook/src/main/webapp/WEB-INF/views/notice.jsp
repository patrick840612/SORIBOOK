<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h7>공지사항</h7>
<hr/>
 
<table>
    <tbody>

<br/>

<div class="notice_search">
<input type="text" placeholder="공지사항 검색">
<button type="submit">검색</button>

</div>
<br/>
<br/>
<br/>
<br/>
<br/>	
 <table class="table">
   <thead>
    
      <th scope="col">#</th>
      <th scope="col">제목</th>
      <th scope="col">작성일</th> 
    
  </thead>
<c:forEach var="notice" items="${noticeList}">         


  <tbody>
    <tr>
      <th scope="row">${notice.noticeNo}</th>
      <td><a href="noticeDetail.do?noticeno=${notice.noticeNo}">${notice.noticeTitle}</a></td>
      <td>${notice.noticeDate}</td>
    </tr>   
  </tbody>
  
</c:forEach> 
</table>   


</body>
</html>