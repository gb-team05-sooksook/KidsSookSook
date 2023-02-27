let inputCheckService = (function() {
    function excute() {
        var $texts = jqueryDomObj.load().myInfo.errorText;
        var $inputs = jqueryDomObj.load().myInfo.input;
    
        $inputs.each((i, e) => {
            $(e).attr('checked', 'false');
            console.log($(e).attr('checked'));
        });
    };
    
    return {excute : excute};
})();
