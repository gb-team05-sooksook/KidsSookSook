/**
 * memberInfo.jsp
 *
 * @format
 */

//

const searchURL = pageContext + '/searchMemberAction.admin?type=userIdentification';

const size = JSON.parse(membersData).length;
const $all = $('.tableCheckboxAll');
let $checkboxes = $('.tableCheckbox');
const $trData = $('.trData');

app().user.loadMember.excute(membersData, state.load().$myInfoTable);
app().searchService.excute(
  state.load().member.$searchMember,
  searchURL,
  state.load().$myInfoTable,
  app().user.loadMember.excute
);

$checkboxes.click(function () {
  console.log('클릭됨');
  $all.prop('checked', $checkboxes.filter(':checked').length == size);
});

$all.on('click', function () {
  $checkboxes.prop('checked', $(this).is(':checked'));
});

// 회원 수정 모달 열기
state.load().$modalOpen.on('click', (e) => {
  e.preventDefault();
  var url = pageContext + '/searchSelectedMemberAction.admin';
  var data = app().selectChecked.excute();

  state.load().$modal.addClass('active');

  // ajax 통신으로 데이터 불러오기
  app().ajaxService.excute(url, data, (result) => {
    app().user.loadMemberModal.excute(result, state.load().$modalTable);
  });
});

// 모달 닫기
state.load().$modalClose.on('click', (e) => {
  e.preventDefault();
  state.load().$modal.removeClass('active');
});

state.load().member.$update.on('click', function (e) {
  e.preventDefault();

  app().selectChecked.excute();
});

// 회원정보 업데이트
state.load().member.$upadateSubmit.on('click', function (e) {
  var userArr = new Array();

  $("#userForm tr[name='member']").each((i, e) => {
    var obj = new Object();

    $(e)
      .find('input')
      .each((i, e) => {
        console.log($(e));
        obj[`${$(e).attr('name')}`] = $(e).val();
      });

    userArr.push(obj);
  });

  var encoded = encodeURI($(this).attr('href') + `?userDatas=${JSON.stringify(userArr)}`);

  console.log(encoded);

  $(this).attr('href', encoded);
});

// 회원 삭제
state.load().member.$delete.on('click', function () {
  var json = app().selectChecked.excute().checkedIds;

  var length = JSON.parse(json);

  if (length < 1) {
    alert('선택된 회원이 없습니다');
    return;
  }

  if (!confirm('정말로 삭제하시겠습니까?')) {
    return;
  }

  var encoded = encodeURI(`${pageContext}/deleteUserAction.admin?checkedIds=${json}`);

  location.href = encoded;
});
