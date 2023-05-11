$(document).ready(function(){
	
	// 상품 수정
	$('#bookUpdate').click(function(){
		if($('#bookNo').val() == ''){
			alert('수정할 상품을 선택해 주세요');
		}else if($('#bookPrice').val() == ''){
			alert('상품 가격을 입력해주세요');			
		}else if($('#bookTitle').val() == ''){
			alert('상품 제목을 입력해주세요');
		}else if($('#BookCategoryNo option:selected').val() == '선택'){
			alert('카테고리를 선택해주세요');
		}else if($('#writerNo option:selected').val() == '신규'){
			alert('작가를 선택해주세요');
		}else if($('#companyNo option:selected').val() == '신규'){
			alert('출판사를 선택해주세요');
		}else if($('#bookPdate').val() == ''){
			alert('출판일을 선택해주세요')
		}else if($('#fileImg').val() == ''){
			alert('상품 이미지를 업로드해주세요')
		}else {	
			var form = $('#bookFrm')[0];   
			var formData = new FormData(form);
			formData.append( 'bookNo' , $('#bookNo').val() );
			
			$.ajax({
				type : 'post',
				url : 'updateBook.do',
				data : formData,
				contentType: false,
				processData: false,
				cache : false,
				enctype : 'multipart/form-data',
	    	    success: function() {
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
	    	    	$('input[name="bookSub"]').filter('[value="1"]').prop('checked',true);
					$('#writerNo').val('신규');
					$('#companyNo').val('신규');
					$('#BookCategoryNo').val('선택');
	    	    	bookSimpleList();
		        },
		        error:function(e){
		            console.log("error : ", e);
		        }
			});
		}
	}); // 상품 수정 끝	
	
	// 상품목록 테이블 출력 함수
	function bookSimpleList(){

		
			let param11 = { categoryNo : $('#BookCategoryNo option:selected').val() , majorCategoryNo : $('#menu2 input[type="radio"][name="majorCategoryNo"]:checked').val(), searchBookKeyword : $('#searchBookKeyword').val() }
			
			$.ajax({
				type : 'post',
				url : 'getSelectedCategoryBookList.do',
				data : param11,
				dataType : 'json',
				success : function(result){
					var bookTable = $('#BookSimpleList');
					bookTable.empty();
					bookTable.append($('<tr><th>책제목</th><th>출판사</th><th>가격</th></tr>'));
					
					for(row of result){
						var tr = $('<tr class="bookListTr"/>');
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
			
		
	} // 상품목록 테이블 출력 함수 끝
	
	// 상품 삭제
	$('#bookDelete').click(function(){
		
		if($('#bookNo').val() == ''){
			alert('삭제할 상품을 선택해 주세요');
		}else{
			let param12 = { bookNo : $('#bookNo').val() }
			
			$.ajax({
				type : 'post',
				url : 'deleteBook.do',
				data : param12,
				success : function(){
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
	    	    	$('input[name="bookSub"]').filter('[value="1"]').prop('checked',true);
					$('#writerNo').val('신규');
					$('#companyNo').val('신규');
					$('#BookCategoryNo').val('선택');
					bookSimpleList();
				},
				error : function(err){
					console.log(err);
				}
			});
		}
	}); // 상품 삭제 끝
	
	// 테이블 책 목록 클릭시 화면에 책정보 가져오기
	$('#BookSimpleList').on("click","tr[class='bookListTr']",function(){
		let param13 = { bookNo : $(this).find('input').val()}
		
		$.ajax({
			type : 'post',
			url : 'getBook.do',
			data : param13,
			dataType : 'json',
			success : function(result){
				// 날짜 형식 변환
				var dateArr = result.bookPdate.split(" ");
				var bookPdate = dateArr[0];
				$('#bookPdate').val(bookPdate);

				$('#bookNo').val(result.bookNo);
				$('#bookPrice').val(result.bookPrice);
				$('#bookTitle').val(result.bookTitle);
				$('#bookSyno').val(result.bookSyno);
				$('input[name="bookSub"]').filter('[value="'+result.bookSub+'"]').prop('checked',true);
				var dataW = { writerNo : result.writerNo }
				writerChange(dataW);
				$('#writerNo').val(result.writerNo);
				var dataC = { companyNo : result.companyNo }
				companyChange(dataC);
				$('#companyNo').val(result.companyNo);
				$('#BookCategoryNo').val(result.categoryNo);
				
				/* $('#fileImg').val(href="./resources/bookImg/"+result.bookImg); */ // 업로드된 파일 지우기 실패
			},
			error : function(err){
				console.log(err);
			}
		});
		
	}); // 테이블 책 목록 클릭시 화면에 책정보 가져오기 끝
	
	// 출판사선택 변경시 데이터 출력 함수
	function companyChange(param){

			if($('#companyNo option:selected').val() == '신규'){
				$('#companyName').val('');
			}
			
			$.ajax({
				type : 'post',
				url : 'getSelectedCompany.do',
				data : param,
				dataType : 'json',
				success : function(result){
				 	$('#companyName').val(result.companyName);				
				},
				error : function(err){
					console.log(err);
				}
			});
	}// 출판사선택 변경시 데이터 출력 함수 끝
	
	// 작가선택 변경시 데이터 출력 함수
	function writerChange(param){
			
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
		} // 작가선택 변경시 데이터 출력 함수 끝
		
		// 출판사 등록
		$('#companyAdd').click(function(){
			let param14 = $('#bookFrm').serialize();
			
			$.ajax({
				type : 'post',
				url : 'companyInsert.do',
				data : param14,
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
			let param15 = $('#bookFrm').serialize();
			
			$.ajax({
				type : 'post',
				url : 'writerInsert.do',
				data : param15,
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
		
		// 카테고리 목록 호출 함수
		function categoryList(){
			
			var param16 = { majorCategoryNo : $('#menu2 input[type="radio"][name="majorCategoryNo"]:checked').val() };
			
			$.ajax({
				type : 'post',
				url : 'getCategoryList.do',
				data : param16,
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
			bookSimpleList(); 
		});
		
		// 검색버튼 클릭시 책제목 키워드 검색(카테고리별)
		$('#searchBookBTN').click(bookSimpleList); 
		// 검색창 엔터시 책제목 키워드 검색(카테고리별)
		$("#searchBookKeyword").keyup(function(keyNum) {
			  if (keyNum.keyCode == 13) {
				  bookSimpleList();
			  }
		});
		
		// 카테고리 옵션 변경시 상품목록 테이블 출력
		$('#BookCategoryNo').change(bookSimpleList); 
		
		// 출판사선택 변경시 데이터 출력
		$('#companyNo').change(function(){
			let param17 = { companyNo : $('#companyNo option:selected').val() }
			companyChange(param17);
		}); 
		


		
		// 작가선택 변경시 데이터 출력
		$('#writerNo').change(function(){
			let param18 = { writerNo : $('#writerNo option:selected').val() }
			writerChange(param18);
		}); 
		
		// 상품등록  
		$('#bookInsert').click(function(){
			
			if($('#bookPrice').val() == ''){
				alert('상품 가격을 입력해주세요');			
			}else if($('#bookTitle').val() == ''){
				alert('상품 제목을 입력해주세요');
			}else if($('#BookCategoryNo option:selected').val() == '선택'){
				alert('카테고리를 선택해주세요');
			}else if($('#writerNo option:selected').val() == '신규'){
				alert('작가를 선택해주세요');
			}else if($('#companyNo option:selected').val() == '신규'){
				alert('출판사를 선택해주세요');
			}else if($('#bookPdate').val() == ''){
				alert('출판일을 선택해주세요')
			}else if($('#fileImg').val() == ''){
				alert('상품 이미지를 업로드해주세요')
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
		    	    	$('input[name="bookSub"]').filter('[value="1"]').prop('checked',true);
						$('#writerNo').val('신규');
						$('#companyNo').val('신규');
						$('#BookCategoryNo').val('선택');
		    	    	bookSimpleList();
			        },
			        error:function(e){
			            console.log("error : ", e);
			        }
				});
			}
		}); // 상품등록 끝
	
	
// 상품관리 화면 입장
$('#side2').click(function(){
		// 작가 목록 호출
		writerList();
		// 출판사 목록 호출
		companyList();
		// 카테고리 목록 호출
		categoryList();
		// 상품목록 테이블 출력(최초 대분류별)
		setTimeout(() => {
			bookSimpleList();	
		}, 1000);
}); // 사이드바(상품관리) 끝		






	
	
}); // 온로드 end

