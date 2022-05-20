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
    <title>마이페이지</title>
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

        #listnavi {
            height: 5%;
            color: #535353;
            line-height: 40px;
        }

        a {
            text-decoration-line: none;
            color: #EDEDED;
        }

        input[type$=xt], input[type$=word]  {
            border: 0.5px solid #aaa;
            border-radius: 0;
            width: 80%;
            height: 80px;
            color: #ededed;
            padding: 0.6em 1.4em 0.5em 0.8em;
        }

        .left {
            padding: 2%;
        }

        .btn {
            width: 30%; 
            height: 60px; 
            font-size: 20px; 
            line-height: 30px; 
            color: #888888; 
            border: 1px solid #2E2E2E; 
            border-radius: 200px;
            margin-left: 3%;
            
        }
        
        input:focus {
        outline:2px solid #7A07EE;
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
<form action="update.member" method="post">
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
                        <a class="nav-link" href="./mypuzzle.jsp"
                            style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">MY퍼즐</a>
                        <a class="nav-link" href="#"
                            style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">포즐피디아</a>
                    </div>
                    <div class="navbar-nav" style="width: 30%; background-color: #0c0c0c;">
                        <a class="nav-link" href="./list.board?cpage=1"
                            style="color: #EDEDED; width: 50%; background-color: #0c0c0c;">고객센터</a>
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
        <nav class="navbar navbar-expand navbar-light bg-light" style="padding: 0%; margin-top: 3%; margin-bottom: 2%;">
            <div class="container-fluid" style="width: 100%;">
                <a class="navbar-brand" href="#" style="color: #EDEDED; font-size: 40px; padding-left: 5%;">마이페이지</a>
            </div>
        </nav>
        <div id="mypage" align=center style="color: #ededed; width: 100%; margin-bottom: 5%;">
            <div class="left" style="width: 40%; font-size: 20px;" align=left>
                아이디
            </div>
            <div class="right" style="width: 40%;"><input type="text" value="${dto.id}" disabled></div>
            <div class="left" style="width: 40%; font-size: 20px;" align=left>
                비밀번호
            </div>
            <div class="right" style="width: 40%;">
            <input type="password" value="" disabled class="editable" id="pw" name="pw">
            <input type="hidden" value="${dto.pw}" id="originpw" name="originpw">
            </div>
            <div class="left" style="width: 40%; font-size: 20px;" align=left>
                닉네임
            </div>
            <div class="right" style="width: 40%;"><input type="text" name="nickname" id="nickname" value="${dto.nickname}" disabled class="editable" id="nickname" name="nickname"></div>
                <div id="btns" class="left" style="width: 40%; font-size: 20px;" align=center>
                <button id="modify" type="button" style="width: 30%; height: 60px; font-size: 20px; line-height: 30px; color: #ededed; background-color: #2e2e2e; border: 1px solid #2E2E2E; border-radius: 200px; margin-left: 3%;">수정</button>
                <button id="memberOut" type="button" style="width: 30%; height: 60px; font-size: 20px; line-height: 30px; color: #888888; border: 1px solid #2E2E2E; border-radius: 200px; margin-left: 3%;">회원탈퇴</button>
                </div>
            </div>
    </div>
   </form>
</body>
<script>
    $("#modify").on("click",function(){
        $(".editable").removeAttr("disabled");
        $("#modify").css("display","none");
        $("#memberOut").css("display","none");
        $("#nickname").focus();
        
        let ok = $("<button>");
        ok.text("수정");
        ok.css("color", "#ededed");
		ok.css("background-color", "#2e2e2e");
        ok.attr("class","btn");
        ok.attr("id","submit")
        
        let cancel = $("<button>");
        cancel.text("취소");
        cancel.attr("class","btn");
        cancel.attr("type","button");
        cancel.css("margin-left","4.3%");
        cancel.on("click",function(){
            location.reload();
        })
        
        $("#btns").append(ok);
        $("#btns").append(cancel);
        
        $("#submit").on("click",function(){
            // 패스워드 검사
                  
            let pw = $("#pw").val();
            
            let pwRegex = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?=[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,}$/;
            let pwResult = pwRegex.test(pw);
            
           if(pw != ""){
            	if (!pwResult) {
                    alert("PW를 다시 입력해주세요.(영문,숫자,특수문자 중 최소 2가지 포함 10자 이상)");
                    $("#pw").val("");
                    $("#pw").focus();
                    return false;
                }
           }
                   
//             let pwRegex = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?=[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,}$/;
//             let pwResult = pwRegex.test(pw);
//             if (!pwResult) {
//                 alert("PW를 다시 입력해주세요.(영문,숫자,특수문자 중 최소 2가지 포함 10자 이상)");
//                 $("#pw").val("");
//                 $("pw_check").val("");
//                 $("#pw").focus();
//                 return false;
//             }

            // 닉네임 검사
            let nickname = $("#nickname").val();
            let nicknameRegex = /[\w가-힣]{2,8}/;
            let nicknameResult = nicknameRegex.test(nickname);
            if (!nicknameResult) {
                alert("닉네임을 다시 입력해주세요.(특수문자제외, 2~8자)");
                $("#nickname").val("");
                $("#nickname").focus();
                return false;
            }
        })
    })
    
    $("#memberOut").on("click", function() {
                let result = confirm("정말 탈퇴하시겠습니까?");
                if(result){
                    location.href="/memberOut.member";
                }
            });
    $("#back").on("click",function(){
        location.href="index.jsp";
    })
    
    $("#logout").on("click",function(){
	location.href = "/logout.member";
	});
</script>
</html>