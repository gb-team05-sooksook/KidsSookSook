<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>마이페이지</title>
        <link rel="stylesheet" href="" />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/mypage-default.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/mypage.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/mypage-profile-wrapper.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/mypage-aside-menu.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/stage-list/stage-default.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/stage-list/trip-history.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/stage-list/cash-history.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/stage-list/my-info.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/stage-list/unregitser.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/mypage/stage-list/my-review.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/font/mypage-font.css"
        />
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
                                <span>개인 회원</span>
                            </a>
                        </div>
                        <div class="aside-menu-wrapper">
                            <div class="menu-mypage-title">마이크몽</div>
                            <hr class="menu-hr" />
                            <a href="" class="menu-item">
                                <div class="item-name">체험학습 내역</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">크몽 캐시</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">나의 정보</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">내 후기</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">내 문의사항</div>
                            </a>
                            <a href="" class="menu-item">
                                <div class="item-name">회원 탈퇴</div>
                            </a>
                        </div>
                    </section>
                    <section class="stage"></section>
                </div>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/mypage/unregister-check.js"></script>
    <script src="${pageContext.request.contextPath}/js/mypage/mypage.js"></script>
</html>
