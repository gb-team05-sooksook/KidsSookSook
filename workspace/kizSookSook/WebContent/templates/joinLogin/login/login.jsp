<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전문가가 필요한 순간 샬라샬라</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/login/login.css">
</head>
<body>
    <button class="btn-login-modal">로그인</button>
    스승의 은혜는 하늘같은데
    스승의 날은 어째서 평일입니까
    선생님 죄송합니다 빨간날인줄 알았어요

    손발이 닳도록 고생하시는
    어버이날은 어째서 평일입니까
    부모님 죄송합니다 보일러 꼭 놔드릴게요

    돌아와라 빨간날
    랄라랄라랄라 라 랄라랄라랄라
    오오 어디로갔냐 빨간날

    랄라랄라랄라 라 랄라랄라랄라
    넌 넌 넌 대체 어디로 간거야
    돌아와라 빨간날

    지구는 언제나 푸른 별인데
    식목일은 어째서 평일입니까
    지구야 미안하구나 이젠 쓰레기 안버릴게

    언제나 열심히 일만 하는데
    근로자의 날은 왜 또 평일입니까
    친구야 미안하구나 내가 오늘 탕수육 쏠게

    돌아와라 빨간날
    랄라랄라랄라 라 랄라랄라랄라
    오오 어디로갔냐 빨간날

    랄라랄라랄라 라 랄라랄라랄라
    넌 넌 넌 대체 어디로 간거야
    돌아와라 빨간날

    돌아와라 빨간날
    랄라랄라랄라 라 랄라랄라랄라
    오오 어디로갔냐 빨간날

    랄라랄라랄라 라 랄라랄라랄라
    진짜 진짜 어디로 간거야

    랄라랄라랄라 라 랄라랄라랄라
    오오 어디로갔냐 빨간날

    랄라랄라랄라 라 랄라랄라랄라
    진짜 진짜 넌 대체 어디로 간거야

    돌아와라 빨간날
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
                            <img alt="로그인모달 배경이미지" src="1661922248128.jpg" width="600" height="656" decoding="async" data-nimg="1" loading="lazy" style="color: transparent;">
                            <p class="modal-background-introduce eyci4q02">
                                <span>현재 2,544,436명의 회원이 크몽에서 활동하고 있습니다.</span>
                                <br>
                                <span style="font-weight: 500;">2,544,437</span>
                                번째 크몽회원이 되어보세요 :)
                            </p>
                        </div>
                        <div class="modal-login">
                            <h2 class="modal-login-title">로그인</h2>
                            <form novalidate="" class="modal-login-form">
                                <div class="modal-login-div-outer">
                                    <div class="modal-login-div-inner">
                                        <input type="email" required="" placeholder="이메일을 입력해 주세요." name="email" autocomplete="username" class="modal-login-id" value="">
                                    </div>
                                    <div class="modal-login-between"></div>
                                </div>
                                <div class="modal-login-div-outer">
                                    <div class="modal-login-div-inner">
                                        <input type="password" required="" placeholder="비밀번호를 입력해 주세요." name="password" autocomplete="current-password" class="modal-login-id" value="">
                                    </div>
                                    <div class="modal-login-between"></div>
                                </div>
                                <button role="button" color="yellow" type="submit" class="modal-login-btn">
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
                                        <a href="/forgot-pwd?next_page=%2F%3Futm_source%3Dgoogle%26utm_medium%3Dcpc%26utm_campaign%3D0%26utm_content%3Dmarket%26utm_group%3D0%26utm_term%3D%25ED%2581%25AC%25EB%25AA%25BD%26gclid%3DCj0KCQiA6LyfBhC3ARIsAG4gkF-zawIWEWRoAWVfgwwObzjxlp6RN9Z1EYPO6-Winq19vJL16UBB6c8aAteGEALw_wcB" class="modal-keep-find-text">아이디•비밀번호 찾기</a>
                                    </div>
                                </div>
                            </form>
                            <div class="modal-sns-login">
                                <p class="modal-sns-login-text">SNS계정으로 간편하게 로그인하세요.</p>
                                <div class="SnsLoginBtn">
                                    <a data-ga-category="" data-ga-label="" data-ga-action="" class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(99, 195, 61);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_naver.png" alt="sns아이콘" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(255, 255, 255); border-color: rgb(255, 255, 255);">네이버 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="SnsLoginBtn">
                                    <a data-ga-category="" data-ga-label="" data-ga-action="" class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(252, 232, 77);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_kakao.png" alt="sns아이콘" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(51, 51, 51); border-color: rgb(51, 51, 51);">카카오톡 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="SnsLoginBtn">
                                    <a data-ga-category="" data-ga-label="" data-ga-action="" class="flex-center-center btn btn-default width-100 btn-sns-signup NGM border-none" style="background-color: rgb(208, 83, 63);">
                                        <div class="flex-left-center">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/icon_google.png" alt="sns아이콘" class="width-30px margin-right-5">
                                            <span style="font-size: 15px; color: rgb(255, 255, 255); border-color: rgb(255, 255, 255);">구글 간편 가입 하기</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <hr orientation="horizontal" class="modal-line">
                            <div>
                                <p class="modal-adver">
                                    크몽의 회원이 되시면
                                    <br>
                                    <b>10만원 할인혜택</b>
                                    을 드립니다.
                                </p>
                                <a role="link" color="denim" href="/signup?next_page=%2F%3Futm_source%3Dgoogle%26utm_medium%3Dcpc%26utm_campaign%3D0%26utm_content%3Dmarket%26utm_group%3D0%26utm_term%3D%25ED%2581%25AC%25EB%25AA%25BD%26gclid%3DCj0KCQiA6LyfBhC3ARIsAG4gkF-zawIWEWRoAWVfgwwObzjxlp6RN9Z1EYPO6-Winq19vJL16UBB6c8aAteGEALw_wcB" class="modal-join">
                                    <span>크몽 회원가입 하기</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/joinLogin/login/login.js""></script>
</html>