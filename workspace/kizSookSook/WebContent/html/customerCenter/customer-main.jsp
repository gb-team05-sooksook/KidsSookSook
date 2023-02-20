<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키즈쑥쑥 고객센터</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerCenter/customer-main.css">

</head>

<body>
    <!-- header start-->
    <div style="background-color:#FAE57C">
        <header class="header" style="background-color:#FAE57C">
            <div class="logo">
                <a href="">
                    <img src="//theme.zdassets.com/theme_assets/9204604/ed54b2d958a2f7b420f8412b529519e676c20bc3.png"
                        class="logo-kmong">
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
        <section class="section hero">
            <div class="hero-inner">
                <div class="hero-text"></div>
                <form role="search" class="search search-full" data-search="" data-instant="true" autocomplete="off"
                    action="/hc/ko/search" accept-charset="UTF-8" method="get">
                    <input name="utf8" type="hidden" value="✓" autocomplete="off">
                    <input type="search" name="query" id="query" placeholder="검색" autocomplete="off" aria-label="검색">
                </form>
            </div>
        </section>

        <div class="container">
            <section class="section knowledge-base">
                <div class="home-list-title">공지사항&nbsp;&nbsp;
                    <h5 style="display:inline">
                        <a href="">더보기</a>
                    </h5>
                </div>
                <li class="home-list">
                    <a href="">2월, 고객센터 운영 시간 안내</a>
                </li>
                <li class="home-list">
                    <a href="">[업데이트] iOS / 안드로이드 지원 중단 버전 안내 (2023.02.27)</a>
                </li>
                <li class="home-list">
                    <a href="">[업데이트] 포트폴리오 메인화면, 기능 개선 (2023.01.05)</a>
                </li>
                <li class="home-list">
                    <a href="">크몽을 사칭하는 메시지, 조심하세요!</a>
                </li>
                <li class="home-list">
                    <a href="">페널티 정책 안내 (시행일: 7월 4일)</a>
                </li>
            </section>

            <section class="section knowledge-base">


                <div class="home-list-title">FAQ&nbsp;&nbsp;<h5 style="display:inline"><a href="">더보기</a></h5>
                </div>
                <li class="home-list">
                    <a href="">[서비스 소개] 키즈쑥쑥은 어떻게 이용하나요?</a>
                </li>
                <li class="home-list">
                    <a href="">[서비스 소개] 키즈쑥쑥 이용가이드: 개인회원 편</a>
                </li>
                <li class="home-list">
                    <a href="">[서비스 소개] 키즈쑥쑥 이용가이드: 단체회원 편</a>
                </li>
                <li class="home-list">
                    <a href="">[구매 및 영수증] 세금계산서는 누가 발행하며, 어떻게 신청하나요?</a>
                </li>
                <li class="home-list">
                    <a href="">[문제 해결] 거래 중 분쟁이 발생하면 어떻게 하나요?</a>
                </li>
                <li class="home-list">
                    <a href="">[이용방법] 키즈쑥쑥 캐시는 어떻게 환불받나요?</a>
                </li>

            </section>
            <section class="section knowledge-base">
                <div class="home-list-title">전문가 센터&nbsp;&nbsp;
                    <h5 style="display:inline">
                        <a href="">더보기</a>
                    </h5>
                </div>
                <ul class="blocks-list">

                    <div class="blocks-item">
                        <a href="" class="blocks-item-link">
                            <h4 class="blocks-item-title">공지사항</h4>
                        </a>
                    </div>

                    <div class="blocks-item">
                        <a href="" class="blocks-item-link">
                            <h4 class="blocks-item-title">FAQ</h4>
                        </a>
                    </div>
                    <div class="blocks-item">
                        <a href="" class="blocks-item-link">
                            <h4 class="blocks-item-title">교육자료</h4>
                        </a>
                    </div>
                    <div class="blocks-item">
                        <a href="" class="blocks-item-link">
                            <h4 class="blocks-item-title">이벤트 · 혜택</h4>
                        </a>
                    </div>
                </ul>
            </section>
        </div>
    </main>
    <!-- main end -->

    <!-- footer start-->
    <footer class="footer">
        <div class="footer-inner">
            <ol style="width:40%">
                <b>(주)크몽</b> | 서울시 서초구 사임당로 157, 3층 | 대표 : 박현호<br>
                개인정보보호책임 : 송준이 | 사업자등록번호 : 613-81-65278<br>
                통신판매업신고 : 2018-서울서초-2134 | 1544-6254<br>
                help@kmong.com | 호스팅 사업자: Amazon Web Service(AWS)
            </ol>
            <ol><a href="">공지사항</a></ol>
            <ol><a href="">FAQ</a></ol>
            <ol><a href="">이용약관</a></ol>
            <ol><a href=""><b>개인정보처리방침</b></a></ol>
        </div>
        <div class="footer-mweb">
            &nbsp;&nbsp; (주) 크몽 &nbsp;&nbsp;&nbsp;
            <a href="">공지사항</a>&nbsp;
            <a href="">FAQ</a>&nbsp;
            <a href="">이용약관</a>&nbsp;
            <a href=""><b>개인정보처리방침</b></a>&nbsp;
            <a href="">1:1 문의하기</a>&nbsp;&nbsp;
        </div>

    </footer>
    <!-- footer end -->
</body>
<script src="customer-main.js"></script>

</html>