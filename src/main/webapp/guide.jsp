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
    <title>가이드</title>
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

        .hover:hover {
            cursor: pointer;
        }
        
        .navbar-nav a:hover {
    	color: crimson;
    	background-color: #7A07EE;
		}
        
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
                    <div class="me-auto navbar-nav" style="width: 50%; margin-left: 3%; background-color: #0c0c0c;">
                        <a class="nav-link active" aria-current="page" href="./index.jsp"
                            style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">홈</a>
                        <a class="nav-link" href="./guide.jsp" style="color: #7A07EE; width: 30%; background-color: #0c0c0c;">가이드</a>
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
        <div style="padding-top: 5%;" align=center>
            <div style="padding-bottom: 2%;">
            <img src="./img/guide1.png" style="width: 40%;">
            </div>
            <div id="leader" style="float: left; width: 50%; padding-right: 1%; padding-top: 3%; padding-bottom: 2%;" align=right>
                <img class="hover" src="./img/guide2.png" style="width: 25%;">
            </div>
            <div id="member" style="float: left; width: 50%; padding-left: 1%; padding-top: 3%; opacity: 0.8;" align=left>
                <img class="hover" src="./img/guide3.png" style="width: 25%;">
            </div>
            <div id="guidel" align=center style="margin-top: 5%;">
                <img src="./img/guide4.png" style="width: 55%;">
            </div>
            <div id="guidem" align=center style="margin-top: 5%; display: none;">
                <img src="./img/guide5.png" style="width: 55%;">
            </div>
            <img src="./img/guide6.png" style="width: 55%; margin-top: 5%;">
            <img src="./img/guide7.png" style="width: 55%; margin-top: 5%;">
            <img src="./img/guide8.png" style="width: 56%; margin-top: 5%;">
            <img src="./img/guide9.png" style="width: 56%; margin-top: 5%; margin-bottom: 5%;"><br>
            <img src="./img/guide10.png" style="width: 30%; margin-top: 5%;"><br>
            <a href="./inquiry.jsp"><img src="./img/guide11.png" style="width: 30%; margin-top: 1%; margin-bottom: 5%;"></a>
        </div>
    </div>
</body>
<script>
    $(function(){
        $("#member").click(function(){
            if($("#guidem").css("display") == "none"){
                $("#member").css("opacity",1.0);
                $("#leader").css("opacity",0.8);
                $("#guidem").show();
                $("#guidel").hide();
            }
        });

        $("#leader").click(function(){
            if($("#guidel").css("display") == "none"){
                $("#member").css("opacity",0.8);
                $("#leader").css("opacity",1.0);
                $("#guidel").show();
                $("#guidem").hide();
            }
        });
    });
    
    $("#logout").on("click",function(){
    	location.href = "/logout.member";
    	});

</script>
</html>