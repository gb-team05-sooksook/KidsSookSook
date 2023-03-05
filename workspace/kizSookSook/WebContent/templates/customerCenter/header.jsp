<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 - 키즈쑥쑥 고객센터</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/header.css">
    <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
</head>

<body>
    <!-- header start-->
    <div style="background-color:#FAE57C">
        <header class="header" style="background-color:#FAE57C">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/templates/main/main.main">
                    <img src="${pageContext.request.contextPath}/static/resources/img/logo/logo.png" class="logo-kidsSookSook">
                </a>
                <a title="홈" href="${pageContext.request.contextPath}/templates/customerCenter/customer-main.jsp">
                    <img src="//theme.zdassets.com/theme_assets/9204604/db54bfa5d2ad14572afe57b4b5582b04a38aa9e1.png" class="cs">
                </a>
            </div>
            <div class="nav-wrapper">
                <a href="${pageContext.request.contextPath}/templates/customerCenter/enquiry.jsp" target="_parent">문의하기</a>
                <a class="login" data-auth-action="signin" role="button" rel="nofollow" title="대화 상자를 엽니다."
                    href="">로그인</a>
            </div>
        </header>
    </div>
    <!-- header end -->
 
</body>
<script src="${pageContext.request.contextPath}/static/js/customerCenter/clickChangeBorder.js"></script>

</html>