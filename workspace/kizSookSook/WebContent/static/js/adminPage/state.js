/** @format */

let state = (function () {
  function load() {
    return {
      $myInfoTable: $($('.myTable')[0]),
      $modalTable: $($('.myTable')[1]),
      $trHeader: $('.trHeader'),
      $modal: $('.modal-bg'),
      $modalOpen: $('#userUpdateButton'),
      $modalClose: $('.X'),
      $searchNotice: $("form[name='searchNotice']"),
      member: {
        $userType: $("input[name='userType']"),
        $searchMember: $("form[name='searchMember']"),
        $tableStage: $('div.table-stage'),
        $update: $('#userUpdateButton'),
        $upadateSubmit: $(".memberInfoModalContainer a[name='submit']"),
        $delete: $('#userDeleteButton'),
      },
      payment: {
        $delete: $('#paymentDeleteButton input'),
      },
      notice: {
        $noticeForm: $("form[name='noticeForm']"),
        $noticeUpdate: $("form[name='noticeUpdate']"),
      },
    };
  }

  return { load: load };
})();
