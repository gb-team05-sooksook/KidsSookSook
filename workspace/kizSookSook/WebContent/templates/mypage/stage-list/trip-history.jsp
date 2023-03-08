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
                <div class="status-item-name">체험 예정</div>
            </div>
            <div class="status-item-count">
                <a href=""></a>
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
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="status-item-name">체험 총 개수</div>
            </div>
            <div class="status-item-count">
                <a href=""></a>
            </div>
        </li>
    </ul>
</section>
<section class="trip-history-container">
    <form action="${pageContext.request.contextPath}/purchaseListAction.mypage" onsubmit="addtripFormEvent()" name="fieldTripForm">
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
                <input type="text" name="categoryName" style="display: none" />
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
            <input id="submitBtn" type="submit" value="조회">
        </div>
    </form>
</section>
<section class="history-result-container">
    <!-- <p id="noResult">주문 기간 내에 구매 내역이 없습니다.</p>
    주문 기간을 변경하여 확인해 보세요.<br />(기본 조회 기간: 1년) -->
    <div class="history-result-list"></div>
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
