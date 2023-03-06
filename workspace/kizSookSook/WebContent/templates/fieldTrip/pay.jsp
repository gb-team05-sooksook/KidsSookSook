<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키즈쑥쑥 | 아이들에게 다양한 경험을 시켜주세요</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fieldTrip/pay.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">
    <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
</head>
<body>
    <div id="orderDiv">
        <!-- head -->
        <!-- 주문단계 -->
        <div class="OrderHeader layout__container">
            <h2 class="OrderHeader__title">결제하기</h2>
        </div>
        <div class="layout__container">
            <!-- main -->
            <div class="OrderMain">
                    <!-- 주문내역 -->
				<section class="OrderGigInfo">
    				<div>
				        <h3 class="OrderGigInfo__title">
				            주문 내역
				        </h3>
    
			            <div class="OrderGigInfo__gig-summary">
			                <div class="OrderGigInfo__thumnail-wrapper">
			                    <img data-type="1-1" width="120px" height="auto" class="border-radius" src="${pageContext.request.contextPath}/upload/${fieldTripDTO.fieldTripSystemName}">
			                </div>
			    
			                <div class="OrderGigInfo__description-wrapper">
			                    <h4 class="OrderGigInfo__gig-title">${fieldTripDTO.fieldTripName}</h4>
			                    <div class="OrderGigInfo__seller-info">
			                        <span class="OrderGigInfo__seller-name">과학수사대 C.S.I는 다양한 증거를 분석 해 사건의 진실을 밝히는 수사를 합니다.</span>
			                    </div>
			                </div>
			            </div>
    				</div>
    				<!-- 주문 옵션 테이블 I-->
                    <table class="OrderGigInfo__option-table OrderGigInfo__option-table--not-additional">
                        <colgroup>
                            <col width="400px">
                            <col width="104px">
                            <col width="104px">
                            <col width="128px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>기본항목</th>
                                <th class="text-center">인원 수</th>
                                <th class="text-center">이용시간</th>
                                <th class="text-right">가격</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="OrderGigInfo__option-table-row" data-type="2-1">
                                <td class="OrderGigInfo__option-table-cell">
                                    <div class="OrderGigInfo__option-table-cell-item OrderGigInfo__option-table-title  first-row">
                                        <div>${fieldTripDTO.fieldTripName} </div>
                                    </div>
                                    <ul class="OrderGigInfo__option-table-options">
                                        <li class="OrderGigInfo__option-table-option-list-item" key="2803">
                                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/ic_check.svg" alt="check-mark" width="13px" style="margin-right: 12px;">
                                            <span> ${fieldTripDTO.categoryName}</span>
                                            <div class="icon-wrapper">
                                            </div>
                                        </li>
                                    </ul>
                                </td>
                                <td class="OrderGigInfo__option-table-cell">
                                    <div class="OrderGigInfo__option-table-cell-item first-row">
                                        <button class="order-btn-brand-gray margin-right-5" onclick="count('minus')">
                                            <span>-</span>
                                        </button>
                                        <span class="OrderGigInfo__option-table-count">1</span>
                                        <button class="order-btn-brand-gray margin-left-5" onclick="count('plus')">
                                            <span>+</span>
                                        </button>
                                    </div>
                                </td>
                                <td class="OrderGigInfo__option-table-cell">
                                    <div class="OrderGigInfo__option-table-cell-item first-row">1 시간</div>
                                </td>
                                <td class="OrderGigInfo__option-table-cell">
                                    <div class="OrderGigInfo__option-table-cell-item OrderGigInfo__option-table-price-item first-row">${fieldTripDTO.fieldTripPrice}원</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
    
                    <table style="display:none;" class="OrderGigInfo__option-table order__option-table" data-type="additional">
                        <colgroup>
                            <col width="400px">
                            <col width="104px">
                            <col width="104px">
                            <col width="128px">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>옵션항목</th>
                            <th class="text-center">수량선택</th>
                            <th class="text-center">작업일</th>
                            <th class="text-right">가격</th>
                        </tr>
                        </thead>
                    </table>
                </section>
                <section class="OrderPaymentAmount">
                    <h2 class="OrderPaymentAmount__title">캐시사용</h2>
                    <div class="OrderPaymentAmount__cash-wrapper">
                        <h3 class="OrderPaymentAmount__cash-label">캐시 사용</h3>
                        <div class="OrderPaymentAmount__cash-input-wrapper">
                            <input id="usedFundsInput" type="number" class="OrderPaymentAmount__cash-input" placeholder="0원" max="0">
                            <button class="OrderPaymentAmount__cash-all-button" onclick="cashAll();">
                                전액사용
                            </button>
                        </div>
                    </div>
                    <p class="OrderPaymentAmount__cash-assets"> 보유 키즈쑥쑥 캐시 : <span>${cashVO.paymentCash + cashVO.reviewCash}</span> 원 </p>
                </section>
                <!-- 결제방법 선택  -->
                <section class="OrderPaymentMethods">
                </section>
            </div>
            <!-- summary -->
            <div class="OrderSummary">
                <div class="OrderSummary__main">
                    <h5 class="OrderSummary__price-wrapper">
                        <span class="OrderSummary__price-label">서비스 금액</span>
                        <span class="OrderSummary__price OrderSummary__price--total">${fieldTripDTO.fieldTripPrice} 원</span>
                    </h5>
                    <h5 class="OrderSummary__price-wrapper">
                        <span class="OrderSummary__price-label">인원수</span>
                        <span class="OrderSummary__price OrderTotalHeadCount">1 명</span>
                    </h5>
                    <h5 class="OrderSummary__price-wrapper">
                        <span class="OrderSummary__pice-label">캐시 사용</span>
                        <span class="OrderSummary__price OrderCash">0 원</span>
                    </h5>
                    <!-- divider -->
                    <div class="OrderSummary__divider"></div>
                    <h5 class="OrderSummary__total-price-wrapper">
                        <span class="OrderSummary__price-label">총 결제금액</span>
                        <span class="OrderSummary__price OrderTotalPrice">${fieldTripDTO.fieldTripPrice}원</span>
                    </h5>
                    <div class="OrderSummary__agreement-wrapper">
                        <div class="OrderSummary__agreement-checkbox-wrapper">
                            <div class="awesome-checkbox">
                                <label>
                                    <input id="taxApplyCheckbox" type="checkbox">
                                    <span class="awesome-checkbox-body"></span>
                                    <div class="OrderSummary__agreement-text">주문 내용을 확인하였으며, 결제에 동의합니다. (필수)</div>
                                </label>
                            </div>
                        </div>
                        <div class="OrderSummary__agreement-warning">결제 동의에 체크해주세요.</div>
                    </div>
                    <div>
                        <button id="payBtn" class="btn btn-brand-yellow NGB btn-block" style="height: 52px;">
                            <span class="OrderSummary__pay-button-text">
                                결제하기
                            </span>
                        </button>
                        <p class="OrderSummary__safe-trade">
                            서비스 제공이 완료된 이후에 전문가에게 결제 대금이 전달됩니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/fieldTrip/pay.js"></script>
</html>