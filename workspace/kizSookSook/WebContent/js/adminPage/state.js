let state = (function () {
  function load() {
    return {
      $myTable: $('#myTable'),
    };
  }

  return { load: load };
})();
