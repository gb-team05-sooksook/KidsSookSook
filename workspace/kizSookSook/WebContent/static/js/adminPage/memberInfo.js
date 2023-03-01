/**
 * memberInfo.jsp
 */

//

const searchURL = pageContext + '/searchMemberAction.admin?type=userIdentification';

const size = JSON.parse(membersData).length;
const $all = $('.tableCheckboxAll');
let $checkboxes = $('.tableCheckbox');
const $trData = $('.trData');

app().user.loadMember.excute(membersData, state.load().$myInfoTable);
app().searchService.excute(state.load().member.$searchMember, searchURL);

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
  var selectData = app().selectChecked.excute();

  state.load().$modal.addClass('active');

  console.log(selectData);

  // ajax 통신으로 데이터 불러오기
  app().ajaxService.excute(url, selectData, (result) => {
    loadMemberModal.excute(result, state.load().$modalTable);
  });
});

state.load().$modalClose.on('click', (e) => {
  e.preventDefault();
  state.load().$modal.removeClass('active');
});

state.load().member.$update.on('click', function (e) {
  e.preventDefault();

  app().selectChecked.excute();
});

loadMemberModal = (function () {
  function excute(members, stage, dom) {
    var members = JSON.parse(members);
    var dom;
    members.forEach((member, i) => {
      dom += `
      <tr name='member'>
        <td>${member.userId}</td>
        <td>${member.userIdentification}</td>
        <td>${member.userRegisterDate}</td>
        <td>${member.userEmail}</td>
        <td>${member.userAddress}</td>
        <td>${member.userPhoneNumber}</td>
        <td>${member.memberGender}</td>
      </tr>`;
    });
    stage.find("tr[name='member']").remove();
    stage.append(dom);
  }

  return { excute: excute };
})();
