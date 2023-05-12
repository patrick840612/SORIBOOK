<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소리북 회원가입</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>

<body>

	<div class="container">
		<div class="text-center my-4 mb-2">
			<a href="MainPage.do"><img
				src="resources/Main/img/soribookLogo.png" alt="logo" width="100"></a>
		</div>
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">소리북 회원가입</h4>
				<!-- 폼시작********************* -->
				<form action="<c:url value='/user/join.do' />" method="post"
					name="frm-join" class="validation-form" novalidate>

					<!-- userID  -->
					<div class="row">
						<div class="col-md-12 mb-3">
							<label for="userID">아이디</label> <input type="text"
								class="form-control" id="userId" name="userId" placeholder="아이디"
								required>
							<div id="idCheck" ></div><div id="idCheckDup"></div>
							<div class="invalid-feedback"> 아이디를 입력해주세요</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="userPass">비밀번호</label> <input type="password"
								class="form-control" id="userPass" name="userPass"
								placeholder="" value="" required>
							<div class="invalid-feedback">비밀번호를 입력해주세요</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="userPass">비밀번호 확인</label> <input type="password"
								class="form-control" id="userPass2" placeholder="" value=""
								required>
							<div class="invalid-feedback">비밀번호가 일치하지 않습니다</div>
						</div>
					</div>



					<div class="mb-3">
						<label for="userName">이름</label> <input type="text"
							class="form-control" id="userName" name="userName"
							placeholder="이름" minlength="2" maxlength="5"
							pattern="^[ㄱ-ㅎ|가-힣]+$" required>
						<div class="invalid-feedback">이름을 입력해주세요(한글 2~5글자)</div>
					</div>

					<div class="mb-3">
						<label for="userEmail">이메일</label> <input type="email"
							class="form-control" id="userEmail" name="userEmail"
							placeholder="ex)you@example.com" required>
						<div class="invalid-feedback">이메일을 입력해주세요</div>
					</div>

					<div class="mb-3">
						<label for="userTel">휴대폰 번호</label> <input type="text"
							class="form-control" id="userTel" name="userTel"
							placeholder="ex)010-0000-0000" minlength="13" maxlength="13" required>
						<div id="telCheck"></div>
						<div class="invalid-feedback">휴대폰 번호를 입력해주세요</div>
					</div>


					<hr class="mb-4">
<!-- 					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="aggrementAll" required> <label
							class="custom-control-label" for="aggrementAll">모든 약관에 동의
							합니다.</label>
					</div> -->
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="aggrementTerms" required> <label
							class="custom-control-label" for="aggrementTerms">소리북
							이용약관 <a href="terms.do"
							onclick="window.open(this.href, '_blank', 'width=800, height=600'); return false;">[보기]</a>
						</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="aggrementPrivacy" required> <label
							class="custom-control-label" for="aggrementPrivacy">개인정보수집이용
							동의 <a href="privacy.do"
							onclick="window.open(this.href, '_blank', 'width=800, height=600'); return false;">[보기]</a>
						</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">가입
						완료</button>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2023 SooriBook</p>
		</footer>
	</div>
	<script src="/soribook/resources/Main/js/jquery-3.3.1.min.js"></script>
	<script>
	// customValidity 용 js변수 (jquery 작동안함)
	var userIdCheck = document.getElementById("userId");
	var userTelCheck = document.getElementById("userTel");
	
	//**** userId 아이디 중복체크 ajax 시작
	$('#userId').on('keyup', function() {
		//입력한 userId가져오기
		let userId = $('input[name=userId]').val();
		let userTel = $('input[name=userTel]').val();
/* 		console.log(userId); */
		//ajax로 userId보내기 idCheckServiceCon
		$.ajax({
			url : '<c:url value='/idCheckServiceCon.do'/>',	//어디로 보낼지 주소
			data : {
				userId : userId
				,userTel : userTel//입력한 userId data 보내기
			},
			type : "POST",
			dataType : "json",	//중복체크 결과값 text로 받아오기
			success : function(returnData){
				
				// result가 text형태로 와서 false가 text형태로 비교해줘됨
				if(returnData.resultId == false && userId.length > 3 ){
					$('#idCheck').text('사용 가능한 아이디 입니다.');
					$('#idCheck').addClass( 'alert-primary' );
					$('#idCheckDup').text('');
					$('#idCheckDup').removeClass('alert-danger d-flex align-items-center');
					userIdCheck.setCustomValidity(""); 
					//중복이 없다는 뜻
				}else{
					//중복이 있다.
					if(userId.length < 3){
						$('#idCheckDup').text('아이디 길이가 짧습니다.');
						 userIdCheck.setCustomValidity("중복오류"); 
					}else{
						$('#idCheckDup').text('아이디가 중복됩니다.');
						  userIdCheck.setCustomValidity("중복오류"); 
						
					}
					$('#idCheckDup').addClass( 'alert-danger d-flex align-items-center' );
					$('#idCheck').text('');
					$('#idCheck').removeClass( 'alert-primary' );
				}
			},
			error : function(){
				alert('실패');
			}
		});

	});
					//**** userId 아이디 중복체크 ajax 끝
	
					//*** userTel 사용자 휴대폰번호 중복체크 ajax  시작
 	$('#userTel').on('keyup', function() {
		//입력한 userId가져오기
		let userId = $('input[name=userId]').val();
		let userTel = $('input[name=userTel]').val();
		//ajax로 userId보내기 idCheckServiceCon
		$.ajax({
			url : '<c:url value='/idCheckServiceCon.do'/>',	//어디로 보낼지 주소
			data : {
				userId : userId
				,userTel : userTel //입력한 userId data 보내기
			},
			type : "POST",
			dataType : "json",	//중복체크 결과값 text로 받아오기
			success : function(returnData){
								
				// result가 text형태로 와서 false가 text형태로 비교해줘됨
				if(returnData.resultTel == false){
					$('#telCheck').text('사용 가능한 휴대폰 번호 입니다.');
					userTelCheck.setCustomValidity("");
					//중복이 없다는 뜻
				}else {
					//중복이 있다.
					$('#telCheck').text('사용 불가능한 휴대폰 번호 입니다.');
					userTelCheck.setCustomValidity("중복오류"); 
				}
			},
			error : function(){
				alert('실패');
			}
		});

	});
					//*** userTel 사용자 휴대폰번호 중복체크 ajax  끝

	
	
  					//*** html5 유효성검사 시작
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');
	
      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if ($("#userPass").val() != $("#userPass2").val()){
        	  event.preventDefault();
              event.stopPropagation();
          }
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  					//*** html5 유효성검사 끝
    
  					//*** 비밀번호 customVaildity setting 시작
 $(function(){
	 
    var password = document.getElementById("userPass")
    ,confirm_password = document.getElementById("userPass2");


  function validatePassword(){
    if(password.value != confirm_password.value) { // 만일 두 인풋 필드값이 같지 않을 경우
      // setCustomValidity의 값을 지정해 무조건 경고 표시가 나게 하고
      confirm_password.setCustomValidity("Passwords Don't Match"); 
    } 
    else { // 만일 두 인풋 필드값이 같을 경우
      // 오류가 없으면 메시지를 빈 문자열로 설정해야한다. 오류 메시지가 비어 있지 않은 한 양식은 유효성 검사를 통과하지 않고 제출되지 않는다.
      // 따라서 빈값을 주어 submit 처리되게 한다
      confirm_password.setCustomValidity(''); 
    }
  }
  password.onchange = validatePassword;
  confirm_password.onkeyup = validatePassword;
 
 })
					//*** 비밀번호 customVaildity setting 끝

  </script>
</body>

</html>