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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/findIdPw/passwordFind.css">
</head>
<body>
    <div id="__next">
        <header role="heading" class="page-header">
            <div class="page-header-inner">
                <a role="link" href="/" class="page-header-link">
                    <img src="${pageContext.request.contextPath}/static/resources/img/logo/logo-2.png" style="width: 130px;">
                </a>
            </div>
        </header>
        <main class="page-main">
            <h1 class="page-main-title">아이디 비밀번호 찾기</h1>
            <section class="main-id-pw-select">
                <div class="main-id-page" style="cursor: pointer" onclick="location.href='${pageContext.request.contextPath}/idFind.member'">아이디</div>
                <div class="main-pw-page" style="cursor: pointer" onclick="location.href='${pageContext.request.contextPath}/passwordFind.member'">비밀번호</div>
            </section>
            <section>
                <section>
                    <h2 class="main-pw-find-title">비밀번호 찾기</h2>
                    <p class="main-pw-find-explain">가입 시 등록하신 이메일 주소를 입력해 주세요. 비밀번호 재설정 링크를 보내드립니다.</p>
                    <form class="main-pw-find-form" action="${pageContext.request.contextPath}/findPwAction.member" method="post">
                        <section>
                            <label class="main-pw-find-input-text">이메일</label>
                            <div class="main-pw-find-input-div">
                                <input data-testid="email" type="email" placeholder="이메일 주소를 입력해 주세요." name="userEmail" class="main-pw-find-input" value="" onkeyup="removeAttrBtn()">
                            </div>
                        </section>
                        <div class="main-pw-find-btn-div">
                            <button role="button" color="yellow" disabled type="submit" class="main-pw-find-btn">
                                <span>비밀번호 재설정 링크 받기</span>
                            </button>
                        </div>
                    </form>
                </section>
            </section>
        </main>
    </div>



    <div class="swal2-container swal2-center swal2-backdrop-show" style="overflow-y: auto;">
        <div aria-labelledby="swal2-title" aria-describedby="swal2-content" class="swal2-popup swal2-modal kmong-desktop-sweetalert-popup swal2-icon-success swal2-show" tabindex="-1" role="dialog" aria-live="assertive" aria-modal="true" style="display: flex;">
            <div class="swal2-header">
                <div class="swal2-ok-image"></div>
                <h2 class="swal2-title kmong-desktop-sweetalert-title" id="swal2-title" style="display: flex;">
                    입력하신 이메일 주소로 비밀번호 변경
                    <br>
                    URL(을)를 전송하였습니다.
                </h2>
            </div>
            <div class="swal2-actions">
                <button type="button" class="swal2-confirm kmong-desktop-sweetalert-confirm swal2-styled" aria-label="" style="display: inline-block; background-color: rgb(255, 212, 0);">확인</button>
            </div>
            <div class="swal2-timer-progress-bar-container"></div>
        </div>
    </div>

    <div class="swal2-container-fail swal2-center swal2-backdrop-show" style="overflow-y: auto;">
        <div aria-labelledby="swal2-title" aria-describedby="swal2-content" class="swal2-popup swal2-modal kmong-desktop-sweetalert-popup swal2-icon-success swal2-show" tabindex="-1" role="dialog" aria-live="assertive" aria-modal="true" style="display: flex;">
            <div class="swal2-header">
                <div class="swal2-fail-image"></div>
                <h2 class="swal2-title-fail kmong-desktop-sweetalert-title" id="swal2-title" style="display: flex;">
                    회원정보가 없습니다.
                </h2>
            </div>
            <div class="swal2-actions">
                <button type="button" class="swal2-confirm kmong-desktop-sweetalert-confirm swal2-styled" aria-label="" style="display: inline-block; background-color: rgb(255, 212, 0);">확인</button>
            </div>
            <div class="swal2-timer-progress-bar-container"></div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/joinLogin/findIdPw/passwordFind.js"></script>
</html>