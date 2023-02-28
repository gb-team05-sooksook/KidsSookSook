let state = (function () {
  function load() {
    return {
      $myInfoTable: $('#myTable'),
      $trHeader: $('.trHeader'),
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
