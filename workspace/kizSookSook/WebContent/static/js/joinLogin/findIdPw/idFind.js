/**
 * 
 */

	const $body = $('body');
    const $modal = $('.swal2-container');
    const $modalFail = $('.swal2-container-fail');
    const $inputs = $('.main-id-find-input');
    const $btnModal = $('.main-id-find-btn');

    function removeAttrBtn() {
        if($($inputs[0]).val() && $($inputs[1]).val().length >= 10) {
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