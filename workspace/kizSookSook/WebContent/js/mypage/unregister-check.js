let radioCssObjUnChecked = {
    border: '1px solid rgb(200, 202, 210)',
    'background-color': 'rgb(255, 255, 255)',
};

let radioCssObjChecked = {
	border: '1px solid rgb(111 113 122)',
    'background-color': 'rgb(255, 212, 0)',
};

let unregisterCheckService = (function () {
    var $radioPrev = $($('.register-radio-inner')[0]);

	var $reasonList = $(".reason-list-checkbox");

    function check() {
        var $radio = $('.register-radio-inner');

        $radio.each((i, e) => {
            $(e).css(radioCssObjUnChecked);
        });

		console.log($reasonList[0]);

        $radio.each((i, e) => {
            $(e).on('click', function (e) {
                e.preventDefault();

                console.log($radioPrev);

                if ($radioPrev == $(this)) {
                    return;
                }

                $radioPrev.css(radioCssObjUnChecked);
                $(this).css(radioCssObjChecked);

                $radioPrev = $(this);

                console.log($(this));
            });
        });
    }

    return { check: check };
})();

let unregisterWarningsService = (function(){
	var checked = false;
	
	function check(){
		
		$(".unregister-svg-path").css("transition", "fill 0.1s linear");
		
		$(".unregister-agrement-check").on("click", function(){
			
			var btn = document.querySelector("div.unregister-agrement-btn-wrapper button");
			
			if(!checked){
				$(".unregister-svg-path").css("fill",  "rgb(255, 212, 0)");
				btn.disabled = false;
				checked = true;
			} else {
				btn.disabled = true;
				$(".unregister-svg-path").css("fill",  "rgb(111 113 122)");
				checked = false;
			}
			
		});
		
	}
	
	return {check : check};
})();

function changeBtnDisable(){
	var btn = document.getElementById('commit-btn');
	
	console.log(btn);
	btn.disabled = false;
}



















