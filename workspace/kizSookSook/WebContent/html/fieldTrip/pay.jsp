<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키즈쑥쑥 | 아이들에게 다양한 경험을 시켜주세요</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fieldTrip/pay.css">
</head>
<body>
    <div id="orderDiv" style="">
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
                                    <img data-type="1-1" width="120px" height="auto" class="border-radius" src="${pageContext.request.contextPath}/resources/img/fieldTrip/pay/Science1-1.jpg">
                                </div>
    
                <div class="OrderGigInfo__description-wrapper">
                    <h4 class="OrderGigInfo__gig-title" style="strong">최첨단 과학 수사로 사건의 진실을 밝혀라!</h4>
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
            <th class="text-center">수량선택</th>
            <th class="text-center">이용시간</th>
            <th class="text-right">가격</th>
        </tr>
        </thead>
        <tbody>
                <tr class="OrderGigInfo__option-table-row" data-type="2-1">
                <td class="OrderGigInfo__option-table-cell">
                    <div class="OrderGigInfo__option-table-cell-item OrderGigInfo__option-table-title  first-row">
                        <div>C.S.I 과학수사대 </div>
                        
                    </div>
                    <ul class="OrderGigInfo__option-table-options">
                        <li class="OrderGigInfo__option-table-option-list-item" key="2803">
                            <img src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/ic_check.svg" alt="check-mark" width="13px" style="margin-right: 12px;">
                            <div>
                                
                                
                            </div>
                                 <span> 과학IT</span>
                                    
                                    <div class="icon-wrapper">
                                         <img width="24px" aria-hidden="true" data-toggle="tooltip" data-placement="right" src="https://d2v80xjmx68n4w.cloudfront.net/assets/order/info.png" alt="info-mark" data-title="해당 패키지의 최대 포함 페이지 수입니다." data-original-title="" title="">
                                    </div>
                        </li>
                    </ul>
                </td>
                <td class="OrderGigInfo__option-table-cell">
                    <div class="OrderGigInfo__option-table-cell-item first-row">
                        <button class="order-btn-brand-gray margin-right-5">
                            <span>-</span>
                        </button>
                        <span class="OrderGigInfo__option-table-count">1</span>
                        <button class="order-btn-brand-gray margin-left-5">
                            <span>+</span>
                        </button>
                    </div>
                </td>
                <td class="OrderGigInfo__option-table-cell">
                    <div class="OrderGigInfo__option-table-cell-item first-row">                    1 시간                </div>
                </td>
                <td class="OrderGigInfo__option-table-cell">
                    <div class="OrderGigInfo__option-table-cell-item OrderGigInfo__option-table-price-item first-row">                    9,000원                </div>
                </td>
            </tr>
            
        
        <!--
            주문제작  or 메시지로 결제 승인 했을 시
         -->
        
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
        <tbody>
        
        </tbody>
    </table>
        </section>
                    <div id="customer_info"></div>
        <div>
            <div>
                    <div id="mobileAuthInfo" class="OrderCustomerInfo" style="display: none;">
                <div class="OrderCustomerInfo__title">
                    의뢰인 정보
                </div>
                <div class="OrderCustomerInfo__main">
                    <ul class="OrderCustomerInfo__descriptions">
                        <li>∙본인 확인 후 구매가 가능합니다.( 첫 결제 1회만)</li>
                        <li>∙인증된 정보에 따라 실명이 자동 업데이트됩니다. </li>
                    </ul>
                    <div class="OrderCustomerInfo__mobile-confirm-wrapper">
                        <span class="OrderCustomerInfo__user-mobile">김서현 /  01093819026</span>
                        <img width="16px" height="16px" src="https://d2v80xjmx68n4w.cloudfront.net/assets/icon/check_green.svg" alt="체크">
                    </div>
                </div>
                <div class="OrderCustomerInfo__divider"></div>
            </div>
                    </div>
        </div>
    
        
                    
                    
                    <section class="OrderPaymentAmount">
        <h2 class="OrderPaymentAmount__title">할인 / 캐시사용</h2>
        <div class="OrderPaymentAmount__coupon-wrapper">
            <h3 class="OrderPaymentAmount__coupon-label">사용 가능한 쿠폰</h3>
            <div class="OrderPaymentAmount__coupon-select-wrapper" data-type="select">
                <button type="button" class="couponSelectButton">
                    <span class="selectedButtonText">                     사용 가능한 쿠폰  1 장                  </span>
                    <span class="bs-caret">
                    </span>
                </button>
                <div class="dropdownMenuWrapper">
                    <ul class="dropdownMenus" role="menu">
                        <li key="coupon-reset" class="dropdownMenuItem">
                            <a>
                                <div class="dropdownMenuItem__coupon-information">
                                        - 사용 안 함
                                </div>  
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="OrderPaymentAmount__cash-wrapper">
            <h3 class="OrderPaymentAmount__cash-label">캐시 사용</h3>
                <div class="OrderPaymentAmount__cash-input-wrapper">
                    <input id="usedFundsInput" type="number" class="OrderPaymentAmount__cash-input" placeholder="0원" max="0">
                    
                    <button class="OrderPaymentAmount__cash-all-button">
                        전액사용
                    </button>
                </div>
        </div>
        <p class="OrderPaymentAmount__cash-assets"> 보유 키즈쑥쑥 캐시 : 0 원 </p>
    </section>
                    <!-- 결제방법 선택  -->
                    <section class="OrderPaymentMethods">
        <div class="OrderPaymentMethods__main">
        <h3 class="OrderPaymentMethods__title">결제방법</h3>
        <ul class="OrderPaymentMethods__items OrderPaymentMethods__methods" style="margin-bottom: 20px; display: block;">
            <li class="OrderPaymentMethods__item payments-radio-button payments-radio-button--active" style="flex-direction: column; align-items: initial;">
                <div class="awesome-radio">
                    <label>
                        <input id="defaultPayMethod" type="radio" name="defaultPayMethodRadioButton" checked="">
                        <span class="awesome-radio-body"></span>
                        <div class="awesome-radio-text">
                            일반결제
                        </div>
                    </label>
                </div>
                <ul class="OrderPaymentMethods__methods" style="margin-top: 12px; padding: 16px; border: 1px solid rgb(228, 229, 237); border-radius: 4px; display: flex; column-gap: 40px;">
                    <li class="OrderPaymentMethods__item payments-radio-button payments-radio-button--active" key="SC0010">
                        <div class="awesome-radio">
                            <label>
                                <input type="radio" name="payMethodRadioButton" class="payments-radio-button payments-radio-button--active" id="payMethod_SC0010">
                                <span class="awesome-radio-body"></span>
                                <div class="awesome-radio-text">                                신용카드                            </div>
                            </label>
                        </div>
                    </li><li class="OrderPaymentMethods__item payments-radio-button" key="SC0030">
                        <div class="awesome-radio">
                            <label>
                                <input type="radio" name="payMethodRadioButton" class="payments-radio-button" id="payMethod_SC0030">
                                <span class="awesome-radio-body"></span>
                                <div class="awesome-radio-text">                                실시간 계좌이체                            </div>
                            </label>
                        </div>
                    </li><li class="OrderPaymentMethods__item payments-radio-button" key="SC0040">
                        <div class="awesome-radio">
                            <label>
                                <input type="radio" name="payMethodRadioButton" class="payments-radio-button" id="payMethod_SC0040">
                                <span class="awesome-radio-body"></span>
                                <div class="awesome-radio-text">                                무통장입금                            </div>
                            </label>
                        </div>
                    </li><li class="OrderPaymentMethods__item payments-radio-button" key="SC0060">
                        <div class="awesome-radio">
                            <label>
                                <input type="radio" name="payMethodRadioButton" class="payments-radio-button" id="payMethod_SC0060">
                                <span class="awesome-radio-body"></span>
                                <div class="awesome-radio-text">                                휴대폰                            </div>
                            </label>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    
        <ul class="OrderPaymentMethods__items" style="row-gap: 20px; flex-direction: column;">
            <li class="OrderPaymentMethods__item" key="TOSSPAY">
                <div class="awesome-radio">
                    <label>
                        <input class="position-absolute" type="radio" name="payMethodRadioButton" id="payMethod_TOSSPAY">
                        <span class="awesome-radio-body"></span>
                        <div class="awesome-radio-text" style="position: relative;top: -2px;margin-left: 2px;">
                            <img height="16" alt="결제방법 이미지" width="54" src="https://s3-ap-northeast-1.amazonaws.com/kmong-static/assets/icon/logo_toss.png?v=1.1">
                        </div>
                        <div class="OrderPaymentMethods__item-event-label">
                            1만원 이상 첫 결제 시 <span>3천원</span> 캐시백
                        </div>
                    </label>
                </div>
            </li><li class="OrderPaymentMethods__item" key="KAKAOPAY">
                <div class="awesome-radio">
                    <label>
                        <input class="position-absolute" type="radio" name="payMethodRadioButton" id="payMethod_KAKAOPAY">
                        <span class="awesome-radio-body"></span>
                        <div class="awesome-radio-text" style="position: relative;top: -2px;margin-left: 2px;">
                            <img height="16" alt="결제방법 이미지" width="40" src="https://s3-ap-northeast-1.amazonaws.com/kmong-static/assets/icon/logo_kakao@3x.png">
                        </div>
                        
                    </label>
                </div>
            </li>
        </ul>
    </div>
    
    
    
    <div style="display: none;">
        <div class="OrderPaymentMethods__virtual-accounts">
            ∙ 가상계좌(무통장)는 간편송금 서비스를 이용하여 입금하실 경우, 송금이 원활하지 않을 수 있습니다. <br>
            이 경우 이용하시는 은행 서비스에서 입금을 진행해 주세요.
        </div>
    </div>
    
    <div style="display: none;">
        <ul class="OrderPaymentMethods__payco-descriptions">
            <li>PAYCO는 온/오프라인 쇼핑은 물론 송금, 멤버십 적립까지 가능한 통합 서비스입니다.</li>
            <li>휴대폰과 카드 명의자가 동일해야 결제 가능하며, 결제금액 제한은 없습니다. - 지원카드: 모든 국내 신용/체크카드</li>
            <li>현금영수증은 세액공제용으로는 사용이 불가능합니다.</li>
        </ul>
    </div>
    </section>
    
    
    
    
    
    
                    <section class="OrderTax">
        <div>
            <div>
                            <!--기업-->
                <div class="OrderTax__request-wrapper">
                    <div class="awesome-checkbox">
                        <label style="display: flex;">
                            <input id="taxApplyCheckbox" type="checkbox">
                            <span class="awesome-checkbox-body" style="margin-right: 8px;"></span>
                            <div class="checkbox-label">세금계산서 발행신청</div>
                        </label>
                    </div>
                </div>
    
                <div class="orderBill">
                    <ul class="OrderTax__bill-descriptions">
                        <li>
                            <span>∙</span>
                            <p>
                                세금계산서 신청시, 세금계산서와 결제증빙 영수증이 모두 발행됩니다.
                            </p>
                        </li>
                        <li>
                            <span>∙</span>
                            <p>매입세액 공제시 사용가능한 자료는 전문가가 발행하는 '세금계산서'이며, 크몽의 이름으로 발행되는 <br>
                                '결제증빙 영수증' 은 활용하실 수 없습니다.
                            </p>
                        </li>
                        <li>
                        <span>∙</span>
                        <p>
                            쿠폰할인 금액은 세금계산서 발행내역에 포함되지 않습니다. 관련된 자세한 내용은
                            <a class="OrderTax__bill-noti-link" href="https://support.kmong.com/hc/ko/articles/900001834866" target="_blank">
                            <span>여기</span></a>를 통해 확인해주시기 바랍니다.
                            </p>
                        </li>
                    </ul>
                </div>
                        </div>
        </div>
        <div class="OrderTaxForm" style="display: none;">
            <div>
                <div class="OrderTaxForm__field">
                    <label> 회사명(법인명)</label>
                    <div id="c_nameDiv" class="OrderTaxForm__input-wrapper">
                        <input type="text" class="OrderTaxForm__input OrderTaxForm__input--small" placeholder="ex) (주)크몽">
                        <div class="OrderTaxForm__error-text" style="display: none;">
                            필수 항목입니다.
                        </div>
                    </div>
                </div>
                <div class="OrderTaxForm__field">
                    <label>사업자등록번호</label>
                    <div id="c_rnDiv" class="OrderTaxForm__input-wrapper">
                        <input type="text" class="OrderTaxForm__input OrderTaxForm__input--medium" placeholder="123-45-67890">
                        <div class="OrderTaxForm__error-text" style="display: none;">
                            필수 항목입니다.
                        </div>
                    </div>
                </div>
                <div class="OrderTaxForm__field">
                    <label> 대표자명</label>
                    <div id="c_pnameDiv" class="OrderTaxForm__input-wrapper">
                        <input type="text" class="OrderTaxForm__input OrderTaxForm__input--small" placeholder="박크몽">
                        <div class="OrderTaxForm__error-text" style="display: none;">
                            필수 항목입니다.
                        </div>
                    </div>
                </div>
                <div class="OrderTaxForm__kind-type-wrapper">
                    <div class="OrderTaxForm__field" style="margin-right: 40px;">
                        <label>업태</label>
                        <div id="c_pnameDiv" class="OrderTaxForm__input-wrapper">
                            <input type="text" class="OrderTaxForm__input OrderTaxForm__input--small" placeholder="도매 및 소매">
                            <div class="OrderTaxForm__error-text" style="display: none;">
                                필수 항목입니다.
                            </div>
                        </div>
                    </div>
                    <div class="OrderTaxForm__field OrderTaxForm__field--second">
                        <label>종목</label>
                        <div id="c_typeDiv" class="OrderTaxForm__input-wrapper">
                            <input type="text" class="OrderTaxForm__input OrderTaxForm__input--small" placeholder="전자상거래">
                            <div class="OrderTaxForm__error-text" style="display: none;">
                                필수 항목입니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="OrderTaxForm__field">
                    <label> 사업장 주소</label>
                    <div id="c_addrDiv" class="OrderTaxForm__input-wrapper">
                        <input type="text" class="OrderTaxForm__input OrderTaxForm__input--large" placeholder="서울시 서초구 사임당로 157, 3층">
                        <div class="OrderTaxForm__error-text" style="display: none;">
                            필수 항목입니다.
                        </div>
                    </div>
                </div>
                <div class="OrderTaxForm__field">
                    <label>세금계산서 이메일</label>
                    <div id="c_emailDiv" class="OrderTaxForm__input-wrapper">
                        <input type="text" class="OrderTaxForm__input OrderTaxForm__input--large" placeholder="ex) kmong@example.com">
                        <div class="OrderTaxForm__error-text" style="display: none;">
                            필수 항목입니다.
                        </div>
                    </div>
                </div>
                <div class="OrderTaxForm__field">
                    <label> 담당자명</label>
                    <div id="c_mnameDiv" class="OrderTaxForm__input-wrapper">
                        <input type="text" class="OrderTaxForm__input OrderTaxForm__input--small" placeholder="ex) 박크몽">
                        <div class="OrderTaxForm__error-text" style="display: none;">
                            필수 항목입니다.
                        </div>
                    </div>
                </div>
                <div class="OrderTaxForm__field" style="margin: 0;">
                    <label> 담당자 연락처</label>
                    <div id="c_mcontactDiv" class="OrderTaxForm__input-wrapper">
                        <input type="text" class="OrderTaxForm__input OrderTaxForm__input--medium" placeholder="1544-6254">
                        <div class="OrderTaxForm__error-text" style="display: none;">
                            필수 항목입니다.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
            </div>
            <!-- summary -->
            <div class="OrderSummary">
            <div class="OrderSummary__main">
                <h5 class="OrderSummary__price-wrapper">
                    <span class="OrderSummary__price-label">총 서비스 금액</span>
                    <span class="OrderSummary__price OrderSummary__price--total">9,000 원</span>
                </h5>
                <h5 class="OrderSummary__price-wrapper">
                    <span class="OrderSummary__price-label">쿠폰 할인</span>
                    <span class="OrderSummary__price"> 0 원</span>
                </h5>
                <h5 class="OrderSummary__price-wrapper">
                    <span class="OrderSummary__pice-label">캐시 사용</span>
                    <span class="OrderSummary__price">0 원</span>
                </h5>
                <!-- divider -->
                <div class="OrderSummary__divider">
            </div>
            <h5 class="OrderSummary__total-price-wrapper">
                <span class="OrderSummary__price-label">총 결제금액</span>
                <span class="OrderSummary__price">9,000원</span>
            </h5>
            <div class="OrderSummary__agreement-wrapper">
                <div class="OrderSummary__agreement-checkbox-wrapper">
                    <div class="awesome-checkbox">
                        <label>
                            <input id="taxApplyCheckbox" type="checkbox">
                            <span class="awesome-checkbox-body">
                            </span>
                            <div class="OrderSummary__agreement-text">주문 내용을 확인하였으며, 결제에 동의합니다. (필수)</div>
                        </label>
                    </div>
                </div>
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
</html>