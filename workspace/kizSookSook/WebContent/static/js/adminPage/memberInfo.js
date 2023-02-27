/**
 * memberInfo.jsp
 */

const size = 4;
const $all = $('.tableCheckboxAll');
const $checkboxes = $('.tableCheckbox');
const $trData = $('.trData');

const open = document.querySelector('#userUpdateButton');
const close = document.querySelector('.X');
const modalBox = document.querySelector('.modal-bg');

/* $all.on('click', function () {
    $checkboxes.each((i, e) => {
        var child = $(e).children('.trDataNO');

        if (child != null) {
            return;
        } else {
            prop('checked', $(this).is(':checked'));
        }
    });
}); */

$checkboxes.click(function () {
    $all.prop('checked', $checkboxes.filter(':checked').length == size);
});

$all.on('click', function () {
    $checkboxes.prop('checked', $(this).is(':checked'));
});

open.addEventListener('click', () => {
    modalBox.classList.add('active');
});

close.addEventListener('click', () => {
    modalBox.classList.remove('active');
});
