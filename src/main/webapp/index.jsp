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
    <title>포즐</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&family=Nanum+Myeongjo&display=swap"
        rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            background-color: #121212;
        }

        #container {
            padding: 0px;
        }

        /* div {
            border: 1px solid white;
        } */
		 
		.navbar-nav a:hover {
    	color: black;
    	background-color: #7A07EE;
		}
		
/* 		.navbar-nav a:hover a{ */
/*     	color: black; */
/* 		} */
        
        .dropdown:hover .dropdown-menu {
  		display: block;
    	margin-top: 0; 
 		}
    </style>
</head>

<body>
    <div id="container">
        <div id="banner" style="width: 100%;" align=center>
            <img src="./img/banner.jpg" style="width: 100%; opacity: 0.6;">
        </div>
        <nav class="navbar sticky-top navbar-expand-lg navbar-dark" style="background-color: #0C0C0C; padding-top: 1%; padding-bottom: 1%;">
            <div class="container-fluid" style="background-color: #0C0C0C;">
                <a class="navbar-brand" href="./index.jsp" style="background-color: #0C0C0C;">
                    <img src="./img/logo.png" alt="" width="200" style="margin-left: 12%; background-color: #0c0c0c;">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 3%; background-color: #0c0c0c;">
                    <div class="navbar-nav me-auto" style="width: 50%; margin-left: 3%; background-color: #0c0c0c;">
                        <a class="nav-link" aria-current="page" href="./index.jsp"
                            style="color: #7A07EE; width: 30%; background-color: #0c0c0c;">홈</a>
                        <a class="nav-link" href="./guide.jsp" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">가이드</a>
                        <a class="nav-link" href="./mypuzzle.jsp" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">MY퍼즐</a>
                        <a class="nav-link" href="#" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">포즐피디아</a>
                    </div>
                    <div class="navbar-nav" style="width: 30%; background-color: #0c0c0c;">
                        <a class="nav-link" href="./list.board?cpage=1" style="color: #EDEDED; width: 50%; background-color: #0c0c0c;">고객센터</a>
                        <c:choose>
						<c:when test="${loginID != null}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false" style="color: #EDEDED; background-color: #0c0c0c;">
                                ${nickname}님
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"
                                style="background-color: #121212;">
                                <li><a class="dropdown-item" href="/myPage.member" style="color: #EDEDED;">마이페이지</a></li>
                                <li><a id="logout" class="dropdown-item" href="#" style="color: #EDEDED;">로그아웃</a></li>
                            </ul>
                        </li>
                        </c:when>
						<c:otherwise>
						<a class="nav-link" href="./login.jsp" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">로그인</a>
						</c:otherwise>
						</c:choose>
                    </div>
                </div>
        </nav>
        <div style="padding-top: 5%;">
            <div id="left" style="float: left; width: 45%;" align=right>
                <img src="./img/puzzle3.png" style="width: 80%;">
            </div>
            <div id="right" style="float: left; width: 55%;" align=center>
                <img src="./img/mal.png" style="width: 70%; padding-top: 12%;"><br>
                <img src="./img/mal3.png" style="width: 50%; padding-top: 5%; padding-bottom: 3%;"><br>
                <img src="./img/n.png" style="width: 6%; margin-right: 3%;">
                <img src="./img/w.png" style="width: 6%; margin-right: 3%;">
                <img src="./img/t.png" style="width: 6%; margin-right: 4%;">
                <img src="./img/d.png" style="width: 6%;">
            </div>
        </div>
        <div id="contents" align=center style="width: 100%;">
            <div style="margin-top: 45%;">
                <img src="./img/mal1.png" style="width: 10%; margin-bottom: 1%;"><br>
                <img src="./img/mal2.png" style="width: 20%; margin-bottom: 3%;">
            </div>
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="padding-bottom: 5%;">
                <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./img/n1.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c2.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c3.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c4.jpg" alt="" style="opacity: 0.7;">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/c5.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/n2.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c7.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/n3.jpg" alt="" style="opacity: 0.7;">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/c9.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c10.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/n5.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c12.jpg" alt="" style="opacity: 0.7;">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/n6.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c14.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c15.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c16.jpg" alt="" style="opacity: 0.7;">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/c17.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c18.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c19.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c20.jpg" alt="" style="opacity: 0.7;">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/c21.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c22.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c23.jpg" alt="" style="margin-right: 1%; opacity: 0.7;">
                            <img src="./img/c24.jpg" alt="" style="opacity: 0.7;">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
</body>
<script>
	$("#logout").on("click",function(){
	location.href = "/logout.member";
	});

</script>
</html>