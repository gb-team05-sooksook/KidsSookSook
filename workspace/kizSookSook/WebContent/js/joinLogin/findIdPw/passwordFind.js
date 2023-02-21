	const $body = $('body');
    const $modal = $('.swal2-container');
    const $modalFail = $('.swal2-container-fail');
    const $btnModal = $('.main-pw-find-btn');

    function removeAttrBtn() {
    	/*실제 페이지 버튼 활성화는 @앞에 한글자라도 붙이고 뒤에 한글자 이상 + . + c 뒤에부터 활성화가 됨*/
        if($('.main-pw-find-input').val()) {
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