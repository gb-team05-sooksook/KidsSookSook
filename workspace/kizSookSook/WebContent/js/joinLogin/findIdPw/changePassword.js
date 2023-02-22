/**
 * 
 */

const $body = $('body');
const $modal = $('.swal2-container');
const $btnModal = $('.submit-btn');
const $errors = $('.error-text');

$btnModal.click((event) => {
    event.preventDefault();

    var reg;
    var check;
    // 비번
    reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
    check = reg.test($('input[name=newPassword]').val());
    if(!check) {
        $($errors[0]).css('display', 'block');
        $($errors[1]).css('display', 'block');
        return;
    } else {
        $($errors[0]).css('display', 'none');
    }
    // 비번확인
    reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
    check = reg.test($('input[name=newConfirmPassword]').val());
    check = ($('input[name=newPassword]').val() == $('input[name=newPassword]').val()) && check;
    if(check && $('input[name=newPassword]').val() != '') {
        $($errors[1]).css('display', 'none');
    } else {
        $($errors[1]).css('display', 'block');
        return;
    }

    $body.css('overflow', 'hidden');
    $modal.css('display', 'block');

    $('.swal2-confirm').click(function() {
        $btnModal.unbind('click').click();
    });
});