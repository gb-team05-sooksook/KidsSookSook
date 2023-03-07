<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FAQ - 키즈쑥쑥</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customerCenter/faq.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/login/login.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">
	<link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
</head>

<body>
    <!-- header start-->
    <div style="background-color:#FAE57C">
        <header class="header" style="background-color:#FAE57C">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/main.main">
                    <img src="${pageContext.request.contextPath}/static/resources/img/logo/logo.png" class="logo-kidsSookSook">
                </a>
                <a title="홈" href="${pageContext.request.contextPath}/customer-main.notice">
                    <img src="//theme.zdassets.com/theme_assets/9204604/db54bfa5d2ad14572afe57b4b5582b04a38aa9e1.png" class="cs">
                </a>
            </div>
            <div class="nav-wrapper">
                <a href="${pageContext.request.contextPath}/templates/customerCenter/enquiry.jsp" target="_parent">문의하기</a>
                <button class="btn-login-modal">로그인</button>
            </div>
        </header>
    </div>
    <!-- header end -->
	
	<!-- login modal -->
		<div class="login-modal">
        <div data-testid="backdrop" aria-hidden="true" class="modal-background"></div>
        <div role="dialog" tabindex="0" class="modal-position">
            <div class="modal-detail-position">
                <div id="modal-content" class="modal-content">
                    <div class="modal-close">
                        <button role="button" color="default" data-testid="close-button" class="modal-btn-close">
                            <span>
                                <span role="img" color="#303441" rotate="0" class="modal-close-img">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="x-button">
                                        <path xmlns="http://www.w3.org/2000/svg" d="M6.34314575,4.92893219 L12.000039,10.585039 L17.6568542,4.92893219 C18.0473785,4.5384079 18.6805435,4.5384079 19.0710678,4.92893219 C19.4615921,5.31945648 19.4615921,5.95262146 19.0710678,6.34314575 L13.415039,12.000039 L19.0710678,17.6568542 C19.4615921,18.0473785 19.4615921,18.6805435 19.0710678,19.0710678 C18.6805435,19.4615921 18.0473785,19.4615921 17.6568542,19.0710678 L12.000039,13.415039 L6.34314575,19.0710678 C5.95262146,19.4615921 5.31945648,19.4615921 4.92893219,19.0710678 C4.5384079,18.6805435 4.5384079,18.0473785 4.92893219,17.6568542 L10.585039,12.000039 L4.92893219,6.34314575 C4.5384079,5.95262146 4.5384079,5.31945648 4.92893219,4.92893219 C5.31945648,4.5384079 5.95262146,4.5384079 6.34314575,4.92893219 Z"></path>
                                    </svg>
                                </span>
                            </span>
                        </button>
                    </div>
                    <div class="modal-inner">
                        <div class="modal-background-img">
                            <img alt="로그인모달 배경이미지" src="${pageContext.request.contextPath}/static/resources/img/logo/logo.png" width="600" height="656" decoding="async" data-nimg="1" loading="lazy" style="color: transparent;">
                            <p class="modal-background-introduce">
                            </p>
                        </div>
                        <div class="modal-login">
                            <h2 class="modal-login-title">로그인</h2>
                            <form novalidate="" class="modal-login-form" action="${pageContext.request.contextPath}/loginAction.member">
                                <div class="modal-login-div-outer">
                                    <div class="modal-login-div-inner">
                                        <input type="text" required="" placeholder="아이디를 입력해 주세요." name="userIdentification" autocomplete="username" class="modal-login-id" value="">
                                    </div>
                                    <div class="modal-login-between"></div>
                                </div>
                                <div class="modal-login-div-outer">
                                    <div class="modal-login-div-inner">
                                        <input type="password" required="" placeholder="비밀번호를 입력해 주세요." id="password" name="userPassword"  class="modal-login-id" value="">
                                    </div>
                                    <div class="modal-login-between"></div>
                                </div>
                                <button role="button" color="yellow" class="modal-login-btn">
                                    <span>로그인</span>
                                </button>
                                <div class="modal-login-addition">
                                    <label color="#ffd400" class="modal-keep-login-label">
                                        <span class="modal-keep-login-span">
                                            <input data-testid="checkbox" type="checkbox" name="remember" class="modal-keep-login">
                                            <span color="#ffd400" class="modal-checkbox-inner"></span>
                                            <span class="modal-keep-login-text">로그인 유지</span>
                                        </span>
                                    </label>
                                    <div class="modal-keep-find">
                                        <a href="${pageContext.request.contextPath}/findId.member" class="modal-keep-find-text">아이디•비밀번호 찾기</a>
                                    </div>
                                </div>
                            </form>
                            <div class="modal-sns-login">
                                <p class="modal-sns-login-text">SNS계정으로 간편하게 로그인하세요.</p>
                                <div class="SnsLoginBtn">
                                    <a class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(99, 195, 61);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_naver.png" alt="sns아이콘" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(255, 255, 255); border-color: rgb(255, 255, 255);">네이버 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="SnsLoginBtn">
                                    <a class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(252, 232, 77);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_kakao.png" alt="sns아이콘" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(51, 51, 51); border-color: rgb(51, 51, 51);">카카오톡 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="SnsLoginBtn">
                                    <a class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(208, 83, 63);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_google.png" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(255, 255, 255); border-color: rgb(255, 255, 255);">구글 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <hr orientation="horizontal" class="modal-line">
                            <div>
                                <p class="modal-adver">
                                    
                                </p>
                                <a role="link" color="denim" href="${pageContext.request.contextPath}/firstJoin.member" class="modal-join">
                                    <span>키즈쑥쑥 회원가입 하기</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
       <!-- main -->
    <main role="main">
        <div class="container-divider"></div>
        <div class="container">
            <nav class="sub-nav">
                <ol class="breadcrumbs">
                    <li title="키즈쑥쑥 고객센터">
                        <a href="${pageContext.request.contextPath}/templates/customerCenter/customer-main.jsp">키즈쑥쑥 고객센터</a>
                    </li>
                    <li title="FAQ">
                        기관안내 센터
                    </li>
                    <li title="FAQ">
                        FAQ
                    </li>
                </ol>
               
            </nav>
            <div class="category-container">
                <div class="category-content">
                    <header class="page-header">
                        <h1>
                            <div class="page-title">FAQ</div>
                        </h1>
                    </header>

                    <div class="section-tree">
                        <section class="section">
                            <h3 class="section-tree-title">
                                <a href="">기관 등록</a>
                            </h3>
                            <ul class="article-list">
                                <li class="article-list-item">
                                    <a href="${pageContext.request.contextPath}/templates/customerCenter/institution-detail-page.jsp" class="article-list-link">[기관 등록] 기관 인증 정보는 어떻게 변경하나요?</a>
                                </li>
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">[기관 등록] 기관회원으로 인증 받으려면 어떻게 해야하나요?</a>
                                </li>
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">[기관 등록] 기관회원 프로필은 어떻게 등록하나요?</a>
                                </li>
                            </ul>
                        </section>

                        <a tabindex="0" class="see-all-sections-trigger" aria-hidden="true"
                            id="see-all-sections-trigger" title="모든 섹션 보기…">모든 섹션 보기… </a>

                        <section class="section">
                            <h3 class="section-tree-title">
                                <a href="">서비스 등록</a>
                            </h3>
                            <ul class="article-list">
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">
                                    [서비스 등록] 서비스는 어떻게 등록하나요?
                                    </a>
                                </li>
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">
                                    [서비스 등록] 판매금액은 어떻게 설정하나요?
                                    </a>
                                </li>
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">
                                    [서비스 등록] 판매 카테고리는 어떻게 변경하나요?
                                    </a>
                                </li>
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">
                                    [서비스 등록] 프로필·서비스 이미지와 제목은 어떻게 설정해야 하나요?
                                    </a>
                                </li>
                            </ul>

                        </section>
                        <a tabindex="0" class="see-all-sections-trigger" aria-hidden="true"
                            id="see-all-sections-trigger" title="모든 섹션 보기…">모든 섹션 보기… </a>

                        <section class="section">
                            <h3 class="section-tree-title">
                                <a href="">판매 및 영수증</a>
                            </h3>
                            <ul class="article-list">
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">[판매 및 영수증] 판매 건에 대한 세금계산서는 어떻게 발행하나요?</a>
                                </li>
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">[판매 및 영수증] 현금영수증을 의무적으로 발행해야 하나요?</a>
                                </li>
                            </ul>
                        </section>
                        <a tabindex="0" class="see-all-sections-trigger" aria-hidden="true"
                            id="see-all-sections-trigger" title="모든 섹션 보기…">모든 섹션 보기… </a>

                        <section class="section">
                            <h3 class="section-tree-title">
                                <a href="">신고·페널티</a>
                            </h3>
                            <ul class="article-list">
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">[신고·페널티] 페널티란 무엇인가요?</a>
                                </li>
                            </ul>
                            <ul class="article-list">
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">[신고·페널티] 부정 거래가 무엇이며, 어떤 사례가 있나요?</a>
                                </li>
                            </ul>
                            <ul class="article-list">
                                <li class="article-list-item">
                                    <a href="" class="article-list-link">[신고·페널티] 직접 결제란 무엇이며, 어떤 사례가 있나요?</a>
                                </li>
                            </ul>
                        </section>

                        <a tabindex="0" class="see-all-sections-trigger" aria-hidden="true"
                            id="see-all-sections-trigger" title="모든 섹션 보기…">모든 섹션 보기… </a>
                    </div>
                </div>
            </div>
        </div>
    </main>



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
            <a href="javascript:location.href='${pageContext.request.contextPath}/termsOfService.notice'">이용약관</a>&nbsp;
            <a href="${pageContext.request.contextPath}/templates/customerCenter/enquiry.jsp">1:1 문의하기</a>&nbsp;&nbsp;
        </div>
    </footer>
    <!-- footer end -->
</body>
<script src="${pageContext.request.contextPath}/static/js/customerCenter/clickChangeBorder.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/joinLogin/login/login.js""></script>

</html>