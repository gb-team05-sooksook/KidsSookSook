/**
 * fieldTripFind.jsp
 */

window.onload = function () {
  location.reload();
};

const searchURL = pageContext + '/fieldTripSearchAction.admin';
const size = 4;
const $all = $('.tableCheckboxAll');
let $checkboxes = $('.tableCheckbox');

$all.on('click', function () {
  $checkboxes.prop('checked', $(this).is(':checked'));
});

$checkboxes.click(function () {
  $all.prop('checked', $checkboxes.filter(':checked').length == size);
});

app().trips.loadTrips.excute(fieldTrips, state.load().$myInfoTable);
app().searchService.excute(
  state.load().$searchFieldTrip,
  searchURL,
  state.load().$myInfoTable,
  app().trips.loadTrips.excute
);

state.load().fieldTrip.$tripDeleteButton.on('click', function () {
  var json = app().selectChecked.excute().checkedIds;

  var length = JSON.parse(json);

  if (length < 1) {
    alert('선택된 체험학습이 없습니다');
    return;
  }

  if (!confirm('정말로 삭제하시겠습니까?')) {
    return;
  }

  var encoded = encodeURI(`${pageContext}/fieldTripDeleteAction.admin?fieldTripIds=${json}`);

  location.href = encoded;
});
