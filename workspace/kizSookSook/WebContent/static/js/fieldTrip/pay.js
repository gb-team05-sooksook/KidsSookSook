const $price = $('.OrderGigInfo__option-table-cell-item').eq(3).text().replace(',', '').replace('원', '');
const $rightPrice = $('.OrderSummary__price--total');

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
	$('.OrderGigInfo__option-table-cell-item').eq(3).text($resultPrice+' 원');
	$rightPrice.text($resultPrice+' 원');
	
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
	if($cashInput.val() < $nowCash) {
		$('.OrderCash').text($cashInput.val()+' 원');
	} else {
		$cashInput.val($nowCash);
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