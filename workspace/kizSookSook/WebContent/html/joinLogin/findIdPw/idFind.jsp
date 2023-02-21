<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전문가가 필요한 순간 샬라샬라</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/joinLogin/findIdPw/idFind.css">
</head>
<body>
    <div id="__next" aria-hidden="true">
        <header role="heading" class="page-header">
            <div class="page-header-inner">
                <a role="link" href="/" class="page-header-link">
                    <svg width="85" height="100%" viewBox="0 0 85 26" xmlns="http://www.w3.org/2000/svg">
                        <path d="M77.69 4.86c3.975 0 7.197 3.215 7.197 7.18l-.002.055h.002c.073 3.477.074 5.769.003 6.874-.108 1.659-.724 3.372-1.947 4.693A7.21 7.21 0 0 1 77.593 26c-2.724 0-4.998-.984-6.653-2.921l-.05-.059 3.226-2.684c.837.997 1.938 1.48 3.478 1.48.9 0 1.67-.358 2.259-.992.515-.556.817-1.263.832-1.813v-.443a7.186 7.186 0 0 1-2.995.65c-3.975 0-7.197-3.214-7.197-7.179 0-3.964 3.222-7.178 7.197-7.178zm-32.13-.225c4.131 0 7.48 3.34 7.48 7.46 0 4.121-3.349 7.462-7.48 7.462s-7.48-3.34-7.48-7.461c0-4.12 3.349-7.461 7.48-7.461zM4.533 0v10.354L8.623 5.2h5.309l-5.337 6.726 5.572 7.065h-4.98L4.534 13.42v5.572H0V0h4.533zM29.92 4.86a6.233 6.233 0 0 1 6.233 6.234v7.897H31.96v-7.908a2.04 2.04 0 0 0-4.074-.152l-.006.152v7.908h-4.193v-7.908a2.04 2.04 0 0 0-4.075-.152l-.005.152v7.908h-4.194v-7.897a6.233 6.233 0 0 1 10.371-4.662 6.201 6.201 0 0 1 4.136-1.571zm31.847 0a6.8 6.8 0 0 1 6.8 6.8v7.331h-4.194v-7.34a2.607 2.607 0 0 0-2.441-2.602l-.165-.006a2.607 2.607 0 0 0-2.602 2.442l-.005.165v7.34l-4.193.001v-7.33a6.8 6.8 0 0 1 6.8-6.8zM45.56 8.818a3.282 3.282 0 0 0-3.287 3.279 3.282 3.282 0 0 0 3.287 3.278 3.282 3.282 0 0 0 3.287-3.278 3.282 3.282 0 0 0-3.287-3.279zm32.13.226a3 3 0 0 0-3.003 2.996 3 3 0 0 0 3.003 2.996 3 3 0 0 0 3.003-2.996 3 3 0 0 0-3.003-2.996z" fill="#212224" fill-rule="evenodd"></path>
                    </svg>
                </a>
            </div>
        </header>
        <main class="page-main">
            <h1 class="page-main-title">아이디 비밀번호 찾기</h1>
            <section class="main-id-pw-select">
                <div class="main-id-page">아이디</div>
                <div class="main-pw-page">비밀번호</div>
            </section>
            <section>
                <section>
                    <h2 class="main-id-find-title">아이디 찾기</h2>
                    <p class="main-id-find-explain">본인인증 받으신 정보를 입력해 주세요. 휴대폰 번호로 아이디(이메일 주소)를 보내드립니다.</p>
                    <form class="main-id-find-form">
                        <section>
                            <label class="main-id-find-input-text">실명</label>
                            <div class="main-id-find-input-div">
                                <input data-testid="realName" type="text" placeholder="실명을 입력해주세요." class="main-id-find-input" name="memberName" value="" onkeyup="removeAttrBtn()">
                            </div>
                        </section>
                        <section>
                            <label class="main-id-find-input-text">휴대폰 번호</label>
                            <div class="main-id-find-input-div">
                                <input data-testid="mobile" type="text" placeholder="휴대폰 번호를 입력해 주세요." class="main-id-find-input" name="memberPhoneNumber" value="" onkeyup="removeAttrBtn()">
                            </div>
                        </section>
                        <div class="main-id-find-btn-div">
                            <button role="button" color="yellow" disabled="" type="submit" class="main-id-find-btn">
                                <span>아이디(이메일 주소) 받기</span>
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
                    가입하신 이메일 주소를
                    <br>
                    휴대폰으로 보내드렸습니다.
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
<script src="${pageContext.request.contextPath}/js/joinLogin/findIdPw/idFind.js"></script>
</html>