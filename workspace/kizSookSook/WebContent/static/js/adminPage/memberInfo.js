/**
 * memberInfo.jsp
 */

//

const searchURL = 
  pageContext + "/searchMemberAction.admin?type=userIdentification";

const size = JSON.parse(membersData).length;
const $all = $('.tableCheckboxAll');
let $checkboxes = $('.tableCheckbox');
const $trData = $('.trData');

const open = document.querySelector('#userUpdateButton');
const close = document.querySelector('.X');
const modalBox = document.querySelector('.modal-bg');

app().user.loadMember.excute(membersData);
app().searchService.excute(state.load().member.$searchMember, searchURL);

$checkboxes.click(function () {
  console.log('클릭됨');
  $all.prop('checked', $checkboxes.filter(':checked').length == size);
});

$all.on('click', function () {
  $checkboxes.prop('checked', $(this).is(':checked'));
});

open.addEventListener('click', () => {
  modalBox.classList.add('active');
});

close.addEventListener('click', () => {
  modalBox.classList.remove('active');
});

state.load().member.$update.on("click", function(e) {
  e.preventDefault();
  
  app().selectChecked.excute();
});