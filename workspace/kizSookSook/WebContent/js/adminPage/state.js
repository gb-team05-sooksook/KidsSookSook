let state = (function () {
  function load() {
    return {
      $myTable: $('#myTable'),
      member: {
        $userType: $("input[name='userType']"),
      },
    };
  }

  return { load: load };
})();
