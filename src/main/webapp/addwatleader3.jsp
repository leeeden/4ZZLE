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
    <title>퍼즐장 추가</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&family=Nanum+Myeongjo&display=swap"
        rel="stylesheet">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="sweetalert2/dist/sweetalert2.min.js"></script>

    <style>
        * {
            box-sizing: border-box;
            background-color: #121212;
        }

        #container {
            padding: 0px;
        }

        
        /* div {
            border: 1px solid crimson;
        } */

        input::placeholder {
         color: #888888;
         font-size: 16px;
        }

        input:focus {outline: none;}

        a:link { color: #888888; text-decoration: none;}

    </style>
</head>

<body>
<form action="/updatePuzzle.member" method="post">
    <div id="container" align=center>
        <div style="width: 50%; padding-top: 1%;">
            <div style="float: left; width: 50%;" align=left>
                <a href="./addwatleader2.jsp"><img id="back" src="./img/back.png" style="width: 4%;"></a>
            </div>
            <div style="float: left; width: 50%;" align=right>
                <img id="close" src="./img/x.png" style="width: 7%;">
            </div>
        </div>
        <div align=center style="width: 70%; padding-top: 4%;">
            <img src="./img/addl6.png" style="padding-bottom: 5%; width: 50%;"><br>
            <div style="border-radius: 25px; border: none; background-color: #ededed; width: 50%; height:50px; color: #121212; font-weight: bold; font-size: 20px; line-height: 45px; padding-left: 20px;" align=left>
                ID
                <input id="id" type="text" placeholder="왓챠 아이디 입력" style="border: none; background-color: #ededed; width: 80%;">
            </div>
            <div id="idchk" style="width: 50%; margin-left: 2%; padding-top: 1%;" align=left></div>
            <div style="border-radius: 25px; border: none; background-color: #ededed; width: 50%; height:50px; color: #121212; font-weight: bold; font-size: 20px; line-height: 45px; padding-left: 20px; margin-top: 1%;" align=left>
                PW
                <input id="pw" type="text" placeholder="왓챠 비밀번호 입력" style="border: none; background-color: #ededed; width: 80%;">
            </div>
            <div style="width: 50%; margin-left: 2%; color: #ededed; padding-top: 1%;" align=left>공유 가능한 안전한 비밀번호를 사용해주세요</div>
            <a id="disabled"><img id="next" src="./img/next.png" style="padding-bottom: 1%; width: 20%; opacity: 0.5; margin-top: 3%;"></a><br>
            <input type="hidden" name="netflix">
            <input type="hidden" name="watcha" value="B">
            <input type="hidden" name="tving">
            <input type="hidden" name="disney">
           <button type="submit" style="color: #888888; border:none;">퍼즐 생성 후 등록하기</button>
        </div>
    </div>
    </form>
</body>
<script>
    $("#close").on("click", function () {
        Swal.fire({
            background: '#121212',
            html: "입력된 정보가 저장되지 않아요.<br>퍼즐 생성을 그만하시겠어요?",
            color: '#ededed',
            showCancelButton: true,
            confirmButtonColor: '#7a07ee',
            cancelButtonColor: '#999999',
            confirmButtonText: '확인',
            cancelButtonText: '취소',
            reverseButtons: true
        }).then((result) => {
            if (result.isConfirmed) {
                location.href = "./addpuzzle.jsp"
            }
        })
    });

    let phoneRegex = /^01[\d]-?\d{3,4}-?\d{4}$/;
    let mailRegex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

            $("#id").on("keyup",function() {
            let inputId = document.getElementById("id");

            if (!phoneRegex.test(inputId.value) && !mailRegex.test(inputId.value)) {
                $("#idchk").text("정확한 이메일 주소나 전화번호를 입력해주세요")
                $("#idchk").css("color","#7A07EE");
                $("#next").css("opacity",0.5);
            }else {
                $("#idchk").css("display","none");
                // $("#next").css("opacity",1.0);
            }
        })

           $("#pw").on("keyup",function() {
            let inputId = document.getElementById("id");
            let inputPw = document.getElementById("pw");

            if (document.getElementById("pw").value != "") {
                $("#next").css("opacity",1.0);
                $("#disabled").attr("href","./addpuzzleleader4.jsp");
            }
        })
                
</script>

</html>