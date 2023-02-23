const openUpdate = document.querySelectorAll('.filterButton')[2];
const close = document.querySelector('.updateX');
const submit = document.querySelector('.det_submitButton')
const modalBox = document.querySelector('.updateModal-bg');

console.log(openUpdate);

openUpdate.addEventListener('click', () => {
    modalBox.classList.add('active');
});

close.addEventListener('click', () => {
    modalBox.classList.remove('active');
});

submit.addEventListener('click', () => {
    modalBox.classList.remove('active');
});

$("input[name='deleteCheck']:checked");

$('.trData').each((i, e) => {
    $(e).on('click', function () {
        console.log($('.tableCheckbox:checked'));
    });
});
