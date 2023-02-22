const click = document.getElementById("query");
console.log(click)

const temp = click.getAttribute('style');

//focus 했을 때
click.addEventListener('focus', (e) => {

    click.style.border = "1px solid #FAE269";
});
//blur 했을 때
click.addEventListener('blur', (e) => {

    click.style.border = temp;

});


$(document).ready(function () {
    $('#request_anonymous_requester_email').focus(function () {
        console.log($(this));
        $(this).css("border", "1px solid #FAE269");
    });
    $('#request_subject').focus(function () {
        console.log($(this));
        $(this).css("border", "1px solid #FAE269");
    });
    $('#request_description').focus(function () {
        console.log($(this));
        $(this).css("border", "1px solid #FAE269");
    });

    $('#request_anonymous_requester_email').blur(function () {
        console.log($(this));
        $(this).css("border", "1px solid #ececec");
    });
    $('#request_subject').blur(function () {
        console.log($(this));
        $(this).css("border", "1px solid #ececec");
    });
    $('#request_description').blur(function () {
        console.log($(this));
        $(this).css("border", "1px solid #ececec");
    });
});

const $change = $('.change');
const $button = $('.submitButton');
const $error = $('.notification-error');

console.log($error);

$button.click(function (event) {
    event.preventDefault();
    $change.each((i, e) => {
        var check;
        switch (i) {
            case 0:
                check = $(e).val() == '';
                if (check) {
                    $($error[i]).css("display", "block");
                } else {
                    $($error[i]).css("display", "none");
                }
                break;
            case 1:
                check = $(e).val() == '';
                if (check) {
                    $($error[i]).css("display", "block");
                } else {
                    $($error[i]).css("display", "none");
                }
                break;
            case 2:
                check = $(e).val() == '';
                if (check) {
                    $($error[i]).css("display", "block");
                } else {
                    $($error[i]).css("display", "none");
                }
                break;
            case 3:
                check = $(e).val() == '';
                if (check) {
                    $($error[i]).css("display", "block");
                } else {
                    $($error[i]).css("display", "none");
                }
                break;
        }
    });
})
