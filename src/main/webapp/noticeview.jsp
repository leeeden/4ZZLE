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
    <title>공지사항</title>
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

        #row {
            width: 70%;
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

        #row .menu1 {
            color: #dddddd;
            float: left;
            width: 10%;
        }

        #row .menu2 {
            float: left;
            width: 70%;
        }

        #row .menu3 {
            color: #dddddd;
            float: left;
            width: 20%;
        }
        
        input[type$=xt], textarea  {
            color: #ededed;
            border: none;
        }

        #listnavi {
            height: 5%;
            color: #535353;
            line-height: 40px;
        }

        a {
            text-decoration-line: none;
            color: #EDEDED;
        }
        
        input:focus, textarea:focus {
        outline : none;
        }
        
        button {
        	width: 10%; 
        	height: 40px; 
        	font-size: 15px; 
        	line-height: 30px; 
        	color: #888888; 
        	border: 1px solid #2E2E2E; 
        	border-radius: 200px;
        	margin-left: 2%;
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
        <nav class="navbar sticky-top navbar-expand-lg navbar-dark"
            style="background-color: #0C0C0C; padding-top: 1%; padding-bottom: 1%;">
            <div class="container-fluid" style="background-color: #0C0C0C;">
                <a class="navbar-brand" href="./index.jsp" style="background-color: #0C0C0C;">
                    <img src="./img/logo.png" alt="" width="200" style="margin-left: 12%; background-color: #0c0c0c;">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup"
                    style="margin-left: 3%; background-color: #0c0c0c;">
                    <div class="me-auto navbar-nav" style="width: 50%; margin-left: 3%; background-color: #0c0c0c;">
                        <a class="nav-link active" aria-current="page" href="./index.jsp"
                            style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">홈</a>
                        <a class="nav-link" href="./guide.jsp"
                            style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">가이드</a>
                            <a class="nav-link" href="./mypuzzle.jsp" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">MY퍼즐</a>
                        <a class="nav-link" href="#"
                            style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">포즐피디아</a>
                    </div>
                    <div class="navbar-nav" style="width: 30%; background-color: #0c0c0c;">
                        <a class="nav-link" href="./list.board?cpage=1"
                            style="color: #7A07EE; width: 50%; background-color: #0c0c0c;">고객센터</a>
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
        <nav class="navbar navbar-expand navbar-light bg-light" style="padding: 0%; margin-top: 3%; margin-bottom: 4%;">
            <div class="container-fluid" style="width: 100%;">
                <a class="navbar-brand" href="./list.board?cpage=1" style="color: #EDEDED; font-size: 40px; padding-left: 5%;">고객센터</a>
                <div class="collapse navbar-collapse" id="navbarNav" style="margin-left: 3%;">
                    <a class="nav-link active" aria-current="page" href="./list.board?cpage=1"
                        style="color: #7A07EE; width: 15%;">공지사항</a>
                    <a class="nav-link" href="./guide.jsp" style="color: #EDEDED; width: 15%;">문의</a>
                </div>
            </div>
        </nav>
        <form action="update.board" method="post" id="modifyFrm">
		<input type="hidden" value="${dto.seq}" name=seq>
        <div id="notice" align=center style="color: #ededed; width: 100%; height: 80%;">
            <div id="row1" style="font-size : 25px; width: 70%; padding-bottom: 1%; border-bottom: 1px solid #2E2E2E; padding-left: 20px;" align=left>
            <input id="title" name="title" class="editable" type="text" value="${dto.title}" disabled>
            </div>
            <div id="row2" style="font-size : 12px; width: 70%; padding-bottom: 0.5%; border-bottom: 2px solid #2E2E2E; padding-left: 20px; margin-top: 0.5%;" align=left>
            <fmt:formatDate value="${dto.write_date}" type="both" pattern="yyyy-MM-dd"/></div>
            <div id="row3" style="font-size : 15px; width: 70%; height: 600px; margin-bottom: 2%; padding-left: 35px; margin-top: 2%; border-bottom: 2px solid #2E2E2E; overflow: hidden;" align=left>
            <textarea name="contents" class="editable" id="contents" style="width: 98%;" rows="30" disabled>${dto.contents}</textarea>
            </div>
            <div id="row4" style="width: 70%; margin-bottom: 2%;" align=right>
            <c:choose>
			<c:when test="${loginID eq 'admin@admin.com'}">
			 <button id="modify" type="button" style="width: 10%; height: 40px; font-size: 15px; line-height: 30px; color: #888888; border: 1px solid #2E2E2E; border-radius: 200px;">수정</button>
             <button id="delete" type="button" style="width: 10%; height: 40px; font-size: 15px; line-height: 30px; color: #888888; border: 1px solid #2E2E2E; border-radius: 200px; margin-left: 1%;">삭제</button>
            </c:when>
            </c:choose>
              <a href="./list.board?cpage=${cpage}"><button id="back" type="button" style="width: 10%; height: 40px; font-size: 15px; line-height: 30px; color: #ededed; background-color: #2e2e2e; border: none; border-radius: 200px; border-radius: 200px; margin-left: 1%;">목록</button></a>
            </div>
        </div>
    </div>
</body>
<script>
$("#delete").on("click", function() {
	let result = confirm("삭제하시겠습니까?");
	if(result) {
		location.href = "/delete.board?seq="+${dto.seq};
	}
})

$("#modify").on("click",function() {
			$(".editable").removeAttr("disabled");
			$("#title").focus();

			$("#modify").css("display", "none");
			$("#delete").css("display", "none");
			$("#back").css("display", "none");

			let okBtn = $("<button>");
			okBtn.text("수정");
			okBtn.css("color", "#ededed");
			okBtn.css("background-color", "#2e2e2e");
			
			let cancelBtn = $("<button>");
			cancelBtn.attr("type","button");
			cancelBtn.text("취소");

			cancelBtn.on("click", function() {
				location.reload();
			})

			$("#row4").prepend(okBtn);
			$("#row4").prepend(cancelBtn);
			
		})
		
		$("#logout").on("click",function(){
	location.href = "/logout.member";
	});
</script>

</html>