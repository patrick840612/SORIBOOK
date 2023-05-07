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

<h4>나의 소리북</h4>

#도서명&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;주문일
<h2>1</h2>  
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Image</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="book" items="${BookList}">
            <tr>
                <td>${book.BookNo}</td>
                <td>${book.BookTitle}</td>
                <td><img src="${book.bookimg}"></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<button><a href="book.do">보기</a></button>

</body>
</html>