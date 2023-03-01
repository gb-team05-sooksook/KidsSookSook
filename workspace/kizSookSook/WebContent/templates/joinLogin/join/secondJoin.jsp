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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/join/secondJoin.css">
</head>
<body>
    <div id="__next">
        <main class="main-box">
            <a href="/" class="main-logo">
                <svg width="85" height="100%" viewBox="0 0 85 26" xmlns="http://www.w3.org/2000/svg">
                    <path d="M77.69 4.86c3.975 0 7.197 3.215 7.197 7.18l-.002.055h.002c.073 3.477.074 5.769.003 6.874-.108 1.659-.724 3.372-1.947 4.693A7.21 7.21 0 0 1 77.593 26c-2.724 0-4.998-.984-6.653-2.921l-.05-.059 3.226-2.684c.837.997 1.938 1.48 3.478 1.48.9 0 1.67-.358 2.259-.992.515-.556.817-1.263.832-1.813v-.443a7.186 7.186 0 0 1-2.995.65c-3.975 0-7.197-3.214-7.197-7.179 0-3.964 3.222-7.178 7.197-7.178zm-32.13-.225c4.131 0 7.48 3.34 7.48 7.46 0 4.121-3.349 7.462-7.48 7.462s-7.48-3.34-7.48-7.461c0-4.12 3.349-7.461 7.48-7.461zM4.533 0v10.354L8.623 5.2h5.309l-5.337 6.726 5.572 7.065h-4.98L4.534 13.42v5.572H0V0h4.533zM29.92 4.86a6.233 6.233 0 0 1 6.233 6.234v7.897H31.96v-7.908a2.04 2.04 0 0 0-4.074-.152l-.006.152v7.908h-4.193v-7.908a2.04 2.04 0 0 0-4.075-.152l-.005.152v7.908h-4.194v-7.897a6.233 6.233 0 0 1 10.371-4.662 6.201 6.201 0 0 1 4.136-1.571zm31.847 0a6.8 6.8 0 0 1 6.8 6.8v7.331h-4.194v-7.34a2.607 2.607 0 0 0-2.441-2.602l-.165-.006a2.607 2.607 0 0 0-2.602 2.442l-.005.165v7.34l-4.193.001v-7.33a6.8 6.8 0 0 1 6.8-6.8zM45.56 8.818a3.282 3.282 0 0 0-3.287 3.279 3.282 3.282 0 0 0 3.287 3.278 3.282 3.282 0 0 0 3.287-3.278 3.282 3.282 0 0 0-3.287-3.279zm32.13.226a3 3 0 0 0-3.003 2.996 3 3 0 0 0 3.003 2.996 3 3 0 0 0 3.003-2.996 3 3 0 0 0-3.003-2.996z" fill="#212224" fill-rule="evenodd"></path>
                </svg>
            </a>
            <div class="choice-box">
                <div class="choice-header">
                    <h1 class="choice-title">
                        크몽에서 어떤 서비스를
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
                        <button onclick="location.href='${pageContext.request.contextPath}/templates/joinLogin/join/joinPage_normal.member'" role="button" color="yellow" class="choice-btn">
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
                        <button onclick="location.href='${pageContext.request.contextPath}/templates/joinLogin/join/joinPage_institution.member'" role="button" color="yellow" class="choice-btn">
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