/**
 * 
 */

	const $body = $('body');
    const $modal = $('.login-modal');
    const $btnLoginModal = $('.btn-login-modal');
    const $xButton = $('.x-button');
    const $modalKeepLogin = $('.modal-keep-login');

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