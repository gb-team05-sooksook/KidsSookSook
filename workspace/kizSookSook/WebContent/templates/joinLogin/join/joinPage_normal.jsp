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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/joinLogin/join/joinPage_normal.css">
</head>
<body>
    <div id="__next">
        <main class="main-box">
            <a href="/" class="main-logo">
               <img src="${pageContext.request.contextPath}/static/resources/img/logo/logo-2.png" style="width:180px;">
            </a>
            <div class="main-join-box">
                <form novalidate="" class="join-form" id="joinForm" action="${pageContext.request.contextPath}/joinPage_normalAction.member">
                    <h1 class="join-title">딱 이것만 체크하면 가입완료!</h1>
                    <div class="join-item-div">
                        <div class="join-item-title">아이디</div>
                        <div class="join-item-input-div">
                            <input type="text" required placeholder="아이디를 입력해 주세요." name="userIdentification" class="join-item-input test" value="">
                        </div>
                        <div >
                            <div class="error-div">
                                <p class="error-text error-id checkText" style="display: none;">아이디를 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item">
                        <div class="join-item-title">비밀번호</div>
                        <div class="join-item-input-div">
                            <input type="password" required placeholder="비밀번호를 입력해 주세요. (8자리 이상)" name="userPassword" autocomplete="current-password" class="join-item-input" value=""></div>
                            <div>
                                <div class="error-div">
                                    <p class="error-text" style="display: none;">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
                                </div>
                            </div>
                        <div class="join-item-div">
                            <div class="join-item-input-div">
                                <input type="password" required placeholder="비밀번호를 한번 더 입력해 주세요." name="passwordConfirm" autocomplete="current-password" class="join-item-input" value="">
                            </div>
                            <div>
                                <div class="error-div">
                                    <p class="error-text" style="display: none;">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">이름</div>
                        <div class="join-item-input-div">
                            <input type="text" required placeholder="이름을 입력해 주세요." name="memberName" autocomplete="memberName" class="join-item-input" value="">
                        </div>
                        <div >
                            <div class="error-div">
                                <p class="error-text" style="display: none;">이름을 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">닉네임</div>
                        <div class="join-item-input-div">
                            <input type="text" required placeholder="닉네임을 입력해 주세요." name="memberNickname" autocomplete="nickName" class="join-item-input test" value="">
                        </div>
                        <div >
                            <div class="error-div">
                                <p class="error-text checkText" style="display: none;">닉네임을 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">이메일</div>
                        <div class="join-item-input-div">
                            <input type="email" required placeholder="이메일을 입력해 주세요." name="userEmail" autocomplete="email" class="join-item-input test" value="">
                        </div>
                        <div >
                            <div class="error-div">
                                <p class="error-text checkText" style="display: none;">이메일을 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">휴대폰번호</div>
                        <div class="join-item-input-div">
                            <input type="text" required placeholder="휴대폰번호를 입력해 주세요.(-미포함)" name="userPhoneNumber" autocomplete="phoneNumber" class="join-item-input" value="">
                        </div>
                        <div >
                            <div class="error-div">
                                <p class="error-text" style="display: none;">휴대폰번호를 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">주소</div>
                        <div class="join-item-input-div-address">
                            <input type="email" required placeholder="주소를 찾아주세요." name="userAddress" id="memberAddress" autocomplete="address" class="join-item-input" value="" readonly>
                        </div>
                        <div class="join-item-find-address">
                            <button type="button" class="join-item-find-address-btn" onclick="sample6_execDaumPostcode()">주소찾기</button>
                        </div>
                        <div class="join-item-input-div">
                            <input type="email" required placeholder="상세주소를 입력해주세요." name="memberAddressDetail" id="memberAddressDetail" autocomplete="address" class="join-item-input" value="">
                        </div>
                        <div>
                            <div class="error-div">
                                <p class="error-text" style="display: none;">주소를 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">성별</div>
                        <div class="join-item-select-container">
                            <span class="join-item-select-span"></span>
                            <div class="join-item-select-control">
                                <div class="join-item-select-div-inner">
                                    <div class="join-item-select-placeholder">성별을 선택해 주세요.</div>
                                </div>
                                <div class="join-item-select-dropdown-div">
                                    <span class="join-item-select-dropdown-span"></span>
                                    <div class="join-item-select-dropdown-img" aria-hidden="true">
                                        <svg height="20" width="20" viewBox="0 0 20 20" aria-hidden="true" focusable="false" class="css-8mmkcg">
                                            <path d="M4.516 7.548c0.436-0.446 1.043-0.481 1.576 0l3.908 3.747 3.908-3.747c0.533-0.481 1.141-0.446 1.574 0 0.436 0.445 0.408 1.197 0 1.615-0.406 0.418-4.695 4.502-4.695 4.502-0.217 0.223-0.502 0.335-0.787 0.335s-0.57-0.112-0.789-0.335c0 0-4.287-4.084-4.695-4.502s-0.436-1.17 0-1.615z"></path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                            <div id="drop-content" style="display: none;">
                                <p onclick="selectGender(this)">남</p>
                                <p onclick="selectGender(this)">여</p>
                            </div>
                            <input name="memberGender" type="hidden" value="" id="memberGender" class="join-item-input">
                        </div>
                        <div data-testid="job-type-error">
                            <div class="error-div">
                                <p class="error-text" style="display: none;">최소 한가지를 선택해 주세요</p>
                            </div>
                        </div>
                    </div>
                    <div name="agreements" class="join-item-agreements-div">
                        <div class="join-item-agreements-all-div">
                            <div class="join-item-agreements-check-all-img">
                                <input type="checkbox" style="display: none;" id="allCheck">
                                <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                                        <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                    </svg>
                                </span>
                            </div>
                            모두 동의합니다.
                        </div>
                        <div class="join-item-agreements-one-div">
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" class="checkbox">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                                </div>
                                만 14세 이상입니다.
                                <span class="join-item-agreements-required">(필수)</span>
                            </div>
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" class="checkbox">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                                </div>
                                <a target="_blank" href="" class="agree">서비스 이용약관</a>
                                에 동의합니다.
                                <span class="join-item-agreements-required">(필수)</span>
                            </div>
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" class="checkbox">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                                </div>
                                <a target="_blank" href="" class="agree">개인정보 수집/이용</a>
                                에 동의합니다.
                                <span class="join-item-agreements-required">(필수)</span>
                            </div>
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" class="checkbox">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                                </div>
                                <a target="_blank" href="" class="agree">개인정보 제3자 제공</a>
                                에 동의합니다.
                                <span class="join-item-agreements-required">(필수)</span>
                            </div>
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" class="checkbox">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                            </div>
                            이벤트 할인 혜택 알림 수신에 동의합니다. (선택)
                        </div>
                        <div class="join-item-agreements-one">
                            <div class="join-item-agreements-check-img">
                                <input type="checkbox" style="display: none;" class="checkbox">
                                <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                    <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                                        <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                    </svg>
                                </span>
                            </div>
                            장기 미접속 시 계정 활성 상태 유지합니다. (선택)
                        </div>
                    </div>
                </div>
                <button role="button" color="yellow" disabled="" type="submit" class="join-submit-btn">
                    <span>버튼만 누르면 가입완료!</span>
                </button>
            </form>
        </div>
        <p class="join-last-notice">
            키즈쑥쑥은 회원님의 원활한 서비스 이용에 필요한 정보를
            <br>
            적절한 전자적 수단을 통해 제공하고 있습니다.
        </p>
        </main>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/static/js/joinLogin/join/joinPage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/joinLogin/join/joinPage_normal.js"></script>
</html>