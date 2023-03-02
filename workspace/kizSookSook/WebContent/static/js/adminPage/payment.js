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
