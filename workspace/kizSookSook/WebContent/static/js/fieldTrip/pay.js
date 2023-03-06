const $price = $('.OrderGigInfo__option-table-cell-item').eq(3).text().replace(',', '').replace('원', '');
const $rightPrice = $('.OrderSummary__price--total');
const $headCount = $('.OrderTotalHeadCount');

function count(type) {
	const $result = $('.OrderGigInfo__option-table-count');
	let $resultPrice;
	let $number = $result.text();
	
	if(type == 'plus') {
		$number = parseInt($number) + 1;
	} else if(type == 'minus' && $number > 1) {
		$number = parseInt($number) - 1;
	}
	
	$resultPrice = parseInt($price) * $number;
	$result.text($number);
	$('.OrderGigInfo__option-table-cell-item').eq(3).text($resultPrice + ' 원');
	$rightPrice.text($resultPrice + ' 원');
	$headCount.text($number + ' 명');
	
	totalPrice();
}

const $cashInput = $('.OrderPaymentAmount__cash-input');
const $nowCash = $('.OrderPaymentAmount__cash-assets span').text();
function cashAll() {
	$cashInput.val($nowCash);
	$('.OrderCash').text($cashInput.val()+' 원');
	
	totalPrice();
}

$cashInput.on("blur", function() {
	if(parseInt($cashInput.val()) < $nowCash) {
		$('.OrderCash').text($cashInput.val()+' 원');
	} else {
		$cashInput.val($nowCash);
		console.log('여기냐 네이놈')
		$('.OrderCash').text($nowCash+' 원');
	}
	
	if(!$cashInput.val()) {
		$('.OrderCash').text('0 원');
	}
	
	totalPrice();
});

function totalPrice() {
	$('.OrderTotalPrice').text(parseInt($rightPrice.text().replace('원', '')) - $cashInput.val() + '원');
}


fieldTripJSON = JSON.parse(fieldTripJSON);
$('#payBtn').on('click', function() {
	const headCount = $headCount.text().replace(' 명', '');
	const totalPrice = $('.OrderTotalPrice').text().replace('원', '');
	const cash = $('.OrderCash').text().replace(' 원', '');
	
	BootPay.request({
      price: parseInt($('.OrderTotalPrice').text()), //실제 결제되는 가격
 
      // 관리자로그인 -> 결제설치 -> 인증키 및 보안 -> WEB Application ID
      application_id: "640587563049c8001d365e76",
 
      name: `키즈쑥쑥`, //결제창에서 보여질 이름
      pg: '',
      method: 'card', //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
      show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
      items: [
          {
              item_name: `${fieldTripJSON.fieldTripName}`, //상품명
              qty: $headCount.text(), //수량
              unique: '123', //해당 상품을 구분짓는 primary key
              price: `${fieldTripJSON.fieldTripPrice}`, //상품 단가
          }
      ],
      order_id: '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
      
      
      
  }).error(function (data) {
      //결제 진행시 에러가 발생하면 수행됩니다.
      console.log(data);
  }).cancel(function (data) {
      //결제가 취소되면 수행됩니다.
      console.log(data);
  }).close(function (data) {
      // 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
      console.log(data);
  }).done(function (data) {
      //결제가 정상적으로 완료되면 수행됩니다
      //비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
	location.href = `${contextPath}/paymentAction.pay?fieldTripId=${fieldTripJSON.fieldTripId}&headCount=${headCount}&amount=${totalPrice}&cash=${cash}`;
      console.log(data);
  });
});
