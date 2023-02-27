const open = document.querySelectorAll('.filterButton')[2];
const close = document.querySelector('.X');
const submit = document.querySelector('.det_submitButton');
const modalBox = document.querySelector('.modal-bg');

/* 한 페이지당 테이블 최대개수 */
const size = 5;

const $all = $('.tableCheckboxAll');
const $checkboxes = $('.tableCheckbox');

open.addEventListener('click', () => {
    modalBox.classList.add('active');
});

close.addEventListener('click', () => {
    modalBox.classList.remove('active');
});

submit.addEventListener('click', () => {
    modalBox.classList.remove('active');
});

$checkboxes.click(function () {
    $all.prop('checked', $checkboxes.filter(':checked').length == size);
});

$all.on('click', function () {
    $checkboxes.prop('checked', $(this).is(':checked'));
});


