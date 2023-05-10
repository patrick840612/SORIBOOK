$(document).ready(function(){
	
	// 사이드바 클릭시 각 메뉴의 관리 페이지 이동 
	$("#container").addClass("start");

	$("nav li").click(function(){
		$("#container").css("max-width", "100%")
		
		var id=$(this).attr("data-rol");    
		$("nav li").removeClass("on");    
		$(this).addClass("on");    
		$(".content").removeClass("prev this next");     
		//클릭 시 가지고 있던 클래스를 모두 지운다 
		
		$("#" + id).addClass("this").prevAll().addClass("prev");    
		//클릭한 메뉴와 매칭 되는 id에 this 클래스를 지정하고 그 앞의 모든 <section> 태그는 .prev클래스를 지정한다    
		$("#" + id).nextAll().addClass("next");    
		//클릭한 메뉴와 매칭 되는 id의 뒤에 오는 <section> 태그는 .next 클래스를 지정한다     
	}); // 사이드바 클릭시 각 메뉴의 관리 페이지 이동 끝
	
	
// 카테고리 관리 화면 입장(사이드바)		
$('#side1').click(function(){	
	
	// 업버튼(▲) 클릭시 카테고리 정렬 변경
	$('#up').click(function(){
		var idx = $('#selectCategory')[0].selectedIndex;
		var optSel = $('#selectCategory option');
		
		if( idx > 0){
			var temp = $(optSel).eq(idx).text();
			temp = optSel[idx].text;
			optSel[idx].text = optSel[idx-1].text;
			optSel[idx-1].text = temp;
			optSel[idx-1].selected = true;
		}else{
			for(var i=0; i<optSel.length-1; i++){
				[optSel[i].text, optSel[i+1].text] = [ optSel[i+1].text, optSel[i].text];
			}
			optSel[idx+optSel.length-1].selected = true;
			
		}
	}); // 업버튼(▲) 클릭시 카테고리 정렬 변경 끝
	
	// 다운버튼(▼) 클릭시 카테고리 정렬 변경
	$('#down').click(function(){
		var idx = $('#selectCategory')[0].selectedIndex;
		var optSel = $('#selectCategory option');
		
		if( idx < optSel.length-1 ){
			temp = optSel[idx].text;
			optSel[idx].text = optSel[idx+1].text;
			optSel[idx+1].text = temp;
			optSel[idx+1].selected = true;
			}else{
				for(var i=optSel.length-1; i>0 ; i--){
					[optSel[i].text, optSel[i-1].text] = [ optSel[i-1].text, optSel[i].text];
				}
				optSel[0].selected = true;
		}
		
	}); // 다운버튼(▼) 클릭시 카테고리 정렬 변경 끝

	
	//********************************************************
	//ajax 사용하기
	var param = { majorCategoryNo : $('#menu1 input[type="radio"][name="majorCategoryNo"]').val() };
	// 카테고리 목록 출력
	categoryList(param);
	
	// 카테고리 목록 호출
	function categoryList(param){
		
		$.ajax({
			type : 'get',
			url : 'getCategoryList.do',
			data : param,
			dataType : 'json',
			success : makeList,
			error : function(err){
				alert('error');
				console.log(err);
			}
		});
	} // 목록 호출 함수 categoryList() end
	
	// select 태그에 카테고리 붙이기
	function makeList(result){
		
		var categoryList = $('#selectCategory');
		categoryList.empty();
		
		for(row of result){
			var option = $('<option value="'+row['categoryNo']+'">'+row['categoryName']+'</option>')
			categoryList.append(option);
		}
	} // 목록 화면 출력 함수 makeList() end
	
	//라디오버튼을 눌렀을 떄
	$('#menu1 input[type="radio"][name="majorCategoryNo"]').change(function(){
		var param = { majorCategoryNo : $('#menu1 input[type="radio"][name="majorCategoryNo"]:checked').val()};
		categoryList(param);
	});
	
	// '카테고리 추가' 버튼을 눌렀을 때
	$('#categoryInsert').click(function(){
		var param = $('#CatecoryFrm').serialize();
		$.ajax({
			type : 'post',
			data : param,
			url : 'insertCategory.do',
			success : function(){
				$('#categoryName').val('');
				var param = { majorCategoryNo : $('#menu1 input[type="radio"][name="majorCategoryNo"]:checked').val()};
				categoryList(param);	
			},
			error : function(err){
				alert('error');
				console.log(err);
			}
			
		});
	}); // 카테고리 입력 완료
	
	// '카테고리 삭제' 버튼을 눌렀을 때
	$('#categoryDelete').click(function(){
		var param = { categoryNo : $('#selectCategory option:selected').val() }
		$.ajax({
			type : 'post',
			url : 'deleteCategory.do',
			data : param,
			success : function(){
				var param = { majorCategoryNo : $('#menu1 input[type="radio"][name="majorCategoryNo"]:checked').val()};
				categoryList(param);
			},
			error : function(err){
				alert('error');
				console.log(err);
			}
		});
	}); // 카테고리 삭제 완료
	
	// '카테고리 수정' 버튼을 눌렀을 때
	$('#categoryUpdate').click(function() {
		var param = $('#CatecoryFrm').serialize();
		$.ajax({
			type : 'post',
			url : 'updateCategory.do',
			data : param,
			success : function(){
				$('#categoryName').val('');
				var param = { majorCategoryNo : $('#menu1 input[type="radio"][name="majorCategoryNo"]:checked').val()};
				categoryList(param);
			},
			error : function(err){
				alert('error');
				console.log(err);
			}
		});
	}); // 카테고리 수정 완료

}); // 사이드바 카테고리 관리 기능구현
	
	
});

