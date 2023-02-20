const $all = $(".join-item-agreements-check-all-img");
const $checkboxes = $(".join-item-agreements-check-img");
const $firstCheck = $('#firstCheck');
const $secondCheck = $('#secondCheck');
const $thirdCheck = $('#thirdCheck');
const $forthCheck = $('#forthCheck');
const $fifthCheck = $('#fifthCheck');
const $sixthCheck = $('#sixthCheck');
const $btnModal = $('.join-submit-btn');

$all.on("click", function(){
    var $checked = $('#allCheck').is(':checked');
    if($checked) {
        $all.css('background-color', 'rgb(228, 229, 237)');
        $checkboxes.css('background-color', 'rgb(228, 229, 237)');
        $('#allCheck').prop('checked', false);
        $checkboxes.children().prop('checked', false);
        $btnModal.attr('disabled', true);
    } else {
        $all.css('background-color', 'rgb(255, 212, 0)');
        $checkboxes.css('background-color', 'rgb(255, 212, 0)');
        $('#allCheck').prop('checked', true);
        $checkboxes.children().prop('checked', true);
        $btnModal.removeAttr('disabled');
    }
});

$firstCheck.parent().on('click', function() {
    var $ischecked = $firstCheck.is(':checked');
    if($ischecked) {
        $firstCheck.parent().css('background-color', 'rgb(228, 229, 237)');
        $firstCheck.prop('checked', false);
    } else {
        $firstCheck.parent().css('background-color', 'rgb(255, 212, 0)');
        $firstCheck.prop('checked', true);
    }
});
$secondCheck.parent().on('click', function() {
    var $ischecked = $secondCheck.is(':checked');
    if($ischecked) {
        $secondCheck.parent().css('background-color', 'rgb(228, 229, 237)');
        $secondCheck.prop('checked', false);
    } else {
        $secondCheck.parent().css('background-color', 'rgb(255, 212, 0)');
        $secondCheck.prop('checked', true);
    }
});
$thirdCheck.parent().on('click', function() {
    var $ischecked = $thirdCheck.is(':checked');
    if($ischecked) {
        $thirdCheck.parent().css('background-color', 'rgb(228, 229, 237)');
        $thirdCheck.prop('checked', false);
    } else {
        $thirdCheck.parent().css('background-color', 'rgb(255, 212, 0)');
        $thirdCheck.prop('checked', true);
    }
});
$forthCheck.parent().on('click', function() {
    var $ischecked = $forthCheck.is(':checked');
    if($ischecked) {
        $forthCheck.parent().css('background-color', 'rgb(228, 229, 237)');
        $forthCheck.prop('checked', false);
    } else {
        $forthCheck.parent().css('background-color', 'rgb(255, 212, 0)');
        $forthCheck.prop('checked', true);
    }
});
$fifthCheck.parent().on('click', function() {
    var $ischecked = $fifthCheck.is(':checked');
    if($ischecked) {
        $fifthCheck.parent().css('background-color', 'rgb(228, 229, 237)');
        $fifthCheck.prop('checked', false);
    } else {
        $fifthCheck.parent().css('background-color', 'rgb(255, 212, 0)');
        $fifthCheck.prop('checked', true);
    }
});
$sixthCheck.parent().on('click', function() {
    var $ischecked = $sixthCheck.is(':checked');
    if($ischecked) {
        $sixthCheck.parent().css('background-color', 'rgb(228, 229, 237)');
        $sixthCheck.prop('checked', false);
    } else {
        $sixthCheck.parent().css('background-color', 'rgb(255, 212, 0)');
        $sixthCheck.prop('checked', true);
    }
});

$checkboxes.click(function(){
    if($checkboxes.children().filter(":checked").length == 6) {
        $all.css("background-color", 'rgb(255, 212, 0)');
        $all.children().prop('checked', true);
    } else {
        $all.css("background-color", 'rgb(228, 229, 237)');
        $all.children().prop('checked', false);
    }

    if($firstCheck.is(':checked')) {
        if($secondCheck.is(':checked')) {
            if($thirdCheck.is(':checked')) {
                if($forthCheck.is(':checked')) {
                    $btnModal.removeAttr('disabled');
                    return;
                }
            }
        }
    }
    $btnModal.attr('disabled', true);
});