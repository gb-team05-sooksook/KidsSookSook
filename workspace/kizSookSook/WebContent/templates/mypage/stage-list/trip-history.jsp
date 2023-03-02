<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2 class="stage-title">구매 관리</h2>
<section class="trip-status">
    <ul class="status-list">
        <li class="status-list-item">
            <div class="status-item-wrapper">
                <svg
                    width="36"
                    height="36"
                    viewBox="0 0 36 36"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                >
                    <rect width="36" height="36" rx="12" fill="#EBF4FF"></rect>
                    <rect
                        x="18.375"
                        y="13.2422"
                        width="6"
                        height="6"
                        rx="1"
                        transform="rotate(-45 18.375 13.2422)"
                        fill="#116AD4"
                    ></rect>
                    <rect
                        x="9.75"
                        y="19.7197"
                        width="6.75"
                        height="6.75"
                        rx="3.375"
                        fill="#116AD4"
                    ></rect>
                    <rect
                        x="19.5"
                        y="19.7197"
                        width="6.75"
                        height="6.75"
                        rx="1"
                        fill="#116AD4"
                    ></rect>
                    <rect
                        x="9.75"
                        y="9.96973"
                        width="6.75"
                        height="6.75"
                        rx="1"
                        fill="#116AD4"
                    ></rect>
                </svg>
                <div class="status-item-name">체험 예정</div>
            </div>
            <div class="status-item-count">
                <a href="">0</a>
            </div>
        </li>
        <li class="status-list-item">
            <div class="status-item-wrapper">
                <svg
                    width="36"
                    height="36"
                    viewBox="0 0 36 36"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                >
                    <rect width="36" height="36" rx="12" fill="#EDFEE0"></rect>
                    <path
                        d="M9.75 12.75H24.25C25.3546 12.75 26.25 13.6454 26.25 14.75V24.25C26.25 25.3546 25.3546 26.25 24.25 26.25H11.75C10.6454 26.25 9.75 25.3546 9.75 24.25V12.75Z"
                        fill="#11CA2D"
                    ></path>
                    <path
                        d="M9.75 12.5C9.75 11.3954 10.6454 10.5 11.75 10.5H16.125L18 12.75H9.75V12.5Z"
                        fill="#11CA2D"
                    ></path>
                </svg>
                <div class="status-item-name">체험 완료</div>
            </div>
            <div class="status-item-count">
                <a href="">0</a>
            </div>
        </li>
        <li class="status-list-item">
            <div class="status-item-wrapper">
                <div class="problem-icon-wrapper">
                    <div class="problem-icon">
                        <div>
                            <div>
                                <span>
                                    <svg
                                        width="20"
                                        height="20"
                                        viewBox="0 0 24 24"
                                        fill="currentColor"
                                        aria-hidden="true"
                                        focusable="false"
                                        preserveAspectRatio="xMidYMid meet"
                                        class="css-7kp13n e181xm9y0"
                                    >
                                        <g
                                            xmlns="http://www.w3.org/2000/svg"
                                            fill-rule="nonzero"
                                        >
                                            <path
                                                d="M12.5085,16.2335 C13.2055,16.2335 13.7665,16.7945 13.7665,17.4915 C13.7665,18.1885 13.2055,18.7665 12.5085,18.7665 C11.8115,18.7665 11.2335,18.1885 11.2335,17.4915 C11.2335,16.7945 11.8115,16.2335 12.5085,16.2335 Z M12.5,5.5 C13.2615898,5.5 14,6 13.9916659,7.16150442 L13.5106618,13.2256637 C13.4505363,13.6438053 13.0697413,14 12.5085699,14 C11.9473985,14 11.5666035,13.6438053 11.506478,13.2256637 L11.0054321,7.16150442 C11,6 11.7384102,5.5 12.5,5.5 Z"
                                            ></path>
                                        </g>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="status-item-name">취소·환불</div>
            </div>
            <div class="status-item-count">
                <a href="">0</a>
            </div>
        </li>
    </ul>
</section>
<section class="trip-history-container">
    <form action="" name="fieldTripForm">
        <div class="form-selecter">
            <div class="selecter" id="theme-selecter">
                <div class="theme-names">
                    <div id="themeName">전체 카테고리</div>
                </div>
                <div class="selecter-arrow-wrapper">
                    <div class="selecter-arrow">
                        <svg
                            height="20"
                            width="20"
                            viewBox="0 0 20 20"
                            aria-hidden="true"
                            focusable="false"
                            class="css-8mmkcg"
                        >
                            <path
                                d="M4.516 7.548c0.436-0.446 1.043-0.481 1.576 0l3.908 3.747 3.908-3.747c0.533-0.481 1.141-0.446 1.574 0 0.436 0.445 0.408 1.197 0 1.615-0.406 0.418-4.695 4.502-4.695 4.502-0.217 0.223-0.502 0.335-0.787 0.335s-0.57-0.112-0.789-0.335c0 0-4.287-4.084-4.695-4.502s-0.436-1.17 0-1.615z"
                            ></path>
                        </svg>
                    </div>
                </div>
            </div>
            <div class="selecter-options" style="display: none">
                <div class="theme-names">
                    <div class="theme-name">전체 카테고리</div>
                    <div class="theme-name">카테고리2</div>
                    <div class="theme-name">카테고리3</div>
                    <div class="theme-name">카테고리4</div>
                    <div class="theme-name">카테고리5</div>
                    <div class="theme-name">카테고리6</div>
                </div>
                <!-- 카테고리 검색 인풋 -->
                <input type="text" name="theme" style="display: none" />
            </div>
        </div>
        <div class="date-selecter-wrapper">
            <input type="date" name="date" id="picker" />
            ~
            <input type="date" name="date" id="dateSelect2" />
        </div>
        <div class="form-text-input">
            <input type="text" name="fieldTripName" placeholder="검색어 입력" />
        </div>
        <div class="form-btn">
            <button id="submitBtn">
                <span>조회</span>
            </button>
        </div>
    </form>
</section>
<section class="history-result-container">
    <!-- <p id="noResult">주문 기간 내에 구매 내역이 없습니다.</p>
    주문 기간을 변경하여 확인해 보세요.<br />(기본 조회 기간: 1년) -->
    <div class="history-result-list">
	    <div class="history-result">
            <div class="h_result-info">
                <h4 class="h_title"><a href=""><!--체험학습 제목 1-->${param.categoryName}</a></h4>
                <div class="h_details">
                    <span class="h_category">카테고리</span>
                    <span class="h_date">2022.01.01</span>
                    <span class="h_institution">업체명</span>
                </div>
            </div>
            <div class="h_result-content">
                <div>체험학습 내용의 요약본 한 줄</div>
                <a
                    href="javascript:functionsObj.modal.activateReviewModalService.excute()"
                    >리뷰 쓰기</a
                >
            </div>
        </div>
    </div>
</section>
<section class="history-warnings">
    <h2>꼭 확인해 주세요!</h2>
    <ul>
        <li>· 세금계산서는 거래 주체인 전문가가 의뢰인에게 발행합니다.</li>
        <li>
            · 세금계산서는 사업자 인증 받은 기업전문가에게 요청하실 수 있습니다.
        </li>
        <li>
            · 이벤트 쿠폰 사용 금액은 할인된 금액이기 때문에 세금계산서에
            포함되지 않습니다.
        </li>
        <li>
            · 거래명세서는 결제가 완료되었음을 증명하는 용도로만 활용 가능하며
            세무상의 지출증빙 효력이 없습니다.
        </li>
        <li>
            · 현금영수증은 개인의 소득공제용으로만 사용 가능하며, 결제 당시 지출
            증빙용으로 선택하셨더라도 매입세액공제를 받으실 수 없습니다.
        </li>
        <li>
            · 자세한 내용은&nbsp;<a
                href="https://support.kmong.com/hc/ko/sections/360004179071"
                target="_blank"
                class="css-tu06s5 e1oix9pn4"
                >[자주 묻는 질문 - 구매 및 영수증]</a
            >
            <!-- -->항목을 참고해 주세요.
        </li>
    </ul>
</section>
