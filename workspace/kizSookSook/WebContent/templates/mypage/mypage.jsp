<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>마이페이지</title>
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
                            <a href="${pageContext.request.contextPath}/enquiry.notice" class="profile-a">
                                <span>문의하기 페이지로 이동</span>
                            </a>
                        </div>
                        <div class="aside-menu-wrapper">
                            <div class="menu-mypage-title">마이크몽</div>
                            <hr class="menu-hr" />
                            <a href="${pageContext.request.contextPath}/purchaseListAction.mypage" class="menu-item">
                                <div class="item-name">체험학습 내역</div>
                            </a>
                            <a href="${pageContext.request.contextPath}/cashCheckAction.mypage" class="menu-item">
                                <div class="item-name">크몽 캐시</div>
                            </a>
                            <a href="${pageContext.request.contextPath}/changeInfoAction.mypage" class="menu-item">
                                <div class="item-name">나의 정보</div>
                            </a>
                            <a href="${pageContext.request.contextPath}/reviewListCheckAction.mypage" class="menu-item">
                                <div class="item-name">내 후기</div>
                            </a>
                            <a href="${pageContext.request.contextPath}/enquiryListCheckAction.mypage" class="menu-item">
                                <div class="item-name">내 문의사항</div>
                            </a>
                            <a href="${pageContext.request.contextPath}/deleteAccountAction.mypage" class="menu-item">
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
    	/* let textNull = new Array(
    		    		textNull = JSON.parse(`${fieldTrips}`);
    		    		textNull = JSON.parse(`${enquiries}`);
    		    		);
    	
    	for (let checkText of textNull) {
			if(checkText != null) {
				console.log(checkText);
			}
		} */
    	/* let fieldTrips = JSON.parse(`${fieldTrips}`);
    	console.log(fieldTrips); */
    	let enquiries = JSON.parse(`${enquiries}`);
    	console.log(enquiries);
    </script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/jQueryDom.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/unregister-check.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/events.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mypage/mypage.js"></script>
</html>
