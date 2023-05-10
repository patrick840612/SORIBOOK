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
	
// 상품관리 화면 입장
$('#side2').click(function(){
	// 작가 목록 호출
	writerList();
	// 출판사 목록 호출
	companyList();
	// 카테고리 목록 호출
	categoryList();
	
	
	// 출판사 등록
	$('#companyAdd').click(function(){
		var param = $('#bookFrm').serialize();
		
		$.ajax({
			type : 'post',
			url : 'companyInsert.do',
			data : param,
			success : function(){
				companyList();
				$('#companyName').val('');
			},
			error : function(err){
				console.log(err);
			}
		});
		
	}); // 작가 등록 완료
	
	// 작가 등록
	$('#writerAdd').click(function(){
		var param = $('#bookFrm').serialize();
		
		$.ajax({
			type : 'post',
			url : 'writerInsert.do',
			data : param,
			success : function(){
				writerList();
				$('#writerName').val('');
				$('#writerDetail').val('');
			},
			error : function(err){
				console.log(err);
			}
		});
		
	}); // 작가 등록 완료
	
	// 카테고리 옵션 변경시 상품목록 테이블 출력
	$('#BookCategoryNo').change(bookSimpleList); 
	
	// 카테고리 옵션 변경시 상품목록 테이블 출력 함수
	function bookSimpleList(){

		if($('#BookCategoryNo option:selected').val() != '선택'){
			var param = { categoryNo : $('#BookCategoryNo option:selected').val() , majorCategoryNo : $('#menu2 input[type="radio"][name="majorCategoryNo"]:checked').val() }
			
			$.ajax({
				type : 'post',
				url : 'getSelectedCategoryBookList.do',
				data : param,
				dataType : 'json',
				success : function(result){
					var bookTable = $('#BookSimpleList');
					bookTable.empty();
					bookTable.append($('<tr><th>책제목</th><th>출판사</th><th>가격</th></tr>'));
					
					for(row of result){
						var tr = $('<tr/>');
						var bookTitle = $('<td/>').text(row.bookTitle);
						var companyName = $('<td/>').text(row.companyName);
						var bookPrice = $('<td/>').text(row.bookPrice);
						var hidden = $('<input type="hidden" value="'+row.bookNo+'">');
						tr.append(bookTitle);
						tr.append(companyName);
						tr.append(bookPrice);
						tr.append(hidden);
						bookTable.append(tr);
					}
				},
				error : function(err){
					console.log(err);
				}
			});
			
		}
	} // 카테고리 옵션 변경시 상품목록 테이블 출력 함수 끝
	
	// 출판사선택 변경시 데이터 출력
	$('#companyNo').change(function(){
		
		var param = { companyNo : $('#companyNo option:selected').val() }
		
		if($('#companyNo option:selected').val() == '신규'){
			$('#companyName').val('');
		}
		
		$.ajax({
			type : 'post',
			url : 'getSelectedCompany.do',
			data : param,
			dataType : 'json',
			success : function(result){
				console.log(result);
			 	$('#companyName').val(result.companyName);				
			},
			error : function(err){
				console.log(err);
			}
		});
	}); // 출판사선택 변경시 데이터 출력 끝

	
	// 작가선택 변경시 데이터 출력
	$('#writerNo').change(function(){
		
		var param = { writerNo : $('#writerNo option:selected').val() }
		
		if($('#writerNo option:selected').val() == '신규'){
			$('#writerName').val('');
			$('#writerDetail').val('');
		}
		
		$.ajax({
			type : 'post',
			url : 'getSelectedWriter.do',
			data : param,
			dataType : 'json',
			success : function(result){
			 	$('#writerName').val(result.writerName);
				$('#writerDetail').val(result['writerDetail']);
			},
			error : function(err){
				console.log(err);
			}
		});
	}); // 작가선택 변경시 데이터 출력 끝
	
	// 상품등록  
	$('#bookInsert').click(function(){
		
		if($('#BookCategoryNo option:selected').val() == '선택'){
			alert('카테고리를 선택해 주세요');
		}else if($('#writerNo option:selected').val() == '신규'){
			alert('작가를 선택해 주세요');
		}else if($('#companyNo option:selected').val() == '신규'){
			alert('출판사를 선택해 주세요');
		}else {	
			var form = $('#bookFrm')[0];   
			var formData = new FormData(form);
			
			$.ajax({
				type : 'post',
				url : 'insertBook.do',
				data : formData,
				contentType: false,
				processData: false,
				cache : false,
				enctype : 'multipart/form-data',
	    	    success: function() {
	    	    	console.log("success : ");
	    	    	$('#bookNo').val('');
	    	    	$('#bookPrice').val('');
	    	    	$('#bookTitle').val('');
	    	    	$('#bookSyno').val('');
	    	    	$('#categoryName').val('');
	    	    	$('#writerName').val('');
	    	    	$('#writerDetail').val('');
	    	    	$('#companyName').val('');
	    	    	$('#fileImg').val('');
	    	    	$('#fileText').val('');
	    	    	$('#fileAudio').val('');
	    	    	$('#bookPdate').val('');
	    	    	bookSimpleList();
		        },
		        error:function(e){
		            console.log("error : ", e);
		        }
			});
		}
		

	}); // 상품등록 끝
	
	
	// 카테고리 목록 호출 함수
	function categoryList(){
		
		var param = { majorCategoryNo : $('#menu2 input[type="radio"][name="majorCategoryNo"]:checked').val() };
		
		$.ajax({
			type : 'post',
			url : 'getCategoryList.do',
			data : param,
			dataType : 'json',
			success : function(result){
				var categoryList = $('#BookCategoryNo');
				categoryList.empty();
				categoryList.append($('<option>선택</option>'));
				for(row of result){
					var option = $('<option value="'+row['categoryNo']+'">'+row['categoryName']+'</option>')
					categoryList.append(option);
				}
			},
			error : function(err){
				alert('error');
				console.log(err);
			}
			
		});
	} // 카테고리 목록 호출 함수 끝
	
	// 카테고리 대분류 선택시 카테고리 옵션 변경
	$('#menu2 input[type="radio"][name="majorCategoryNo"]').change(function(){
		categoryList(); 
	});
	
	// 출판사 목록 호출 함수
	function companyList(){
		
		$.ajax({
			type : 'post',
			url : 'getCompanyList.do',
			dataType : 'json',
			success : function(result){
				var companyList = $('#companyNo');
				companyList.empty();
				companyList.append($('<option>신규</option>'));
				for(row of result){
					var option = $('<option value="'+row['companyNo']+'">'+row['companyNo']+' '+row['companyName']+'</option>')
					companyList.append(option);
				}
			},
			error : function(err){
				alert('error');
				console.log(err);
			}
			
		});
	} // 출판사 목록 호출 함수 끝
	
	// 작가 목록 호출 함수
	function writerList(){
		
		$.ajax({
			type : 'post',
			url : 'getWriterList.do',
			dataType : 'json',
			success : function(result){
				var writerList = $('#writerNo');
				writerList.empty();
				writerList.append($('<option>신규</option>'));
				for(row of result){
					var option = $('<option value="'+row['writerNo']+'">'+row['writerNo']+' '+row['writerName']+'</option>')
					writerList.append(option);
				}
			},
			error : function(err){
				alert('error');
				console.log(err);
			}
			
		});
	} // 작가 목록 호출 함수 끝
	

		
}); // 사이드바(상품관리) 끝
		
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
			  	 			<div id="tripleBookManager">
								<div id="leftBookManager">
									상품번호 <input type="text"  name="bookNo" id="bookNo" disabled="disabled"><br/>
									상품가격 <input type="text"  name="bookPrice" id="bookPrice"><br/>
									제목<input type="text"  name="bookTitle" id="bookTitle" class="bookinput"><br/>
									내용<br/>
									<textarea name="bookSyno" id="bookSyno" rows="18" cols="45"></textarea>
								</div>
								<div id="centerBookManager">
									<input type='radio' name='majorCategoryNo'  value='1' checked="checked">국내도서
									<input type='radio' name='majorCategoryNo'  value='2'>외국도서	<br/>	
									 카테고리 <select name="categoryNo" id="BookCategoryNo"></select><br/>
									 작가선택 <select name="writerNo" id="writerNo"></select><br/>
									 작가이름 <input type="text"  name="writerName" id="writerName"><br/>
									 작가설명 <input type="text"  name="writerDetail" id="writerDetail"><br/>
									 출판사선택 <select name="companyNo" id="companyNo"></select><br/>
									 출판사명 <input type="text"  name="companyName" id="companyName"><br/>
									 출판일자 <input type="date"  name="bookPdate" id="bookPdate"><br/><br/>
									 구독용상품여부 :  
									 <input type='radio' name='bookSub'  value='1' checked="checked">예
									 <input type='radio' name='bookSub'  value='0'>아니오<br/><br/>
									 썸네일 이미지 <input type="file" name='fileImg' id='fileImg' accept=".jpg, .jpeg, .png"><br/><br/>
									 텍스트 파일 <input type="file"  name='fileText' id='fileText' class="upload" accept=".pdf"><br/><br/>
									 오디오 파일 <input type="file" name='fileAudio' id='fileAudio' class="upload" accept=".mp3"><br/>
								</div>
								<div id="rightBookManager">
									<table id="BookSimpleList" >
									<tr><th>책제목</th><th>출판사</th><th>가격</th></tr>
									</table>
								</div>
							</div>
							<div id="bookButton">
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

 


