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
					<li data-rol="menu1"><a href="#">카테고리 관리</a></li>        
					<li data-rol="menu2"><a href="#">상품관리</a></li>        
					<li data-rol="menu3"><a href="#">공지사항 관리</a></li>        
					<li data-rol="menu4"><a href="#">문의 관리</a></li>
					<li data-rol="menu5"><a href="#">이벤트 관리</a></li>
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
		  	 			<div class="pagecontent">
		  	 			<form action="" name="CatecoryFrm" method="post" id='CatecoryFrm'> <!-- insertCategory.do getCategoryList.do updateCategory.do-->
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
						카테고리 명
						<input type="text" name="categoryName" id="categoryName"/>
						<br/><br/><hr/><br/>
						<input type="button" value="카테고리 추가" class="categorybutton" id='categoryInsert'/>
						<input type="button" value="카테고리 수정" class="categorybutton" id='categoryUpdate'/>
						<input type="button" value="카테고리 삭제" class="categorybutton" id='categoryDelete'/>
						</form>
						</div>
			
		  	 		</section>
		  	 	</div>
		  	</section>
		  	<section id="menu2" class="content">
		  	 	<h2>상품관리</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap">
		  	 			<h3>도서상세내용</h3>
		  	 			<!--도서 상세 정보-->
		  	 			<div class="book_detail">
		  	 				<article class="notebook">
		  	 					<div class="detail_content">
		  	 						<div class="img_book">
		  	 							<img src="/soribook/resources/managerPage/images/book1.png" alt="Do it! HTML5+CSS3 웹 표준의 정석 <개정판>" />
		  	 						</div>
		  	 						<section class="book_description">
		  	 							<h4>Do it! HTML5+CSS3 웹 표준의 정석 &#60; 개정판 &#62;</h4>
		  	 							<ul class="bullet_list">
											<li><em>저자 </em> 고경희</li>
											<li><em>발행일 </em> 2017-01-03</li>
											<li><em>사양 </em> 608쪽 | 188*257mm</li>
											<li><em>I S B N </em> 979-11-87370-68-0 13000</li>
											<li><em>정가 </em> 28,000 원</li>
											<li><em>상태 </em> 판매중</li>
										</ul>
										<p class="point_text">
											<strong>문과생도 컴맹도 아무 것도 몰라도 <br />이 한권으로 OK!</strong>
											이 책으로 공부하면 기초 태그부터 반응형 웹까지 한 번에 배울 수 있습니다. 자세한 설명과 간단명료한 많은 예제로 웹 표준의 정석을 익힐 수 있습니다.
										</p>
										<a href="http://easyspub.co.kr/20_Menu/BookView/119/PUB" class="commbtn pink" target="blank">구매사이트</a>
									</section>
								</div>
							</article>
						</div>
						<!--도서 리스트-->
						<div class="book_rollwrap">
							<button class="roll_left"></button>
							<button class="roll_right"></button>
							<div class="book_roll">
								<ul>
			                        <li data-url="files/book1.html"><img src="/soribook/resources/managerPage/images/book1.png" alt="Do it! HTML5+CSS3 웹 표준의 정석 <개정판>" /></li>
			                        <li data-url="files/book2.html"><img src="/soribook/resources/managerPage/images/book2.png" alt="Do it! 프런트엔드 웹 디자인 입문 - 전면 개정판" /></li>
			                        <li data-url="files/book3.html"><img src="/soribook/resources/managerPage/images/book3.png" alt="Do it! 웹 프로그래밍을 위한 자바스크립트 기본 편" /></li>
			                        <li data-url="files/book4.html"><img src="/soribook/resources/managerPage/images/book4.png" alt="Do it! 자바스크립트 + 제이쿼리 - 전면 개정판" /></li>
			                        <li data-url="files/book5.html"><img src="/soribook/resources/managerPage/images/book5.png" alt="Do it! 웹 사이트 기획 입문" /></li>
			                        <li data-url="files/book6.html"><img src="/soribook/resources/managerPage/images/book6.png" alt="Do it! 반응형 웹 만들기" /></li>
			                        <li data-url="files/book7.html"><img src="/soribook/resources/managerPage/images/book7.png" alt="Do it! Vue.js 입문" /></li>
			                        <li data-url="files/book8.html"><img src="/soribook/resources/managerPage/images/book8.png" alt="Do it! 쉽게 만드는 워드프레스 웹사이트" /></li>
			                      </ul>
							</div>
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
		  	 		<section class="content_wrap"></section>
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

 


