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

        .hover:hover {
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div id="container" align=center>
        <div style="width: 50%; padding-top: 1%;">
            <div style="float: left; width: 50%;" align=left>
                <a href="./addpuzzle.jsp"><img id="back" src="./img/back.png" style="width: 4%;"></a>
            </div>
            <div style="float: left; width: 50%;" align=right>
                <img class="hover" id="close" src="./img/x.png" style="width: 7%;">
            </div>
        </div>
        <div align=center style="width: 70%; padding-top: 4%;">
            <img src="./img/addl1.png" alt="" style="padding-bottom: 5%; width: 50%;">
            <img src="./img/addl2.png" alt="" style="padding-bottom: 3%; width: 50%;"><br>
            <a href="./addnetleader2.jsp"><img id="next" src="./img/next.png" style="padding-bottom: 3%; width: 20%;"></a>
        </div>
    </div>
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


</script>

</html>