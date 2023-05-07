<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>소리북 관리자</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<link rel="stylesheet" type="text/css" href="/test/resources/mabagerPage/css/ui.css">
<link rel="stylesheet" type="text/css" href="/test/resources/mabagerPage/css/leekoon.css">
</head>
<body>

	
	<section id="wrap">
		<h1>소리북 관리자</h1>
		<div id="divheader">
		<header id="header">
			<strong class="logo_box"><img src="/test/resources/mabagerPage/images/mainLogo.png" alt="이지스퍼블리싱"></strong>
			<nav>        
				<ul>       
					<li data-rol="menu1"><a href="#">상품관리</a></li>        
					<li data-rol="menu2"><a href="#">카테고리 관리</a></li>        
					<li data-rol="menu3"><a href="#">공지사항 관리</a></li>        
					<li data-rol="menu4"><a href="#">문의 관리</a></li>
					<li data-rol="menu5"><a href="#">이벤트 관리</a></li>
					<li data-rol="menu6"><a href="#">매출 통계</a></li>    
				</ul> 
			</nav>
		</header> 
		</div>
		
		<div id="divcontainer">
		<section id="container">
		  	<section id="menu1" class="content">
		  	 	<h2>회사소개</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap">
		  	 			<h3 class="pargrph_tit">이지스퍼블리싱</h3>
		  	 			<div class="pargrph">
			                <div class="text_box">
			                  <h4>"사람을 구체적으로 도와주는 책"</h4>
			                  <p>
			                  이지스퍼블리싱(주)의 책에는 '사람들에게 구체적으로 도움이 되는 책'을 만든다는 출판 가치가 담겨 있습니다. 2010년 5월 출범한 이지스퍼블리싱(주)는 크게 두 영역의 책을 출간합니다. IT 실용 도서와 학습 분야 도서입니다. IT 교재와 사진 책 등 실용서는 이지스퍼블리싱 브랜드로, 학습과 자녀교육 도서는 이지스에듀 브랜드로 출간하고 있습니다. 
			                  </p>
			                </div>
			                <div class="text_box">
			                  <h4>이지스퍼블리싱의 미션</h4>
			                  <p>
			                  사람에게 구체적으로 도움을 주는 책, 우리는 열심히 사는 사람들에게 도움이 되고 싶습니다. 우리는 책을 출간하기 전에 질문할 것입니다. "이 책이 사람들에게 도움이 됩니까?" 정보의 지름길을 만들어 빠르게 원하는 곳으로 가도록 도와주는 책. 손에 잡히는 이익을 얻을 수 있도록 도움이 되는 책을 만들고 싶습니다.
			                  </p>
			                </div>
			                <div class="text_box">
			                  <h4>조직관 </h4>
			                  <p>
			                  이지스퍼블리싱(주)에 참여하는 모든 사람에게 도움을 주고 싶습니다. 함께 참여해서 만드는 기쁨, 세상에 도움을 주는 뿌듯함을 느끼며 책을 만들고, 우리의 미래를 원하는 대로 스스로 만드는 터전. 기여한 바, 공정한 분배가 이루어지고 영광을 함께 나누는 곳. 그곳이 바로 이지스퍼블리싱(주)입니다.
			                  </p>
			                </div>
			                <div class="text_box">
			                  <h4>대표 시리즈 </h4>
			                  <p>
			                  이지스퍼블리싱의 대표적인 시리즈는 &#60;Do it! 시리즈&#62;입니다. 특히 2012~2015년까지 ‘Do it! 안드로이드 앱 프로그래밍’은 IT 분야 1~2위에 오르며 많은 독자의 사랑을 받고 있습니다. 또한 2014년, 국립중앙도서관의 컴퓨터 IT 분야 대출 1위 도서는 바로 ‘Do it! html5+css3 웹 표준의 정석’이었습니다.
			                  </p>
			                </div>
			                <div class="text_box">
			                  <h4>Do it! 시리즈 소개</h4>
			                    <p>
			                    세상의 속도를 따라잡고 싶다면 Do it! 변화의 속도를 즐기게 될 것입니다. 두잇 시리즈를 보는 독자들은 빨리 변하는 세상 속에서 뒤따라가는 것이 아니라 세상의 속도를 따라잡고 그 안에서 미래를 주도할 수 있는 리더가 될 수 있습니다. 두잇 시리즈는 대학교재로 인기가 높습니다.
			                    </p>
			                </div>
			              </div>
		  	 		</section>
		  	 	</div>
		  	</section>
		  	<section id="menu2" class="content">
		  	 	<h2>도서소개</h2>
		  	 	<div class="conbox">
		  	 		<section class="content_wrap">
		  	 			<h3>도서상세내용</h3>
		  	 			<!--도서 상세 정보-->
		  	 			<div class="book_detail">
		  	 				<article class="notebook">
		  	 					<div class="detail_content">
		  	 						<div class="img_book">
		  	 							<img src="/test/resources/mabagerPage/images/book1.png" alt="Do it! HTML5+CSS3 웹 표준의 정석 <개정판>" />
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
			                        <li data-url="files/book1.html"><img src="/test/resources/mabagerPage/images/book1.png" alt="Do it! HTML5+CSS3 웹 표준의 정석 <개정판>" /></li>
			                        <li data-url="files/book2.html"><img src="/test/resources/mabagerPage/images/book2.png" alt="Do it! 프런트엔드 웹 디자인 입문 - 전면 개정판" /></li>
			                        <li data-url="files/book3.html"><img src="/test/resources/mabagerPage/images/book3.png" alt="Do it! 웹 프로그래밍을 위한 자바스크립트 기본 편" /></li>
			                        <li data-url="files/book4.html"><img src="/test/resources/mabagerPage/images/book4.png" alt="Do it! 자바스크립트 + 제이쿼리 - 전면 개정판" /></li>
			                        <li data-url="files/book5.html"><img src="/test/resources/mabagerPage/images/book5.png" alt="Do it! 웹 사이트 기획 입문" /></li>
			                        <li data-url="files/book6.html"><img src="/test/resources/mabagerPage/images/book6.png" alt="Do it! 반응형 웹 만들기" /></li>
			                        <li data-url="files/book7.html"><img src="/test/resources/mabagerPage/images/book7.png" alt="Do it! Vue.js 입문" /></li>
			                        <li data-url="files/book8.html"><img src="/test/resources/mabagerPage/images/book8.png" alt="Do it! 쉽게 만드는 워드프레스 웹사이트" /></li>
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
		    
		<footer>
		  	<address>(04003)서울특별시 마포구 잔다리로 109 TEL (02)325-1722 FAX (02)326-1723</address>    
		  	<p>Copyright(c)2015 이지스퍼블리싱㈜ EasysPublishing Co., Ltd. All Rights Reserved</p> 
		  	<a href="https://www.facebook.com/easyspub" class="face" title="페이스북으로 이동"></a>    
		  	<a href="https://twitter.com/easyspub" class="twit" title="트위터로 이동"></a>    
		  	<a href="https://www.instagram.com/easyspub_book/" class="instar" title="인스타그램으로 이동"></a>
		</footer> 
	</section>
	

	
	<script type="text/javascript" src="/test/resources/mabagerPage/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/test/resources/mabagerPage/js/ui.js"></script>
</body>
</html>

 


