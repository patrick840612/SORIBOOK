<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>고객센터</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
   
<!-- Css Styles -->
<!-- <link rel="stylesheet"
	href="/soribook/resources/Main/css/bootstrap.min.css" type="text/css"> -->
<link rel="stylesheet"
	href="/soribook/resources/Main/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/elegant-icons.css" type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/nice-select.css" type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/soribook/resources/Main/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/soribook/resources/Main/css/style.css"
	type="text/css">

	 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery and Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

<style>
  table {
    border-collapse: collapse;
    width: 100%;
  }
  
  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }
  
  th:first-child {
    border-top: 1px solid #ddd;
  }
  
  .title {
    position: relative;
    display: inline-block;
    padding-right: 20px;
  }
  
  .title:after {
    content: "";
    position: absolute;
    right: 5px;
    top: 50%;
    transform: translateY(-50%);
    width: 0;
    height: 0;
    border-top: 5px solid transparent;
    border-bottom: 5px solid transparent;
    border-left: 5px solid #333;
  }
  
  .title.active:after {
    border-left: 5px solid transparent;
    border-right: 5px solid #333;
  }
  
  .content {
    display: none;
  }
</style>

<script>
  function toggleContent(id) {
    var content = document.getElementById(id);
    var title = document.getElementById("title_" + id);
    if (content.style.display === "none") {
      content.style.display = "block";
      title.classList.add("active");
    } else {
      content.style.display = "none";
      title.classList.remove("active");
    }
  }
</script>

</head>

<body>


	<jsp:include page="header.jsp"></jsp:include>


	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>고객센터</h4>                          
                            <ul>
                                <li><a href="serviceCenter.do">-공지사항</a></li>
                                <li><a href="qna.do">-1:1문의</a></li>                                                               
                            </ul>  
						</div>
					</div>
				</div>
<!-- 탭 시작 -->
				 <div class="col-lg-9 col-md-5">
				 <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="tab1-tab" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="true">문의접수</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="tab2-tab" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">답변완료</a>
  </li>
  
</ul>

<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
    <h3>문의접수</h3>
    
						 <form action=" " method="post">
						<table>
						 <tr>

								<td>제목</td>
								<td><input type="text"  name="qnatitle" ></td>
									 
							</tr>
							<tr> 
								<td>내용</td>
								<td><textarea name="content" rows="10" cols="50"></textarea></td>
							</tr>
							<tr>
								<td>사진첨부</td>
								<td></td>
							</tr>
							
							<tr>
								<td>이메일</td>
								<td><input type="text" name="useremail" value="${sessionScope.id.userEmail}"></td>
							
								<td>휴대전화</td>
								<td><input type="text" name="usertel" value="${sessionScope.id.userTel}"></td>
							</tr>
							<tr>
							<td><input type="checkbox">
							답변완료 알림요청</td>
							</tr> 
						<br />
						<br/>
						<div class="notice_search">
						<tr>
						<td><input type="submit" class="madman-btn" value="문의접수"></td>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<td><input type="button" class="madman-btn" value="취소" onclick="location.href='qna.do'"></td>
						</tr>					
						</div>
						</table>
						 </form>
						
  </div>
  <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
    <div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>
  
</div>
					
				</div> 
			</div>
		</div>
	</section>
	<!-- Product Section End -->
	<jsp:include page="footer.jsp"></jsp:include>

<!-- Js Plugins -->
<script src="/soribook/resources/Main/js/jquery-3.3.1.min.js"></script>
<script src="/soribook/resources/Main/js/bootstrap.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.nice-select.min.js"></script>
<script src="/soribook/resources/Main/js/jquery-ui.min.js"></script>
<script src="/soribook/resources/Main/js/jquery.slicknav.js"></script>
<script src="/soribook/resources/Main/js/mixitup.min.js"></script>
<script src="/soribook/resources/Main/js/owl.carousel.min.js"></script>
<script src="/soribook/resources/Main/js/main.js"></script>

<!-- jQuery 라이브러리를 불러옵니다. -->
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

<!-- jQuery UI 라이브러리를 불러옵니다. -->
<!-- <link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->


</body>


</html>