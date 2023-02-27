let state = (function () {
  function load() {
    return {
      $myInfoTable: $(".myInfo-table"),
      member: {
        $userType: $("input[name='userType']"),
      },
    };
  }

  return { load: load };
})();
