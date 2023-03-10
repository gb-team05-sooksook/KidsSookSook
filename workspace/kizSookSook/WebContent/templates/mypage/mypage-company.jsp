<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>마이페이지-기업</title>
        <link
            rel="icon"
            href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/mypage-default.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/mypage.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/mypage-profile-wrapper.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/mypage-aside-menu.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/stage-list/stage-default.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/stage-list/trip-history.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/stage-list/cash-history.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/stage-list/my-info.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/stage-list/unregitser.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/stage-list/my-review.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/css/mypage/modal.css"
        />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/static/font/font.css"
        />
    </head>
    <body>
        <header></header>
        <div class="modal-background" style="display: none">
            <section
                class="modal-container"
                style="display: none; opacity: 0"
            ></section>
        </div>
        <div>
            <div class="main-container">
                <div class="main">
                    <section class="aside">
                        <div class="profile-wrapper">
                            <div class="profile-img">
                                <img
                                    src="${pageContext.request.contextPath}/static/resources/img/mypage/mypage_male_profile.png"
                                />
                                <div class="member-type">의뢰인</div>
                            </div>
                            <div class="member-identification">
                                신중한여우6531
                            </div>
                            <a href="${pageContext.request.contextPath}/templates/customerCenter/enquiry.notice" class="profile-a">
                                <span>문의하기 페이지로 이동</span>
                            </a>
                        </div>
                        <div class="aside-menu-wrapper">
                            <div class="menu-mypage-title">마이크몽</div>
                            <hr class="menu-hr" />
                            <a href="" class="menu-item">
                                <div class="item-name">체험학습 등록</div>
                            </a>
                            
                            <a href="" class="menu-item">
                                <div class="item-name">나의 정보</div>
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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    	let pageNumber = `${pageNumber}`;
    	let pageContext = '${pageContext.request.contextPath}';
    	let fieldTrips = JSON.parse(`${fieldTrips}`);
    	console.log(fieldTrips);
    </script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/jQueryDom-company.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/unregister-check-company.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/events-company.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/mypage-company.js"></script>
</html>
