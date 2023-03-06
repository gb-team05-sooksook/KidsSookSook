<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div>
    <div class="cash-title">크몽 캐시</div>
    <div data-v-8a97d7d8="" class="cash-info-panel-wrapper">
        <div
            data-v-8a97d7d8=""
            class="cash-info-panel"
            style="background-color: rgb(250, 229, 124)"
        >
            <div data-v-8a97d7d8="" class="title">보유중인 크몽 캐시</div>
            <div data-v-8a97d7d8="" class="amount-wrapper">
                <span data-v-8a97d7d8="" class="tahoma">0</span>원
            </div>
        </div>
        <div data-v-8a97d7d8="" class="cash-info-panel">
            <div data-v-8a97d7d8="" class="title">결제 적립 캐시</div>
            <div data-v-8a97d7d8="" class="amount-wrapper">
                <span data-v-8a97d7d8="" class="tahoma">0</span>원
            </div>
        </div>
        <div data-v-8a97d7d8="" class="cash-info-panel">
            <div data-v-8a97d7d8="" class="title">후기 적립 캐시</div>
            <div data-v-8a97d7d8="" class="cash-refunds-wrapper">
                <div
                    data-v-8a97d7d8=""
                    class="amount-wrapper"
                    style="margin-right: 4px"
                >
                    <span data-v-8a97d7d8="" class="tahoma">0</span>원
                </div>
            </div>
        </div>
    </div>
</div>
<div class="filters-wrapper">
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
    <div class="date-selecter-wrapper" style="margin-left: 9px">
        <input type="date" name="date" />
        ~
        <input type="date" name="date" />
    </div>
    <div class="input-container">
        <button type="button" class="datepicker-btn">조회</button>
    </div>
    <div class="grow"></div>
</div>
<div class="">
    <ul class="cash-info-h6">
        <li style="list-style-type: circle">30일 이내 소멸 예정 0원</li>
    </ul>
</div>
<div class="cash-history-list">
    <div class="history-result">
        <div class="h_result-info">
            <h4 class="h_title"><a href="">체험학습 제목 1</a></h4>
            <div class="h_details">
                <span class="h_category">카테고리</span>
                <span class="h_date">2022.01.01</span>
                <span class="h_institution">업체명</span>
            </div>
        </div>
        <div class="h_result-content">
            <div>체험학습 내용의 요약본 한 줄</div>
            <span>금액란10000</span>
        </div>
    </div>
    <div class="history-result">
        <div class="h_result-info">
            <h4 class="h_title"><a href="">체험학습 제목 1</a></h4>
            <div class="h_details">
                <span class="h_category">카테고리</span>
                <span class="h_date">2022.01.01</span>
                <span class="h_institution">업체명</span>
            </div>
        </div>
        <div class="h_result-content">
            <div>체험학습 내용의 요약본 한 줄</div>
            <span>금액란10000</span>
        </div>
    </div>
    <div class="history-result">
        <div class="h_result-info">
            <h4 class="h_title"><a href="">체험학습 제목 1</a></h4>
            <div class="h_details">
                <span class="h_category">카테고리</span>
                <span class="h_date">2022.01.01</span>
                <span class="h_institution">업체명</span>
            </div>
        </div>
        <div class="h_result-content">
            <div>체험학습 내용의 요약본 한 줄</div>
            <span>금액란10000</span>
        </div>
    </div>
</div>
<div class="cash-history-infomation-container">
    <p>
        <i class="margin-right-5 fa fa-exclamation-circle"></i>
        <b>크몽 캐시 안내</b>
    </p>
    <p>크몽 캐시는 충전 캐시와 적립 캐시가 있습니다.</p>
    <div class="cash-history-infomation">
        <p>- 충전 캐시</p>
        <p>
            <span class="">①</span>
            회원이 직접 충전했거나 주문이 취소된 후 예치된 캐시입니다.
        </p>
        <p>
            <span class="">②</span>
            유효기간은 충전일(결제일)로부터 5년이며, 서비스 구매 시 유효기간
            만료일이 가까운 순서대로 사용됩니다.
        </p>
        <p>
            <span class="">③</span>
            충전 캐시는 전액 환불만 가능합니다.
        </p>
    </div>
    <div class="cash-history-infomation">
        <p>- 적립 캐시</p>
        <p>
            <span class="">①</span>
            각종 이벤트 참여 등에 따른 리워드로 적립된 캐시입니다.
        </p>
        <p>
            <span class="">②</span>
            프로모션 성격에 따라 유효기간이 다를 수 있으며, 별도의 화면에
            고지합니다.
        </p>
        <p>
            <span class="">③</span>
            적립 캐시는 서비스 구매 시 유효기간 만료일이 가까운 순서대로
            사용됩니다.
        </p>
        <p>
            <span class="">④</span>
            단, 크몽 캐시 충전 시 지급된 적립 캐시의 경우 충전 캐시가 모두
            소진된 이후 사용됩니다.
        </p>
        <p>
            <span class="">⑤</span>
            적립 캐시는 비현금성으로 환불되지 않습니다.
        </p>
    </div>
</div>
