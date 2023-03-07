/**
 * 
 */
	const $password = $('input#password');
	const $body = $('body');
    const $modal = $('.login-modal');
    const $btnLoginModal = $('.btn-login-modal');
    const $xButton = $('.x-button');
    const $modalKeepLogin = $('.modal-keep-login');
	const $loginButton = $('.modal-login-btn');

    $btnLoginModal.click(() => {
        $body.css('overflow', 'hidden');
        $modal.css('display', 'block');
    });

    $xButton.click(() => {
        $body.css('overflow', 'auto');
        $modal.css('display', 'none');

    });

    $modalKeepLogin.click(() => {
        if($('.modal-checkbox-inner').attr('class') == 'modal-checkbox-inner') {
            $('.modal-checkbox-inner').attr('class', 'modal-checkbox-inner-check');
        } else {
            $('.modal-checkbox-inner-check').attr('class', 'modal-checkbox-inner');
        }
    });

	/*비밀번호 암호화*/
	$loginButton.click((event)=>{
		event.preventDefault();
		$password.val(btoa($password.val()));
		console.log($password.val());
    	$('.modal-login-form').submit();
	});
