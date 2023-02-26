<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>	
<html>
<head>
	<meta charset="UTF-8">
	<title>키즈쑥쑥 | 상세페이지</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fieldTrip/detailePage.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/font/font.css">
	<link rel="icon" href="${pageContext.request.contextPath}/resources/img/logo/icon.png">
</head>
<body>
	<%@ include file="/html/main/header.jsp"%>
    <div>
        <div class="detaile-all">
            <section class="detaile-all-part">
            <!-- 왼쪽 -->
                <main class="detaile-page-left">
                    <!--카테고리 경로-->	 
                    <section class="detaile-left-name">
                        <div class="detaile-left-category">과학IT &gt; C.S.I 과학수사대</div>
                    </section>
                    <!-- 이미지 -->
                    <section class="detaile-left-img">
                        <img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/science/Science1-1.jpg" width="100%">
                    </section>

                    <!-- 목차항목별 -->
                    <nav class="detaile-topics">
                        <div class="detaile-topics-wrapper">
                            <a id="btn-change1" href="#book1" class="detaile-topics-list">상세 내용</a>
                            <a id="btn-change2" href="#book2" class="detaile-topics-list">기관 정보</a>
                            <a id="btn-change3" href="#book3" class="detaile-topics-list">가격 정보</a>
                            <a id="btn-change4" href="#book4" class="detaile-topics-list">취소.환불</a>
                            <a id="btn-change5" href="#book5" class="detaile-topics-list">체험 평가</a>
                        </div>
                    </nav>
                    <!-- 상세내용 -->
            		<section class="detaile-explain">
                        <div id="book1" class="detaile-content">상세 내용</div>
                        <div class="detaile-content-writing">
                            <p style="margin:0px;">
                                "C.S.I 과학수사대"
                                <br>
                                "최첨단 과학 수사로 사건의 진실을 밝혀라!"
                                <br>
                                "과학수사대 C.S.I는 다양한 증거를 분석 해 사건의 진실을 밝히는 수사를 합니다."
                            </p>
                        </div>
                    </section>
                    <!-- 기관정보 -->
                    <section class="detaile-explain">
                        <div id="book2" class="detaile-content">기관 정보</div>
                        <div class="detaile-content-writing">
                            <p style="margin:0px;">
                                "KCSI"
                                <br>
                                "범죄 현장에서 채취된 지문을 DB지문과 매칭하여 지문의 신원을 확인"
                                <br>
                                "대형 사건･사고의 신원 불상자 및 피해자의 신속한 신원 확인"
                            </p>
                        </div>
                    </section>
                    <!-- 가격정보 -->
            		<section class="detaile-price">
                        <div id="book3" class="detaile-content">가격 정보</div>
                        <div class="detaile-price-content">
                            <div class="detaile-price-content-wrapper">
                                <div class="detaile-price-content-wrapper-price">
                                    "11,000원"
                                    <span class="detaile-price-content-wrapper-price-vat">(VAT 포함가)</span>
                                </div>
                                <div class="detaile-price-content-wrapper-content">C.S.I 과학수사대</div>
                                <div class="detaile-price-content-wrapper-content-next">과학 수사대원 체험</div>
                                <div class="detaile-price-content-wrapper-content-wrapper">
                                    <div class="detaile-price-content-wrapper-content-wrapper-list">
                                        <span>과학IT</span>
                                        <span>C.S.I 과학수사대</span>
                                    </div>
                                    <div class="detaile-price-content-wrapper-content-wrapper-list">
                                        <span>이용시간</span>
                                        <span>1 시간</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="detaile-price-button-wrapper">
                            <button class="detaile-price-button">
                                <span>
                                    <span>구매</span>
                                </span>
                            </button>
                        </div>
                    </section>
                    <!-- 취소.환불 -->
            		<section class="detaile-price-refund">
                        <div id="book4" class="detaile-content">취소 및 환불 규정</div>
                        <div class="detaile-price-refund-content">
                            가. 기본 환불 규정
                            1. 작업 진행 전일 경우 전문가와 의뢰인 상호 협의하에 청약 철회 및 환불이 가능합니다.
                            2. 상담 예약 전 혹은 예약된 상담 시간 3시간 전: 환불 신청 시 100% 환불
                            3. 예약된 상담 시간 3시간 이내: 환불 신청 시 50% 환불
                            4. 상담이 완료된 이후에는 환불이 불가합니다.

                            나. 전문가 책임 사유
                            1. 전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 심각하게 잘못 이행한 경우 결제 금액 전체 환불이 가능합니다.

                            다. 의뢰인 책임 사유
                            1. 서비스 진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 사용 금액을 아래와 같이 계산 후 총 금액의 10%를 공제하여 환불합니다.
                            - 총 작업 진행량의 1/3 경과 전 : 이미 납부한 요금의 2/3해당액
                            - 총 작업 진행량의 1/2 경과 전 : 이미 납부한 요금의 1/2해당액
                            - 총 작업 진행량의 1/2 경과 후 : 반환하지 않음
                            2. 상담 진행 중 의뢰인의 폭언, 욕설 등이 있을 경우 상담은 종료되며 잔여 이용요금은 환불되지 않습니다.

                            라. 노하우·전자책 카테고리 환불규정
                            1. 해당카테고리에서 제공되는 서비스는 컨설팅이 아닌, 노하우·전자책 자료 제공 서비스이며 별도 컨설팅은 포함되어있지 않습니다.
                            2. 구매 이후, 크몽 사이트를 통해 자료가 전달됩니다.
                            3. 노하우·전자책은 자료형태이므로, 발송된 이후에는 환불이 불가능합니다.
                        </div>
                    </section>

                    <!-- 체험 평가 -->
                 	<section class="field-evaluation">
                    <div class="field-evaluation-containal">
                        <div id="book5" class="detaile-content">체험 평가</div>
                        <div class="field-evaluation-wrapper">
                            <div class="field-evaluation-star-score-text">113개의 평가</div>
                        </div>
                        <div class="field-evaluation-text">실제 키즈쑥쑥을 통해 구매한 이용자들이 남긴 평가입니다.</div>
                    </div>
                    <!-- 체험후기글 -->
            	    <section>
                        <div class="field-review-latter-containal">
                            <div>체험 후기 113개</div>
                            <div class="field-review-latter-check-containal">
                                <button class="field-review-latter-check1">
                                    <div class="field-review-latter-check1-text">
                                        <span style="margin-right: 4px;">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                <path d="M0 0h24v24H0V0z" fill="none"></path><path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                            </svg>
                                        </span>
                                        최신순
                                    </div>
                                </button>
                                <button class="field-review-latter-check1">
                                    <div class="field-review-latter-check1-text">
                                        <span style="margin-right: 4px;">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                <path d="M0 0h24v24H0V0z" fill="none"></path><path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                            </svg>
                                        </span>
                                        별점 높은 순
                                    </div>
                                </button>
                                <button class="field-review-latter-check1">
                                    <div class="field-review-latter-check1-text">
                                        <span style="margin-right: 4px;">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                <path d="M0 0h24v24H0V0z" fill="none"></path><path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
                                            </svg>
                                        </span>
                                        별점 낮은 순
                                    </div>
                                </button>
                            </div>
                        </div>
                        <!-- 후기내용 -->
                		<div class="review-list">
                            <div class="review-list-containal">
                                <div class="review-list-person">
                                    <div class="review-list-person-profile">
                                        <img src="${pageContext.request.contextPath}/resources/img/fieldTrip/detailePage/techer.png" class="review-list-person-profile-img">
                                    </div>
                                    <div class="review-list-person-profile-next">
                                        <div class="review-list-person-profile-nikename">hds****</div>
                                        <div class="review-list-person-profile-star-containal">
                                            
                                            
                                            
                                            <div class="review-list-person-score-next-date">23.02.22 16:02</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="person-review-containel">
                                <div class="person-review-wrapper">
                                    <p class="person-review-write">
                                        첫 아이의 재능 및 정서 체험을 하기 위해 여러 사이트를 찾던 중 발견한 키즈쑥쑥! 아이가 과학을 좋아해 첫 체험으로 C.S.I체험을 해보았는데 부모인 저도 그렇고 아이도 100% 200% 만족했습니다. 체험구성도 좋고 앞으로도 잘 이용하겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="review-list">
                            <div class="review-list-containal">
                                <div class="review-list-person">
                                    <div class="review-list-person-profile">
                                        <img src="${pageContext.request.contextPath}/resources/img/fieldTrip/detailePage/techer.png" class="review-list-person-profile-img">
                                    </div>
                                    <div class="review-list-person-profile-next">
                                        <div class="review-list-person-profile-nikename">hds****</div>
                                        <div class="review-list-person-profile-star-containal">
                                            <div class="review-list-person-score-next-date">23.02.22 16:02</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="person-review-containel">
                                <div class="person-review-wrapper">
                                    <p class="person-review-write">
                                        한번 더 왔습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <button class="review-more-button">
                            <span>더 보기</span>
                        </button>
                    </section>
                </main>
                <div class="fix">
                <!-- 오른쪽 -->
                    <aside class="right-page">
                        <section class="right-first-section">
                            <button class="right-first-section-heart">
                                <span class="right-first-section-heart-img">
                                    <span class="right-first-section-heart-img-check">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="right-first-section-heart-img-place">
                                            <path xmlns="http://www.w3.org/2000/svg" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z"></path>
                                        </svg>
                                    </span>
                                </span>
                                <span>500</span>
                            </button>
                        </section>
                        <section class="right-second-section">
                            <h1 class="right-second-text">키즈쑥쑥 | C.S.I 과학수사대</h1>
                        </section>
                        <section class="right-third-section">
                            <div class="right-third">
                                <div class="right-third-inside-price">
                                    11,000원
                                    <span class="right-third-inside-price-vat">(VAT 포함가)</span>
                                </div>
                                <div class="right-third-inside-1">최첨단 과학 수사로 사건의 진실을 밝혀라!</div>
                                <div class="right-third-inside-2">과학수사대 C.S.I는 다양한 증거를 분석 해 사건의 진실을 밝히는 수사를 합니다.</div>
                                <div class="right-third-inside-list">
                                    <div class="right-third-inside-list-1">
                                        <span>과학IT</span>
                                        <span>C.S.I 과학수사대</span>
                                    </div>
                                    <div class="right-third-inside-list-1">
                                        <span>이용시간</span>
                                        <span>1 시간</span>
                                    </div>
                                </div>
                            </div>
                            <div class="right-third-inside-button-containel">
                                <button class="right-third-inside-button">
                                    <span>구매하기</span>
                                </button>
                            </div>
                            <div class="right-third-inside-under"></div>
                        </section>
                        <section class="right-fourth-section">
                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/ic_escro.png" class="right-fourth-section-img">
                            <h5 class="right-fourth-section-text">서비스 제공이 완료된 이후에 키즈쑥쑥에게 결제 대금이 전달됩니다.</h5>
                        </section>
                    </aside>
                </div>
            </section>
        </div>
    </div>
    <%@ include file="/html/main/footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/fieldTrip/detailePage.js"></script>
</html>