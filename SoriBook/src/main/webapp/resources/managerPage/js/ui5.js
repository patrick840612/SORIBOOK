$(document).ready(function(){
	
	// 이벤트 이미지 선택시 미리보기
	$('#fileEventImg').change(function(){
		readURL(this);
	});
	function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      $('#imgPlace').append($('<img src="" id="previewImg" width="379" height="330">'))
		      $('#previewImg').attr('src', e.target.result);
		    }
		    reader.readAsDataURL(input.files[0]);
		  }
	} // 이벤트 이미지 선택시 미리보기 끝
	
	// 취소 버튼 클릭시 이미지 미리보기 취소
	$('#cancelPreview').click(function(){
		  $('#fileEventImg').val('');
		  $('#imgPlace').empty();
	}); // 취소 버튼 클릭시 이미지 미리보기 취소 끝

	
	// 이벤트(할인) 등록
	$('#eventInsert').click(function(){
		
		if($('#eventName').val()==''){
			alert('이벤트명을 입력해 주세요');
		}else if($('#eventDiscount').val()==''){
			alert('할인율(원)을 입력해 주세요');
		}else if($('#eventStartDate').val()==''){
			alert('이벤트 시작일을 입력해 주세요')
		}else if($('#eventEndDate').val()==''){
			alert('이벤트 종료일을 입력해 주세요')
		}else {
			let formEvent = $('#eventFrm')[0];
			let formDataEvent = new FormData(formEvent);
			
			if($('#eventOption option:selected').val()=='eventDCP'){
				formDataEvent.append('eventDCP',$('#eventDiscount').val());
				
				$.ajax({
					type : 'post',
					url : 'insertEventP.do',
					data : formDataEvent,
					contentType: false,
					processData: false,
					cache : false,
					enctype : 'multipart/form-data',
					success : function(){
						$('#eventName').val('');
						$('#eventDiscount').val('');
						$('#eventStartDate').val('');
						$('#eventEndDate').val('');
						$('#eventDetail').val('');
						$('#fileEventImg').val('');
						$('#imgPlace').empty();
						eventList();						
					},
					error : function(err){
						console.log(err);
						alert('error');
					}
				});
				

			}else if($('#eventOption option:selected').val()=='eventDCW'){
				formDataEvent.append('eventDCW',$('#eventDiscount').val());
				
				$.ajax({
					type : 'post',
					url : 'insertEventW.do',
					data : formDataEvent,
					contentType: false,
					processData: false,
					cache : false,
					enctype : 'multipart/form-data',
					success : function(){
						$('#eventName').val('');
						$('#eventDiscount').val('');
						$('#eventStartDate').val('');
						$('#eventEndDate').val('');
						$('#eventDetail').val('');
						$('#fileEventImg').val('');
						$('#imgPlace').empty();
						eventList();
					},
					error : function(err){
						console.log(err);
						alert('error');
					}
				});
			}
		}		
	}); // 이벤트(할) 등록 완료
	
	// 이벤트 리스트 테이블에 구현하기
	function eventList(){
		$.ajax({
			type : 'post',
			url : 'getEventList.do',
			dataType : 'json',
			success : function(result){
				var eventTable = $('#eventListTable');
				eventTable.empty();
				eventTable.append($('<tr><th style="width:10%">No</th><th style="width:35%">이벤트명</th><th style="width:15%">할인</th><th style="width:20%">시작일</th><th style="width:20%">종료일</th></tr>'));
				
				for(row of result){
					var tr = $('<tr class="eventListTr"/>');
					var eventNo = $('<td/>').text(row.eventNo);
					var eventName = $('<td/>').text(row.eventName);
					tr.append(eventNo);
					tr.append(eventName);
					
					if(row.eventDCP == 0){
						var eventDCW = $('<td/>').text(row.eventDCW+"원");
						tr.append(eventDCW);
					}else{
						var eventDCP = $('<td/>').text(row.eventDCP+"%");
						tr.append(eventDCP);
					}
					var dateArrS = row.eventStartDate.split(" ");
					var eventStartD = dateArrS[0];
					var eventStartDate = $('<td/>').text(eventStartD);
					var dateArrE = row.eventEndDate.split(" ");
					var eventEndD = dateArrE[0];
					var eventEndDate = $('<td/>').text(eventEndD);
					tr.append(eventStartDate);
					tr.append(eventEndDate);
					eventTable.append(tr);
					
				}
			},
			error : function(err){
				console.log(err);
				alert('error');
			}
		});
	} // 이벤트 리스트 테이블에 구현하기 끝
	
	// 테이블 이벤트 목록 클릭시 상세정보 가져오기
	$('#eventListTable').on("click","tr[class='eventListTr']",function(){
		let param51 = { eventNo : $(this).find('td:eq(0)').text() }
		
		$('.eventListTr').removeAttr('id');
		$(this).attr('id','blinking');
		
		$.ajax({
			type : 'post',
			url : 'getEventByPK.do',
			data : param51,
			dataType : 'json',
			success : function(result){
				$('#eventNo').val(result.eventNo);
				$('#eventName').val(result.eventName);
				$('#eventDetail').val(result.eventDetail);
				var dateArrS = result.eventStartDate.split(" ");
				var eventStartD = dateArrS[0];
				$('#eventStartDate').val(eventStartD);
				var dateArrE = result.eventEndDate.split(" ");
				var eventEndD = dateArrE[0];
				$('#eventEndDate').val(eventEndD);
				if(result.eventDCP == 0){
					$('#eventDiscount').val(result.eventDCW);
					$('#eventOption').val('eventDCW');
				}else{ 
					$('#eventDiscount').val(result.eventDCP);
					$('#eventOption').val('eventDCP');
				}
				$('#imgPlace').empty();
				if(result.eventImg!=null){
					
					$('#imgPlace').append($("<img src='./resources/Main/img/"+ result.eventImg +"' width='379' height='330'>"))	
				}
			},
			error : function(err){
				console.log(err);
			}
		});
		
	}) // 테이블 이벤트 목록 클릭시 상세정보 가져오기 끝
	
	// 이벤트 삭제하기
	$('#eventDelete').click(function(){
			let param52 = { eventNo : $('#eventNo').val()}
			
			$.ajax({
				type : 'post',
				url : 'deleteEvent.do',
				data : param52,
				success : function(){
					$('#eventNo').val('');
					$('#eventName').val('');
					$('#eventDiscount').val('');
					$('#eventStartDate').val('');
					$('#eventEndDate').val('');
					$('#eventDetail').val('');
					$('#fileEventImg').val('');
					$('#imgPlace').empty();
					eventList();					
				},
				error : function(err){
					console.log(err);
				}
			});
	}); // 이벤트 삭제하기 끝
	
	// 이벤트 수정하기
	$('#eventUpdate').click(function(){
		if($('#eventNo').val()==''){
			alert('수정할 이벤트를 선택해 주세요');
		}else if($('#eventName').val()==''){
			alert('이벤트명을 입력해 주세요');
		}else if($('#eventDiscount').val()==''){
			alert('할인율(원)을 입력해 주세요');
		}else if($('#eventStartDate').val()==''){
			alert('이벤트 시작일을 입력해 주세요')
		}else if($('#eventEndDate').val()==''){
			alert('이벤트 종료일을 입력해 주세요')
		}else {
			let formEvent2 = $('#eventFrm')[0];
			let formDataEvent2 = new FormData(formEvent2);
			formDataEvent2.append( 'eventNo' , $('#eventNo').val() );
			
			var selectEventNo = $('#eventNo').val();
			
			
			if($('#eventOption option:selected').val()=='eventDCP'){
				formDataEvent2.append('eventDCP',$('#eventDiscount').val());
				
				$.ajax({
					type : 'post',
					url : 'updateEventP.do',
					data : formDataEvent2,
					contentType: false,
					processData: false,
					cache : false,
					enctype : 'multipart/form-data',
					success : function(){
						$('#eventNo').val('');
						$('#eventName').val('');
						$('#eventDiscount').val('');
						$('#eventStartDate').val('');
						$('#eventEndDate').val('');
						$('#eventDetail').val('');
						$('#fileEventImg').val('');
						$('#imgPlace').empty();
						eventList();
						
						setTimeout(() => {
							$('#eventListTable td').filter(function(){
								 if($(this).text() == selectEventNo){
								 	$(this).parent().attr('id','blinking');  
								 }
							});
						}, 500);
						blinking();
					},
					error : function(err){
						console.log(err);
						alert('error');
					}
				});
				

			}else if($('#eventOption option:selected').val()=='eventDCW'){
				formDataEvent2.append('eventDCW',$('#eventDiscount').val());
				
				$.ajax({
					type : 'post',
					url : 'updateEventW.do',
					data : formDataEvent2,
					contentType: false,
					processData: false,
					cache : false,
					enctype : 'multipart/form-data',
					success : function(){
						$('#eventNo').val('');
						$('#eventName').val('');
						$('#eventDiscount').val('');
						$('#eventStartDate').val('');
						$('#eventEndDate').val('');
						$('#eventDetail').val('');
						$('#fileEventImg').val('');
						$('#imgPlace').empty();
						eventList();
						
						setTimeout(() => {
							$('#eventListTable td').filter(function(){
								 if($(this).text() == selectEventNo){
								 	$(this).parent().attr('id','blinking');  
								 }
							});
						}, 500);
						blinking();
					},
					error : function(err){
						console.log(err);
						alert('error');
					}
				});
			}
		}		
	}); // 이벤트 수정하기 끝
	
	// 아이디 찾아서 깜박임 넣기
	function blinking(){
	    var intervalId = setInterval(function(){
	        $('#blinking').fadeOut(500).fadeIn(500);
	    }, 1000);
	    setTimeout(function(){
	        clearInterval(intervalId);
	    }, 1000);
	}
	
	
// 이벤트관리 화면 입장
$('#side5').click(function(){
	// 상품목록 테이블 출력
	setTimeout(() => {
		eventList();	
	}, 1000);
	
}); //사이드바(이벤트관리) 끝	
	
}); // 온로드 end

