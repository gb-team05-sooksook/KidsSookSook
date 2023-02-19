<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>마이페이지</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/mypage-default.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/mypage.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/mypage-profile-wrapper.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/mypage-aside-menu.css" />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/stage-list/stage-default.css"
        />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/stage-list/trip-history.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/font/mypage-font.css" />
    </head>
    <body>
        <header></header>
        <div>
            <div class="main-container">
                <div class="main">
                    <section class="aside">
                        <div class="profile-wrapper">
                            <div class="profile-img">
                                <img
                                    src="https://kmong.com/img/tools/main_user_gray.png"
                                />
                                <div class="member-type">의뢰인</div>
                            </div>
                            <div class="member-identification">
                                신중한여우6531
                            </div>
                            <a href="" class="profile-a">
                                <span class="svg-switch-wrapper"
                                    ><span
                                        role="img"
                                        rotate="0"
                                        class="svg-witch-span"
                                        ><svg
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="currentColor"
                                            aria-hidden="true"
                                            focusable="false"
                                            preserveAspectRatio="xMidYMid meet"
                                            class="svg-switch"
                                        >
                                            <path
                                                xmlns="http://www.w3.org/2000/svg"
                                                d="M16.2489909,4.5 L15.0473762,5.76039933 L16.7469726,7.54314238 L4.35181644,7.54314238 L4.35181644,9.32588543 L16.7469726,9.32588543 L15.0473762,11.1086285 L16.2489909,12.3690278 L20,8.43540528 L16.2489909,4.5 Z M4,15.5654861 L7.75100914,19.5 L8.95262375,18.2396007 L7.25302741,16.457749 L19.6481836,16.457749 L19.6481836,14.6741146 L7.25302741,14.6741146 L8.95262375,12.8913715 L7.75100914,11.6300808 L4,15.5654861 Z"
                                            ></path></svg></span
                                ></span>
                                <span>전문가로 전환</span>
                            </a>
                        </div>
                        <div class="aside-menu-wrapper">
                            <div class="menu-mypage-title">마이크몽</div>
                            <hr class="menu-hr" />
                            <a href="" class="menu-item">
                                <div class="item-name">구매 관리</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">크몽 캐시</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">캐시 충전</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">쿠폰</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">결제 내역</div>
                            </a>
                        </div>
                    </section>
                    <section class="stage"></section>
                </div>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script>
        $.get("stage-list/trip-history.html", function (data) {
            $(".stage").append($(data).fadeIn());
        });
    </script>
</html>
