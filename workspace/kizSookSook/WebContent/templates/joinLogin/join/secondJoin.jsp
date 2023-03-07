<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키즈쑥쑥</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/join/secondJoin.css">
</head>
<body>
    <div id="__next">
        <main class="main-box">
            <a href="/" class="main-logo">
                <img src="${pageContext.request.contextPath}/static/resources/img/logo/logo-2.png" style="width: 197px; margin-right: 11px;">
            </a>
            <div class="choice-box">
                <div class="choice-header">
                    <h1 class="choice-title">
                        키즈쑥쑥에서 어떤 서비스를
                        <br>
                        이용하고 싶으세요?
                    </h1>
                    <p class="choice-explain">
                        원하는 회원가입 유형을 선택하세요.
                    </p>
                    <label class="choice-first">
                        <div class="choice-btn-explain">
                            서비스를 이용하고 싶다면
                        </div>
                        <button onclick="location.href='${pageContext.request.contextPath}/joinPage_normal.member'" role="button" color="yellow" class="choice-btn">
                            <span class="button__start-icon-wrapper">
                                <span role="img" color="#e4e5ed" rotate="0" class="choice-btn-check">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="choice-btn-img">
                                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                                        <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                    </svg>
                                </span>
                            </span>
                            <span>일반회원으로 가입</span>
                        </button>
                    </label>
                    <label class="choice-second">
                        <div class="choice-btn-explain">
                            서비스를 제공하고 싶다면
                        </div>
                        <button onclick="location.href='${pageContext.request.contextPath}/joinPage_institution.member'" role="button" color="yellow" class="choice-btn">
                            <span class="button__start-icon-wrapper">
                                <span role="img" color="#e4e5ed" rotate="0" class="choice-btn-check">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="choice-btn-img">
                                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                                        <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                    </svg>
                                </span>
                            </span>
                            <span>기관회원으로 가입</span>
                        </button>
                    </label>
                </div>
            </div>
        </main>
    </div>
</body>
<script>
	
</script>
</html>