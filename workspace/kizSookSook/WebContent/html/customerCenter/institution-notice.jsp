<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 - 키즈쑥쑥 고객센터</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerCenter/institution-notice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerCenter/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerCenter/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerCenter/header.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/logo/icon.png">
</head>

<body>
    <!-- header start-->
    <div style="background-color:#FAE57C">
        <header class="header" style="background-color:#FAE57C">
            <div class="logo">
                <a href="">
                    <img src="${pageContext.request.contextPath}/resources/img/logo/logo.png" class="logo-kidsSookSook">
                </a>
                <a title="홈" href="">
                    <img src="//theme.zdassets.com/theme_assets/9204604/db54bfa5d2ad14572afe57b4b5582b04a38aa9e1.png"
                        class="cs">
                </a>
            </div>
            <div class="nav-wrapper">
                <a href="" target="_parent">문의하기</a>
                <a class="login" data-auth-action="signin" role="button" rel="nofollow" title="대화 상자를 엽니다."
                    href="">로그인</a>
            </div>
        </header>
    </div>
    <!-- header end -->
  <!-- main start -->
    <main role="main">
        <div class="container-divider"></div>
        <div class="container">
            <nav class="sub-nav">
                <ol class="breadcrumbs">
                    <li title="크몽 고객센터">
                        <a href="">키즈쑥쑥 고객센터</a>
                    </li>
                    <li title="전문가 센터">
                        <a href="">기관 문의센터</a>
                    </li>
                    <li title="공지사항">
                        <a href="">공지사항</a>
                    </li>
                </ol>
                <form role="search" class="search" accept-charset="UTF-8">
                    <input name="utf8" type="hidden" value="✓">
                    <input type="search" name="query" id="query" placeholder="검색">
                </form>
            </nav>
            <div class="section-container">
                <section class="section-content">
                    <header class="page-header">
                        <h1>
                            <div class="page-title">공지사항</div>
                        </h1>
                    </header>
                    <ul class="article-list">
                        <li class="article-list-item  article-promoted">
                            <span data-title="승격된 문서" class="icon-star"></span>
                            <a href="" class="article-list-link">[공지] 키즈쑥쑥 TEST1</a>
                        </li>
                        <li class="article-list-item  article-promoted">
                            <span data-title="승격된 문서" class="icon-star"></span>
                            <a href="" class="article-list-link">[업데이트] 키즈쑥쑥 TEST2</a>
                        </li>
                        <li class="article-list-item  article-promoted">
                            <span data-title="승격된 문서" class="icon-star"></span>
                            <a href="" class="article-list-link">[자료·템플릿] 키즈쑥쑥 TEST3 (2023.2.21)</a>
                        </li>
                        <li class="article-list-item  article-promoted">
                            <span data-title="승격된 문서" class="icon-star"></span>
                            <a href="" class="article-list-link">[업데이트] 키즈쑥쑥 TEST4</a>
                        </li>
                    </ul>
                    <nav class="pagination">
                        <ul>
                            <li class="pagination-current">
                                <span>1</span>
                            </li>
                            <li>
                                <a href="" rel="next nofollow">2</a>
                            </li>
                            <li class="pagination-next">
                                <a href="" rel="next nofollow">›</a>
                            </li>
                            <li class="pagination-last">
                                <a href="" rel="nofollow">»</a>
                            </li>

                        </ul>
                    </nav>
                </section>
            </div>
        </div>

    </main>
    <!-- main end -->


    <!-- footer start-->
    <footer class="footer">
        <div class="footer-inner">
            <ol style="width:40%">
                <b>(주)키즈쑥쑥</b> | 서울시 서초구 테헤란로 145, 4층 | 대표 : HJH<br>
                개인정보보호책임 : HJH | 사업자등록번호 : 111-777-33333<br>
                통신판매업신고 : 2023-서울서초-2134 | 1111-2222<br>
                help@kidsSookSook.com | 호스팅 사업자: Amazon Web Service(AWS)
            </ol>
            <ol><a href="">공지사항</a></ol>
            <ol><a href="">FAQ</a></ol>
            <ol><a href="">이용약관</a></ol>
            <ol><a href=""><b>개인정보처리방침</b></a></ol>
        </div>
        <div class="footer-mweb">
            &nbsp;&nbsp; (주) 키즈쑥쑥 &nbsp;&nbsp;&nbsp;
            <a href="">공지사항</a>&nbsp;
            <a href="">FAQ</a>&nbsp;
            <a href="">이용약관</a>&nbsp;
            <a href=""><b>개인정보처리방침</b></a>&nbsp;
            <a href="">1:1 문의하기</a>&nbsp;&nbsp;
        </div>
    </footer>

</body>
<script src="${pageContext.request.contextPath}/js/customerCenter/clickChangeBorder.js"></script>

</html>