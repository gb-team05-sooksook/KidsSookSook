let state = (function () {
  function load() {
    return {
      $myInfoTable: $($('.myTable')[0]),
      $modalTable: $($('.myTable')[1]),
      $trHeader: $('.trHeader'),
      $modal: $('.modal-bg'),
      $modalOpen: $('#userUpdateButton'),
      $modalClose: $('.X'),
      member: {
        $userType: $("input[name='userType']"),
        $tableStage: $('div.table-stage'),
        $searchMember: $("form[name='searchMember']"),
        $update: $('#userUpdateButton'),
      },
    };
  }

  return { load: load };
})();
