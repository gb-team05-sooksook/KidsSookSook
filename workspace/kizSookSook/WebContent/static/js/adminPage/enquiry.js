const modalBox = document.querySelector('.modal-bg');
const $filterButton = $('input.filterButton');
const $searchEnquiry = $('form.searchEnquiry');

/* 한 페이지당 테이블 최대개수 */
const size = 5;

const $all = $('.tableCheckboxAll');
let $checkboxes = $('.tableCheckbox');

app().enquiry.loadEnquiry.excute(enquiries, state.load().$myInfoTable);

$checkboxes.click(function () {
  $all.prop('checked', $checkboxes.filter(':checked').length == size);
});

$all.on('click', function () {
  $checkboxes.prop('checked', $(this).is(':checked'));
});

$filterButton.on('click', function () {
  var i = $filterButton.index($(this));
  switch (i) {
    case 0:
      console.log(i);
      location.href = contextPath + '/enquiry.admin';
      break;
    case 1:
      location.href = contextPath + '/enquiry.admin?type=confirm&confirm=0';
      break;
    default:
      break;
  }
});

$searchEnquiry.on('submit', function (e) {
  e.preventDefault();

  var enquiryTitle = $('#myInput').val();

  location.href = contextPath + `/enquiry.admin?type=enquiryTitle&enquiryTitle=${enquiryTitle}`;
});
