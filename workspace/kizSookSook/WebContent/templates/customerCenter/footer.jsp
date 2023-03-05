<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 - 키즈쑥쑥 고객센터</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/institution-notice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/header.css">
    <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
</head>

<body>
     <!-- footer start-->
     <footer class="footer">
        <div class="footer-inner">
            <ol style="width:40%">
                <b>(주)키즈쑥쑥</b> | 서울시 서초구 테헤란로 145, 4층 | 대표 : HJH<br>
                개인정보보호책임 : HJH | 사업자등록번호 : 111-777-33333<br>
                통신판매업신고 : 2023-서울서초-2134 | 1111-2222<br>
                help@kidsSookSook.com | 호스팅 사업자: Amazon Web Service(AWS)
            </ol>
            <ol><a href="${pageContext.request.contextPath}/templates/customerCenter/notice.jsp">공지사항</a></ol>
            <ol><a href="${pageContext.request.contextPath}/templates/customerCenter/faq.jsp">FAQ</a></ol>
            <ol><a href="">이용약관</a></ol>
        </div>
        <div class="footer-mweb">
            &nbsp;&nbsp; (주) 키즈쑥쑥 &nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/templates/customerCenter/notice.jsp">공지사항</a>&nbsp;
            <a href="${pageContext.request.contextPath}/templates/customerCenter/faq.jsp">FAQ</a>&nbsp;
            <a href="">이용약관</a>&nbsp;
            <a href="${pageContext.request.contextPath}/templates/customerCenter/enquiry.jsp">1:1 문의하기</a>&nbsp;&nbsp;
        </div>
    </footer>

</body>
<script src="${pageContext.request.contextPath}/static/js/customerCenter/clickChangeBorder.js"></script>

</html>