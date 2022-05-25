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
    <title>로그인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Noto Sans KR';
			font-style: normal;
			font-weight: 700;
        }

        #container {
            padding: 0px;
            background-image: url(/img/joinmain2.png);
            height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
        }

        #header div {
            float: left;
        }

        #hleft {
            width: 91%;
            color: #EDEDED;
        }

        #hright {
       		font-family: 'Noto Sans KR';
			font-style: normal;
			font-weight: 700;
            width: 7%;
            height: 45px;
            line-height: 45px;
            font-weight: bold;
            background-color: #7A07EE;
            color: #FFFFFF;
            border-radius: 12px;
        }

        #contents div, #row1 div {
            float: left;
        }

        #center {
            height: 100%;
            width: 16%;
            color: #EDEDED;
        }

        input[type$=xt], input[type$=word] {
            border: 0.5px solid #aaa;
            border-radius: 0;
            width: 100%;
            height: 50px;
            padding: 0.6em 1.4em 0.5em 0.8em;
        }

        #login {
            width: 100%;
            height: 45px;
            line-height: 45px;    
        }
        
        #submit {
       		font-family: 'Noto Sans KR';
			font-style: normal;
			font-weight: 700;
            width: 7%;
            height: 45px;
            line-height: 45px;
            font-weight: bold;
            background-color: #7A07EE;
            color: #FFFFFF;
            border-radius: 12px;
            width: 100%; 
            margin-top: 5%; 
            border: none;
        }

    </style>
</head>
<body>
<form action="/login.member" method="post">
    <div id="container">
        <div id="header" style="padding-top: 1%;">
            <div id="hleft">
                <a href="/index.jsp"><img src="/img/logo3.png" style="width: 10%; margin-left: 1%;"></a> 
            </div>
            <a href="/member/join.jsp"><div id="hright" align=center>회원가입</div></a>
        </div>
        <div style="height: 30%;"></div>
        <div id="contents">
            <div id="left" style="width: 42%;">　</div>
            <div id="center">
                <div id="row1" style="width: 100%;">
                    <div id="left1" style="font-weight: bold; font-size: 18px; width: 30%; padding-bottom: 2%;">
                        로그인
                    </div>
                    <a href="/member/findpassword.jsp"><div id="left2" style="width: 70%; font-size: 11px; line-height: 25px; color: #aaa;" align=right>비밀번호를 잊어버리셨나요?</div></a>
                </div> 
                <br>
                <div id="row2" style="width: 100%; font-size: 14px;">
                    <input type="text" id="id" name="id" placeholder="이메일 (example@gmail.com)"
                        style="border-top-left-radius: 5px; border-top-right-radius: 5px; border: none; border-bottom: 0.5px solid #ddd;">
                </div>
                <div id="row3" style="width: 100%; font-size: 14px;">
                    <input type="password" id="pw" name="pw" placeholder="비밀번호"
                        style="border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; border: none;">
                </div>
<!--                 <div id="login" style="width: 100%; margin-top: 5%; background-color: #7A07EE; border: none;" align=center> -->
<!--                 로그인 -->
				<div id="login" align=center>
                <button type="submit" id="submit">로그인</button>
                </div>
            </div>
            <div id="right"></div>
        </div>
    </div>
   </form>
</body>
<script>
	$("#join").on("click", function() {
	location.href = "/join.member";
	})

	$("#pwFind").on("click", function() {
	location.href = "/pwFind.member";
	})

	$("#submit").on("click", function() {
	// 아이디 검사
	let id = $("#id").val();
	let idRegex = /[\w\.\-]+@[\w]+\.[\w]+/;
	let idResult = idRegex.test(id);
	if (!idResult) {
		alert("ID를 이메일 형식으로 입력해주세요.");
		$("#id").val("");
		$("#id").focus();
		return false;
	}

	// 패스워드 검사
	let pw = $("#pw").val();
	let pwRegex = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?=[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,}$/;
	let pwResult = pwRegex.test(pw);
	if (!pwResult) {
		alert("PW를 다시 입력해주세요.\n(영문,숫자,특수문자 중 최소 2가지 포함 10자 이상)");
		$("#pw").val("");
		$("pw_check").val("");
		$("#pw").focus();
		return false;
	}
	
	console.log(result);
})


</script>
</html>