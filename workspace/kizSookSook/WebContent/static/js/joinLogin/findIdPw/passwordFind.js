/**
 * 
 */

	const $body = $('body');
    const $modal = $('.swal2-container');
    const $modalFail = $('.swal2-container-fail');
    const $btnModal = $('.main-pw-find-btn');

    function removeAttrBtn() {
        var $test = $('.main-pw-find-input').val();
        const exptext = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        if(exptext.test($test)) {
            $btnModal.removeAttr('disabled');
        } else {
            $btnModal.attr('disabled', true);
        }
    }
    
    $btnModal.click((event) => {
        event.preventDefault();
        $body.css('overflow', 'hidden');
        $modal.css('display', 'block');

        $('.swal2-confirm').click(function() {
            $btnModal.unbind('click').click();
        });
    });

    /*$btnModal.click((event) => {
        event.preventDefault();
        $body.css('overflow', 'hidden');
        $modalFail.css('display', 'block');

        $('.swal2-confirm').click(function() {
            $btnModal.unbind('click').click();
        });
    });*/
    
   