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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/findIdPw/changePassword.css">
</head>
<body>
    <div id="__next">
        <section class="css-0 e1m4jvf70">
            <header role="heading" class="page-header">
                <div class="page-header-inner">
                    <a role="link" href="/" class="page-header-link">
                         <img src="${pageContext.request.contextPath}/static/resources/img/logo/logo-2.png" style="width: 130px;">
                    </a>
                </div>
            </header>
            <section class="page-main">
                <div class="page-main-div">
                    <h1 class="page-main-title">비밀번호 변경</h1>
                    <form class="page-main-form" action="${pageContext.request.contextPath}/changePwAction.member">
                        <section>
                            <label class="page-main-change-label">변경할 비밀번호</label>
                            <div class="page-main-change-div">
                                <input type="password" placeholder="비밀번호를 입력해 주세요. (8자리 이상)" name="newPassword" class="page-main-change-input" value="" aria-autocomplete="list">
                            	<input type="password" value = "${param.userEmail}" name = "userEmail" style="display:none;">   
                            </div>
                            <div data-testid="newPassword">
                                <div class="error-div">
                                    <p class="error-text" style="display: none;">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
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
                                    <p class="error-text" style="display: none;">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
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
<script src="${pageContext.request.contextPath}/static/js/joinLogin/findIdPw/changePassword.js"></script>
</html>