<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>소리북 관리자</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<link rel="stylesheet" type="text/css" href="/soribook/resources/managerPage/css/ui.css">
<link rel="stylesheet" type="text/css" href="/soribook/resources/managerPage/css/leekoon.css">
<link rel="stylesheet" href="/soribook/resources/Main/css/font-awesome.min.css" type="text/css">
<script type="text/javascript" src="/soribook/resources/managerPage/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/soribook/resources/managerPage/js/ui.js"></script>
<script type="text/javascript" src="/soribook/resources/managerPage/js/ui2.js"></script>
<script type="text/javascript" src="/soribook/resources/managerPage/js/ui5.js"></script>
<script type="text/javascript">
$(function(){
	

	

		
});
</script>
</head>
<body>
	<section id="wrap">
		<h1>소리북 관리자</h1>
		<div id="divheader">
		<header id="header">
			<br/><br/>
			<a href="MainPage.do">
			<strong class="logo_box">
			<img src="/soribook/resources/Main/img/SORIBOOK.png" alt="소리북">
			</strong>
			</a>
			<br/><br/><br/><br/>
			<nav id="manageMenu">        
				<ul>       
					<li><a href="managePage.do">관리자 홈</a></li>
					<li data-rol="menu1"><a id="side1" href="#">카테고리 관리</a></li>        
					<li data-rol="menu2"><a id="side2" href="#">상품관리</a></li>        
					<li data-rol="menu3"><a href="#">공지사항 관리</a></li>        
					<li data-rol="menu4"><a href="#">문의 관리</a></li>
					<li data-rol="menu5"><a id="side5" href="#">이벤트 관리</a></li>
					<li data-rol="menu6"><a href="#">매출 통계</a></li>    
				</ul> 
			</nav>
			<br/><br/><br/><br/>

		</header> 
		<footer id="foot">
			  	<address class="addr">(08505)서울 금천구 가산디지털2로 101 TEL +82 10.1234.5678 Email Service@SoriBook.com</address>    
			  	<p class="addr">SoriBook 2023 Copyright © SoriBook Corp. All Rights Reserved &nbsp;<i class="fa fa-heart" aria-hidden="true"></i> 
			  			<a href="MainPage.do" target="_blank">SoriBook</a></p> 
			  	<a href="https://www.facebook.com/easyspub" class="face" title="페이스북으로 이동"></a>    
			  	<a href="https://twitter.com/easyspub" class="twit" title="트위터로 이동"></a>    
			  	<a href="https://www.instagram.com/easyspub_book/" class="instar" title="인스타그램으로 이동"></a>
		</footer> 
		</div>
		
		<div id="divcontainer">
		<section id="container">
		  	<section id="menu1" class="content">
		  	 	<h2>카테고리 관리</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap">
		  	 			<div class="pagecontentmenu1">
		  	 			<form name="CatecoryFrm" method="post" id='CatecoryFrm'>
						<input type='radio' name='majorCategoryNo'  value='1' checked="checked">국내도서 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type='radio' name='majorCategoryNo'  value='2'>외국도서	
						<br/><br/><hr/><br/>
						<input type="button" id='up'	value="▲"/>
						<br/>
						<input type="button" id='down'	value="▼"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select name="categoryNo" size="7" id="selectCategory"></select> 
						<br/><br/>
						&nbsp;&nbsp;카테고리 명
						<input type="text" name="categoryName" id="categoryName"/>
						<br/><br/><hr/><br/>
						<input type="button" value="카테고리 추가" class="button" id='categoryInsert'/>
						<input type="button" value="카테고리 수정" class="button" id='categoryUpdate'/>
						<input type="button" value="카테고리 삭제" class="button" id='categoryDelete'/>
						</form>
						</div>
		  	 		</section>
		  	 	</div>
		  	</section>
		  	<section id="menu2" class="content">
		  	 	<h2>상품관리</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap" id="content_wrap2">
		  	 			<div class="pagecontentmenu2">
			  	 			<form name="bookFrm" method="post" id='bookFrm'> 
			  	 			<div class="tripleBookManager">
								<div class="leftBookManager">
									상품번호 <input type="text"  name="bookNo" id="bookNo" disabled="disabled"><br/>
									상품가격 <input type="text"  name="bookPrice" id="bookPrice"><br/>
									제목<input type="text"  name="bookTitle" id="bookTitle" class="bookinput"><br/>
									내용<br/>
									<textarea name="bookSyno" id="bookSyno" rows="18" cols="45"></textarea>
								</div>
								<div class="centerBookManager">
									<input type='radio' name='majorCategoryNo'  value='1' checked="checked">국내도서
									<input type='radio' name='majorCategoryNo'  value='2'>외국도서	<br/>	
									 카테고리 <select name="categoryNo" id="BookCategoryNo"></select><br/>
									 작가선택 <select name="writerNo" id="writerNo" class="selWC"></select><br/>
									 작가이름 <input type="text"  name="writerName" id="writerName"><br/>
									 작가설명 <input type="text"  name="writerDetail" id="writerDetail"><br/>
									 출판사선택 <select name="companyNo" id="companyNo" class="selWC"></select><br/>
									 출판사명 <input type="text"  name="companyName" id="companyName"><br/>
									 출판일자 <input type="date"  name="bookPdate" id="bookPdate"><br/><br/>
									 구독용상품여부 :  
									 <input type='radio' name='bookSub'  value='1' checked="checked">예
									 <input type='radio' name='bookSub'  value='0'>아니오<br/><br/>
									 썸네일 이미지 <input type="file" name='fileImg' id='fileImg' accept=".jpg, .jpeg, .png"><br/><br/>
									 텍스트 파일 <input type="file"  name='fileText' id='fileText' class="upload" accept=".pdf"><br/><br/>
									 오디오 파일 <input type="file" name='fileAudio' id='fileAudio' class="upload" accept=".mp3"><br/>
								</div>
								<div class="rightBookManager">
									<input type="text" name="searchBookKeyword" id="searchBookKeyword" placeholder="책제목을 입력하세요" class="searchBookInput">
									<input type="button" name="searchBookBTN" id="searchBookBTN" value="검색" class="searchBookInput"><br/><br/>
									<table id="BookSimpleList" >
									<tr><th>책제목</th><th>출판사</th><th>가격</th></tr>
									</table>
								</div>
							</div>
							<div class="bookButton">
							<br/>
							<input type="button" value="상품 등록" class="button" id='bookInsert'/>
							<input type="button" value="상품 수정" class="button" id='bookUpdate'/>
							<input type="button" value="상품 삭제" class="button" id='bookDelete'/>
							<input type="button" value="작가 등록" class="button" id='writerAdd'/>
							<input type="button" value="출판사 등록" class="button" id='companyAdd'/>
							</div>
							</form>
		  	 			</div>
		  	 		</section>
		  	 	</div>
		  	</section>
		  	<section id="menu3" class="content">
		  	 	<h2>공지사항 관리</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap"></section>
		  	 	</div>
		  	</section>
		  	<section id="menu4" class="content">
		  	 	<h2>문의 관리</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap"></section>
		  	 	</div>
		  	</section>
		  	<section id="menu5" class="content">
		  	 	<h2>이벤트 관리</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap">
		  	 			<div class="pagecontentmenu5">
			  	 			<form name="eventFrm" method="post" id='eventFrm'> 
			  	 				<div class="tripleBookManager">
								<div class="leftBookManager5">
									이벤트번호 <input type="text"  name="eventNo" id="eventNo" disabled="disabled"><br/><br/>
									이벤트명 <input type="text"  name="eventName" id="eventName"><br/><br/>
									할인 <input type="text"  name="eventDiscount" id="eventDiscount">
									<select name="eventOption" id="eventOption">
										<option value="eventDCP">%</option>
										<option value="eventDCW">원</option>
									</select><br/><br/>
									시작일 <input type="date" name="eventStartDate" id="eventStartDate" class="eventDates"><br/><br/>
									종료일 <input type="date" name="eventEndDate" id="eventEndDate" class="eventDates"><br/><br/>
									이벤트 설명<br/>
									<textarea name="eventDetail" id="eventDetail" rows="12" cols="42"></textarea><br/>
								</div>
								<div class="centerBookManager5"><br/><br/>
									 이벤트 이미지 추가 <input type="file" name='fileEventImg' id='fileEventImg' accept=".jpg, .jpeg, .png"><br/><br/>
									 이벤트 이미지 <input type="button" id="cancelPreview" value="취소"><br/>
									 <div id="imgPlace" ></div><br/>
								</div>
								<div class="rightBookManager5">
									<table id="eventListTable" >
									
									
									</table>
								</div>
							</div>
							<div class="eventButton">
							<br/>
							<input type="button" value="이벤트 등록" class="button" id='eventInsert'/>
							<input type="button" value="이벤트 수정" class="button" id='eventUpdate'/>
							<input type="button" value="이벤트 삭제" class="button" id='eventDelete'/>
							</div>
			  	 			</form>
			  	 		</div>	
		  	 		</section>
		  	 	</div>
		  	</section>
		  	<section id="menu6" class="content">
		  	 	<h2>매출 통계</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap"></section>
		  	 	</div>
		  	</section>
		</section>
		</div>
	</section>
	
</body>
</html>

 


