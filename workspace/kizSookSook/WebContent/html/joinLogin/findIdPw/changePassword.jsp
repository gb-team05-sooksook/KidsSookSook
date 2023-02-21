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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/joinLogin/findIdPw/changePassword.css">
</head>
<body>
    <div id="__next">
        <section class="css-0 e1m4jvf70">
            <header role="heading" class="page-header">
                <div class="page-header-inner">
                    <a role="link" href="/" class="page-header-link">
                        <svg width="85" height="100%" viewBox="0 0 85 26" xmlns="http://www.w3.org/2000/svg">
                            <path d="M77.69 4.86c3.975 0 7.197 3.215 7.197 7.18l-.002.055h.002c.073 3.477.074 5.769.003 6.874-.108 1.659-.724 3.372-1.947 4.693A7.21 7.21 0 0 1 77.593 26c-2.724 0-4.998-.984-6.653-2.921l-.05-.059 3.226-2.684c.837.997 1.938 1.48 3.478 1.48.9 0 1.67-.358 2.259-.992.515-.556.817-1.263.832-1.813v-.443a7.186 7.186 0 0 1-2.995.65c-3.975 0-7.197-3.214-7.197-7.179 0-3.964 3.222-7.178 7.197-7.178zm-32.13-.225c4.131 0 7.48 3.34 7.48 7.46 0 4.121-3.349 7.462-7.48 7.462s-7.48-3.34-7.48-7.461c0-4.12 3.349-7.461 7.48-7.461zM4.533 0v10.354L8.623 5.2h5.309l-5.337 6.726 5.572 7.065h-4.98L4.534 13.42v5.572H0V0h4.533zM29.92 4.86a6.233 6.233 0 0 1 6.233 6.234v7.897H31.96v-7.908a2.04 2.04 0 0 0-4.074-.152l-.006.152v7.908h-4.193v-7.908a2.04 2.04 0 0 0-4.075-.152l-.005.152v7.908h-4.194v-7.897a6.233 6.233 0 0 1 10.371-4.662 6.201 6.201 0 0 1 4.136-1.571zm31.847 0a6.8 6.8 0 0 1 6.8 6.8v7.331h-4.194v-7.34a2.607 2.607 0 0 0-2.441-2.602l-.165-.006a2.607 2.607 0 0 0-2.602 2.442l-.005.165v7.34l-4.193.001v-7.33a6.8 6.8 0 0 1 6.8-6.8zM45.56 8.818a3.282 3.282 0 0 0-3.287 3.279 3.282 3.282 0 0 0 3.287 3.278 3.282 3.282 0 0 0 3.287-3.278 3.282 3.282 0 0 0-3.287-3.279zm32.13.226a3 3 0 0 0-3.003 2.996 3 3 0 0 0 3.003 2.996 3 3 0 0 0 3.003-2.996 3 3 0 0 0-3.003-2.996z" fill="#212224" fill-rule="evenodd"></path>
                        </svg>
                    </a>
                </div>
            </header>
            <section class="page-main">
                <div class="page-main-div">
                    <h1 class="page-main-title">비밀번호 변경</h1>
                    <form class="page-main-form">
                        <section>
                            <label class="page-main-change-label">변경할 비밀번호</label>
                            <div class="page-main-change-div">
                                <input type="password" placeholder="비밀번호를 입력해 주세요. (8자리 이상)" name="newPassword" class="page-main-change-input" value="" aria-autocomplete="list">
                            </div>
                            <div data-testid="newPassword">
                                <div class="error-div">
                                    <p class="error-text">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
                                </div>
                            </div>
                        </section>
                        <section class="page-main-change-check">
                            <label class="page-main-change-label">한번 더 입력</label>
                            <div class="page-main-change-div">
                                <input type="password" placeholder="비밀번호를 한번 더 입력해 주세요." name="newConfirmPassword" class="page-main-change-input" value="">
                            </div>
                            <div data-testid="newConfirmPassword">
                                <div class="error-div">
                                    <p class="error-text">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
                                </div>
                            </div>
                        </section>
                        <div class="submit-div">
                            <button role="button" color="yellow" type="submit" class="submit-btn">
                                <span>변경하기</span>
                            </button>
                        </div>
                    </form>
                </div>
            </section>
        </section>
    </div>


    <div class="swal2-container swal2-center swal2-backdrop-show" style="overflow-y: auto;">
        <div aria-labelledby="swal2-title" aria-describedby="swal2-content" class="swal2-popup swal2-modal kmong-desktop-sweetalert-popup swal2-icon-success swal2-show" tabindex="-1" role="dialog" aria-live="assertive" aria-modal="true" style="display: flex;">
            <div class="swal2-header">
                <div class="swal2-ok-image"></div>
                <h2 class="swal2-title kmong-desktop-sweetalert-title" id="swal2-title" style="display: flex;">
                    비밀번호 변경이 완료되었습니다.
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
<script>
    const $body = $('body');
    const $modal = $('.swal2-container');
    const $btnModal = $('.submit-btn');

    $btnModal.click((event) => {
        event.preventDefault();
        $body.css('overflow', 'hidden');
        $modal.css('display', 'block');

        $('.swal2-confirm').click(function() {
            $btnModal.unbind('click').click();
        });
    });
</script>
</html>