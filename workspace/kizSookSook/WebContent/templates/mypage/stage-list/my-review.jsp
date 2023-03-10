<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2 class="stage-title">나의 후기</h2>
<div class="filters-wrapper" style="padding-top: 0">
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
	<div class="history-result-list">
    <!-- <div>
        <div class="_no-content">
            <img
                src="https://kmong.com/img/seller/nothing.png"
                title="내역없음"
                class="width-50px"
            />
            <h5>내역이 없습니다.</h5>
        </div>
    </div> -->
    </div>
</div>
<div class="my-review-info-conainer">
    <div class="panel-body">
        <h5 class="panel-warning">
            <i aria-hidden="true"></i>
            <b>꼭 확인해주세요!</b>
        </h5>
        <ul
            class="font-color-light margin-top-5 margin-top-5 margin-bottom-0 font-size-h6 padding-left-20"
        >
            <li>세금계산서는 거래 주체인 전문가가 의뢰인에게 발행합니다.</li>
            <li>
                세금계산서는 사업자 인증 받은 기업전문가에게 요청하실 수
                있습니다.
            </li>
            <li>
                이벤트 쿠폰 사용 금액은 할인된 금액이기 때문에 세금계산서에
                포함되지 않습니다.
            </li>
            <li>
                거래명세서는 결제가 완료되었음을 증명하는 용도로만 활용 가능하며
                세무상의 지출증빙 효력이 없습니다.
            </li>
            <li>
                현금영수증은 개인의 소득공제용으로만 사용 가능하며, 결제 당시
                지출 증빙용으로 선택하셨더라도 매입세액공제를 받으실 수
                없습니다.
            </li>
        </ul>
    </div>
</div>
