<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>	
<html>
<head>
	<meta charset="UTF-8">
	<title>키즈쑥쑥 | 상세페이지</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fieldTrip/detailPage.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">
	<link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
</head>
<body>
	<%@ include file="/templates/main/header.jsp"%>
    <div>
        <div class="detaile-all">
            <section class="detaile-all-part">
            <!-- 왼쪽 -->
                <main class="detaile-page-left">
                    <!--카테고리 경로-->	 
                    <section class="detaile-left-name">
                        <div class="detaile-left-category">${fieldTripDTO.categoryName} &gt; ${fieldTripDTO.fieldTripName}</div>
                    </section>
                    <!-- 이미지 -->
                    <section class="detaile-left-img">
                        <img src="${pageContext.request.contextPath}/upload/${fieldTripDTO.fieldTripSystemName}" width="100%">
                    </section>

                    <!-- 목차항목별 -->
                    <nav class="detaile-topics">
                        <div class="detaile-topics-wrapper">
                            <a id="btn-change1" href="#book1" class="detaile-topics-list">상세 내용</a>
                            <a id="btn-change2" href="#book2" class="detaile-topics-list">기관 정보</a>
                            <a id="btn-change3" href="#book3" class="detaile-topics-list">가격 정보</a>
                            <a id="btn-change4" href="#book4" class="detaile-topics-list">취소.환불</a>
                            <a id="btn-change5" href="#book5" class="detaile-topics-list1">체험 평가</a>
                        </div>
                    </nav>
                    <!-- 상세내용 -->
            		<section class="detaile-explain">
                        <div id="book1" class="detaile-content">상세 내용</div>
                        <div class="detaile-content-writing">
                            <p style="margin:0px;">
                            	${fieldTripDetailVO.fieldTripDetailContext}
                            </p>
                        </div>
                    </section>
                    <!-- 기관정보 -->
                    <section class="detaile-explain">
                        <div id="book2" class="detaile-content">기관 정보</div>
                        <div class="detaile-content-writing">
                            <p style="margin:0px;">
                            	${fieldTripDetailVO.fieldTripDetailInstitutionInfo}
                            </p>
                        </div>
                    </section>
                    <!-- 가격정보 -->
            		<section class="detaile-price">
                        <div id="book3" class="detaile-content">가격 정보</div>
                        <div class="detaile-price-content">
                            <div class="detaile-price-content-wrapper">
                                <div class="detaile-price-content-wrapper-price">
                                    "${fieldTripDTO.fieldTripPrice}원"
                                    <span class="detaile-price-content-wrapper-price-vat">(VAT 포함가)</span>
                                </div>
                                <div class="detaile-price-content-wrapper-content">${fieldTripDTO.fieldTripName}</div>
                                <div class="detaile-price-content-wrapper-content-next">과학 수사대원 체험</div>
                                <div class="detaile-price-content-wrapper-content-wrapper">
                                    <div class="detaile-price-content-wrapper-content-wrapper-list">
                                        <span>${fieldTripDTO.categoryName}</span>
                                        <span>${fieldTripDTO.fieldTripName}</span>
                                    </div>
                                    <div class="detaile-price-content-wrapper-content-wrapper-list">
                                        <span>장소</span>
                                        <span>${fieldTripDTO.fieldTripPlace}</span>
                                    </div>
                                    <div class="detaile-price-content-wrapper-content-wrapper-list">
                                        <span>체험일자</span>
                                        <span>${fieldTripDTO.fieldTripProgramDate}</span>
                                    </div>
                                    <div class="detaile-price-content-wrapper-content-wrapper-list">
                                        <span>신청 마감일</span>
                                        <span>${fieldTripDTO.fieldTripDeadlineDate}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="detaile-price-button-wrapper">
                            <button class="detaile-price-button" onclick="javascript:location.href='${pageContext.request.contextPath}/payAction.pay?fieldTripId=${fieldTripDTO.fieldTripId}'">
                                <span>
                                    <span>구매</span>
                                </span>
                            </button>
                        </div>
                    </section>
                    <!-- 취소.환불 -->
            		<section class="detaile-price-refund">
                        <div id="book4" class="detaile-content">취소 및 환불 규정</div>
                        <div class="detaile-price-refund-content">${fieldTripDetailVO.fieldTripDetailRefundPolicy}</div>
                    </section>

                    <!-- 체험 평가 -->
                 	<section class="field-evaluation">
                    <div class="field-evaluation-containal">
                        <div id="book5" class="detaile-content">체험 평가</div>
                        <div class="field-evaluation-wrapper">
                            <div class="field-evaluation-star-score-text">${countReview}개의 평가</div>
                        </div>
                        <div class="field-evaluation-text">실제 키즈쑥쑥을 통해 구매한 이용자들이 남긴 평가입니다.</div>
                    </div>
                    <!-- 체험후기글 -->
            	    <section>
                        <div class="field-review-latter-containal">
                            <div>체험 후기 ${countReview}개</div>
                        </div>
                        <!-- 후기내용 -->
                        <div class="review-div"></div>
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
                                <span>${fieldTripDTO.recommendCount}</span>
                            </button>
                        </section>
                        <section class="right-second-section">
                            <h1 class="right-second-text">키즈쑥쑥 | ${fieldTripDTO.fieldTripName}</h1>
                        </section>
                        <section class="right-third-section">
                            <div class="right-third">
                                <div class="right-third-inside-price">
                                    ${fieldTripDTO.fieldTripPrice}원
                                    <span class="right-third-inside-price-vat">(VAT 포함가)</span>
                                </div>
                                <div class="right-third-inside-1">${fieldTripDTO.fieldTripContextDescription}</div>
                                <!-- <div class="right-third-inside-2">과학수사대 C.S.I는 다양한 증거를 분석 해 사건의 진실을 밝히는 수사를 합니다.</div> -->
                                <div class="right-third-inside-list">
                                    <div class="right-third-inside-list-1">
                                        <span>${fieldTripDTO.categoryName}</span>
                                        <span>${fieldTripDTO.fieldTripName}</span>
                                    </div>
                                    <div class="right-third-inside-list-1">
                                        <span>장소</span>
                                        <span>${fieldTripDTO.fieldTripPlace}</span>
                                    </div>
                                    <div class="right-third-inside-list-1">
                                        <span>체험일자</span>
                                        <span>${fieldTripDTO.fieldTripProgramDate}</span>
                                    </div>
                                    <div class="right-third-inside-list-1">
                                        <span>신청 마감일</span>
                                        <span>${fieldTripDTO.fieldTripDeadlineDate}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="right-third-inside-button-containel">
                                <button class="right-third-inside-button" onclick="javascript:location.href='${pageContext.request.contextPath}/payAction.pay?fieldTripId=${fieldTripDTO.fieldTripId}'">
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
    <%@ include file="/templates/main/footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
	let fieldTripId = "${fieldTripDTO.fieldTripId}";
</script>
<script src="${pageContext.request.contextPath}/static/js/fieldTrip/detailPage.js"></script>
</html>