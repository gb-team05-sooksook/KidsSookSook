console.log(state.load().$myInfoTable);

const searchURL = pageContext + '/searchPaymentAction.admin?type=userIdentification';

const size = JSON.parse(paymentsData).length;
const $all = $('.tableCheckboxAll');
let $checkboxes = $('.tableCheckbox');
const $trData = $('.trData');

$checkboxes.click(function () {
  console.log('클릭됨');
  $all.prop('checked', $checkboxes.filter(':checked').length == size);
});

$all.on('click', function () {
  $checkboxes.prop('checked', $(this).is(':checked'));
});

app().payment.loadPayment.excute(paymentsData, state.load().$myInfoTable);
app().searchService.excute(
  state.load().member.$searchMember,
  searchURL,
  state.load().$myInfoTable,
  app().payment.loadPayment.excute
);

// 결제내역 삭제
state.load().payment.$delete.on('click', function () {
  var json = app().selectChecked.excute().checkedIds;

  var length = JSON.parse(json);

  if (length < 1) {
    alert('선택된 내역이 없습니다');
    return;
  }

  if (!confirm('정말로 삭제하시겠습니까?')) {
    return;
  }

  var encoded = encodeURI(`${pageContext}/deletePaymentAction.admin?checkedIds=${json}`);

  location.href = encoded;
});
