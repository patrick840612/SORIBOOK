<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
$('#content').click(function(){
	window.location.href="<%=bookList.bookAudio%>";
	
});

});
</script> --%>
</head>
<body>

<h7>나의 소리북</h7>
<hr/>
 
<table>
    <tbody>

<br/>
         <c:forEach var="book" items="${bookList}">
            <tr>
                <td> ${book.bookNo} </td>
                
                <td><img src="${book.bookImg}"></td>   
                <td><h4>『${book.bookTitle}』</h4><br/>―${book.writerName}</td>
                  
                <td>${book.paymentDate}</td>
                <%-- <td><button onclick="location.href='textViewer.do?bookNo=${book.bookNo}'">보기</button></td>   --%> 
                <td><button id="content" onclick="location.href='${book.bookContent}'">보기</button></td>         
                <%-- <td><button onclick="location.href='${book.bookAudio}'">오디오보기</button></td> --%>

        </c:forEach>
    </tbody>
</table>


</body>
</html>