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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/joinLogin/join/joinPage_institution.css">
</head>
<body>
    <div id="__next">
        <main class="main-box">
            <a href="/" class="main-logo">
                <svg width="85" height="100%" viewBox="0 0 85 26" xmlns="http://www.w3.org/2000/svg">
                    <path d="M77.69 4.86c3.975 0 7.197 3.215 7.197 7.18l-.002.055h.002c.073 3.477.074 5.769.003 6.874-.108 1.659-.724 3.372-1.947 4.693A7.21 7.21 0 0 1 77.593 26c-2.724 0-4.998-.984-6.653-2.921l-.05-.059 3.226-2.684c.837.997 1.938 1.48 3.478 1.48.9 0 1.67-.358 2.259-.992.515-.556.817-1.263.832-1.813v-.443a7.186 7.186 0 0 1-2.995.65c-3.975 0-7.197-3.214-7.197-7.179 0-3.964 3.222-7.178 7.197-7.178zm-32.13-.225c4.131 0 7.48 3.34 7.48 7.46 0 4.121-3.349 7.462-7.48 7.462s-7.48-3.34-7.48-7.461c0-4.12 3.349-7.461 7.48-7.461zM4.533 0v10.354L8.623 5.2h5.309l-5.337 6.726 5.572 7.065h-4.98L4.534 13.42v5.572H0V0h4.533zM29.92 4.86a6.233 6.233 0 0 1 6.233 6.234v7.897H31.96v-7.908a2.04 2.04 0 0 0-4.074-.152l-.006.152v7.908h-4.193v-7.908a2.04 2.04 0 0 0-4.075-.152l-.005.152v7.908h-4.194v-7.897a6.233 6.233 0 0 1 10.371-4.662 6.201 6.201 0 0 1 4.136-1.571zm31.847 0a6.8 6.8 0 0 1 6.8 6.8v7.331h-4.194v-7.34a2.607 2.607 0 0 0-2.441-2.602l-.165-.006a2.607 2.607 0 0 0-2.602 2.442l-.005.165v7.34l-4.193.001v-7.33a6.8 6.8 0 0 1 6.8-6.8zM45.56 8.818a3.282 3.282 0 0 0-3.287 3.279 3.282 3.282 0 0 0 3.287 3.278 3.282 3.282 0 0 0 3.287-3.278 3.282 3.282 0 0 0-3.287-3.279zm32.13.226a3 3 0 0 0-3.003 2.996 3 3 0 0 0 3.003 2.996 3 3 0 0 0 3.003-2.996 3 3 0 0 0-3.003-2.996z" fill="#212224" fill-rule="evenodd"></path>
                </svg>
            </a>
            <div class="main-join-box">
                <form novalidate="" class="join-form" id="joinForm">
                    <h1 class="join-title">딱 이것만 체크하면 가입완료!</h1>
                    <div class="join-item-div">
                        <div class="join-item-title">아이디</div>
                        <div class="join-item-input-div">
                            <input type="text" required placeholder="아이디를 입력해 주세요." name="memberIdentification" autocomplete="email" class="join-item-input" value="">
                        </div>
                        <div data-testid="email-error">
                            <div class="error-div">
                                <p class="error-text" style="display: none;">아이디를 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item">
                        <div class="join-item-title">비밀번호</div>
                        <div class="join-item-input-div">
                            <input type="password" required placeholder="비밀번호를 입력해 주세요. (8자리 이상)" name="password" autocomplete="current-password" class="join-item-input" value=""></div>
                            <div data-testid="password-error">
                                <div class="error-div">
                                    <p class="error-text" style="display: none;">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
                                </div>
                            </div>
                        <div class="join-item-div">
                            <div class="join-item-input-div">
                                <input type="password" required placeholder="비밀번호를 한번 더 입력해 주세요." name="passwordConfirm" autocomplete="current-password" class="join-item-input" value="">
                            </div>
                            <div data-testid="password-confirm-error">
                                <div class="error-div">
                                    <p class="error-text" style="display: none;">8자 이상, 영문 대 소문자, 숫자, 특수문자를 사용하세요.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">이메일</div>
                        <div class="join-item-input-div">
                            <input type="email" required placeholder="이메일을 입력해 주세요." name="email" autocomplete="email" class="join-item-input" value="">
                        </div>
                        <div data-testid="email-error">
                            <div class="error-div">
                                <p class="error-text" style="display: none;">이메일을 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">휴대폰번호</div>
                        <div class="join-item-input-div">
                            <input type="phoneNumber" required placeholder="휴대폰번호를 입력해 주세요.(-미포함)" name="memberPhoneNumber" autocomplete="phoneNumber" class="join-item-input" value="">
                        </div>
                        <div data-testid="email-error">
                            <div class="error-div">
                                <p class="error-text" style="display: none;">휴대폰번호를 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">주소</div>
                        <div class="join-item-input-div-address">
                            <input type="email" required placeholder="주소를 찾아주세요." name="memberAddress" id="memberAddress" autocomplete="address" class="join-item-input" value="" readonly>
                        </div>
                        <div class="join-item-find-address">
                            <button type="button" class="join-item-find-address-btn" onclick="sample6_execDaumPostcode()">주소찾기</button>
                        </div>
                        <div class="join-item-input-div">
                            <input type="email" required placeholder="상세주소를 입력해주세요." name="memberAddressDetail" id="memberAddressDetail" autocomplete="address" class="join-item-input" value="">
                        </div>
                        <div data-testid="email-error">
                            <div class="error-div">
                                <p class="error-text" style="display: none;">주소를 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="join-item-div">
                        <div class="join-item-title">사업자등록번호</div>
                        <div class="join-item-input-div">
                            <input type="phoneNumber" required placeholder="사업자등록번호를 입력해 주세요." name="memberPhoneNumber" autocomplete="phoneNumber" class="join-item-input" value="">
                        </div>
                        <div data-testid="email-error">
                            <div class="error-div">
                                <p class="error-text" style="display: none;">사업자등록번호를 입력해 주세요.</p>
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
                                    <input type="checkbox" style="display: none;" id="firstCheck">
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
                                    <input type="checkbox" style="display: none;" id="secondCheck">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                                </div>
                                <a target="_blank" href="https://support.kmong.com/hc/ko/articles/900005915466" class="css-1ebg73i e13foyyg0">서비스 이용약관</a>
                                에 동의합니다.
                                <span class="join-item-agreements-required">(필수)</span>
                            </div>
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" id="thirdCheck">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                                </div>
                                <a target="_blank" href="https://support.kmong.com/hc/ko/articles/9386067530009" class="css-1ebg73i e13foyyg0">개인정보 수집/이용</a>
                                에 동의합니다.
                                <span class="join-item-agreements-required">(필수)</span>
                            </div>
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" id="forthCheck">
                                    <span role="img" color="#ffffff" rotate="0" class="join-item-agreements-check-span">
                                        <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="join-item-agreements-check-svg">
                                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                                            <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                        </svg>
                                    </span>
                                </div>
                                <a target="_blank" href="https://support.kmong.com/hc/ko/articles/9386269489433 " class="css-1ebg73i e13foyyg0">개인정보 제3자 제공</a>
                                에 동의합니다.
                                <span class="join-item-agreements-required">(필수)</span>
                            </div>
                            <div class="join-item-agreements-one">
                                <div class="join-item-agreements-check-img">
                                    <input type="checkbox" style="display: none;" id="fifthCheck">
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
                                    <input type="checkbox" style="display: none;" id="sixthCheck">
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
                크몽은 회원님의 원활한 서비스 이용에 필요한 정보를
                <br>
                적절한 전자적 수단을 통해 제공하고 있습니다.
            </p>
        </main>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/js/joinLogin/join/joinPage.js"></script>
</html>