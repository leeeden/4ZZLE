<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

body {
	background-color: #121212;
}

/* div { */
/*  	border: 1px solid crimson; */
/* } */
button {
	border: none;
}

#con1 {
	height: 888px;
	background-color: #121212;
	margin-top: 118px;
}

.navbar-nav>li {
	text-align: center;
	margin-left: 1rem;
	margin-right: 1rem;
	width: 100px;
}

.centered {
	margin-left: 10rem;
}

#no {
	background-color: inherit;
}

#login {
	background-color: #7A07EE;
}

#con5 {
	margin-top: 150px;
	height: 100px;
	background-color: #0c0c0c;
}

#footer1, #footer2, #footer3 {
	margin-top: 38.43px;
}

#footer2 {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #FFFFFF;
}

#footer3 {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	text-align: right;
	color: #6F6C77;
}

#main13 {
	margin-top: 160px;
	width: 430px;
	height: 140px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 32px;
	line-height: 70px;
	text-align: center;
	color: #FFFFFF;
}

#main14 {
	margin-top: 70px;
}

#row {
	width: 100%;
	border-top: 1px solid #2E2E2E;
}

#row div {
	float: left;
	width: 100%;
	height: 60px;
	text-align: center;
	line-height: 60px;
	border-bottom: 1px solid #2E2E2E;
	overflow: hidden;
}

#row .menu2 {
	float: left;
	width: 65%;
	text-align: left;
	padding-left: 3.8%;
}

#row .menu3 {
	color: #dddddd;
	float: left;
	width: 20%;
}

#row .menu4 {
	color: #dddddd;
	float: left;
	width: 15%;
}

a {
	text-decoration-line: none;
	color: #ffffff;
}

a:hover {
	color: #7A07EE;
}

.btn {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	height: 45px;
	line-height: 30px;
	font-weight: bold;
	background-color: #7A07EE;
	color: #FFFFFF;
	border-radius: 12px;
	width: 10%;
	margin-top: 5%;
	border: none;
}

nav {
	background-color: black;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
	
}

#mypage:hover{
	background-color : #7A07EE;
}
#logout:hover{
	background-color : #7A07EE;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="#" id=logo><img src="/img/logo2.png"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ol class="navbar-nav centered">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/index.jsp">홈</a></li>
						<li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
						<li class="nav-item"><a class="nav-link" href="#">MY퍼즐</a></li>
						<li class="nav-item"><a class="nav-link" href="#">포즐피디아</a></li>

					</ol>
					<ol class="nav-pills navbar-nav w-100 justify-content-end centered" id=po>
						<li class="nav-item"><a class="nav-link" aria-current="page" href="/list.board?cpage=1">고객센터</a></li>
						<c:choose>
						<c:when test="${loginID != null}">
                        <li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"
									style="color: #EDEDED;">
										${nickname}님 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink"
										style="background-color: #121212;">
										<li><a class="dropdown-item" id = "mypage" href="/myPage.member"
											style="color: #EDEDED;">마이페이지</a></li>
										<li><a id="logout" class="dropdown-item" href="/logout.member"
											style="color: #EDEDED;">로그아웃</a></li>
									</ul></li>

                        </c:when>
						<c:otherwise>
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="/member/login.jsp" id = login>로그인</a></li>
						</c:otherwise>
						</c:choose>
					</ol>
				</div>
			</div>
		</nav>
	<div id="con1">
		<div class="container" style="background-color: #121212;">
			<nav class="navbar navbar-expand navbar-light bg-light"
				style="background-color: #121212; padding: 0%; margin-bottom: 4%;">
				<div class="container-fluid"
					style="width: 100%; background-color: #121212; padding-top: 100px; font-weight: 700;">
					<a class="navbar-brand" href="/list.board?cpage=1"
						style="color: #ffffff; font-size: 40px; padding-left: 5%;">고객센터</a>
					<div class="collapse navbar-collapse" id="navbarNav"
						style="margin-left: 3%;">
						<a class="nav-link" aria-current="page" href="/list.board?cpage=1"
							style="color: #FFFFFF; width: 15%;">공지사항</a> <a
							class="nav-link active" href="/list.qnaboard?cpage=1"
							style="color: #7A07EE; width: 15%;">문의</a>
					</div>
				</div>
			</nav>
			<div class="row">
				<div id="notice" align=center
					style="color: #ededed; width: 100%;">
					<div id="row">
						<c:forEach var="i" items="${list}">
							<div class="menu2">
								<c:choose>
									<c:when
										test="${loginID eq 'admin@admin.com' || loginID eq i.writerId}">
										<a href="/detail.qnaboard?seq=${i.seq}">${i.title}</a>
									</c:when>
									<c:otherwise>
            	${i.title}
            	</c:otherwise>
								</c:choose>
								<%--                 <a href="/detail.qnaboard?seq=${i.seq}">${i.title}</a> --%>
							</div>
							<div class="menu4">${i.writerName}</div>
							<div class="menu3">
								<fmt:formatDate value="${i.write_date}" type="both"
									pattern="yyyy-MM-dd" />
							</div>
						</c:forEach>
					</div>
					<div style="width: 100%; margin-bottom: 2%;" align=right>
						<a href="/write.qnaboard"><button class="btn"
								style="margin-top: 2%;">작성</button></a>
					</div>
				</div>
			</div>
		<div id="listnavi" align=center style="margin-top: 25px;">
				${navi}</div>
		</div>
	</div>
	<div class="col-12 d-none d-md-block">
		<div id="con5" align=center>
			<div class="container">
				<div class="row">
					<div class="col-6" id="footer1" align=left>
						<img src="/img/group30.png">
					</div>
					<div class="col-1" id="footer2">이용약관</div>
					<div class="col-2" id="footer2">개인정보 처리방침</div>
					<div class="col-1" id="footer2">
					<a href="/list.qnaboard?cpage=1" style="text-decoration:none; color:white;">1:1 문의</a>
					</div>
					<div class="col-2" id="footer3">©2022 Fozzle, Inc.</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 d-block d-md-none">
		<div id="con5" align=center>
			<div class="container">
				<div class="row">
					<div class="col-6" id="footer1" align=left>
						<img src="/img/group30.png">
					</div>
					<div class="col-6" id="footer3">©2022 Fozzle, Inc.</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
$(function(){
    $("#member").click(function(){
        if($("#memberguide").css("display") == "none"){
            $("#member").css("backgroundColor","#7A07EE");
            $("#leader").css("background-color","inherit");
            $("#memberguide").show();
            $("#leaderguide").hide();
        }
    });

    $("#leader").click(function(){
        if($("#leaderguide").css("display") == "none"){
            $("#leader").css("backgroundColor","#7A07EE");
            $("#member").css("background-color","inherit");
            $("#leaderguide").show();
            $("#memberguide").hide();
        }
    });
});

</script>
</html>