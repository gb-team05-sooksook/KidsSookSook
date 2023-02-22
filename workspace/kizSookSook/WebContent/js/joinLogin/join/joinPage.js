/**
 * 
 */

	const $all = $(".join-item-agreements-check-all-img");
    const $checkboxesImg = $(".join-item-agreements-check-img");
    const $checkboxes = $('.checkbox');
    const $btnModal = $('.join-submit-btn');
    const $inputs = $('.join-item-input');
    const $errors = $('.error-text');
    const $joinForm = $('#joinForm');

    $checkboxes.each((i, e) => {
        $(e).parent().on('click', function() {
            var $ischecked = $(e).is(':checked');
            if($ischecked) {
                $(e).parent().css('background-color', 'rgb(228, 229, 237)');
                $(e).prop('checked', false);
            } else {
                $(e).parent().css('background-color', 'rgb(255, 212, 0)');
                $(e).prop('checked', true);
            }
        })
    });

    $all.on("click", function(){
        var $checked = $('#allCheck').is(':checked');
        if($checked) {
            $all.css('background-color', 'rgb(228, 229, 237)');
            $checkboxesImg.css('background-color', 'rgb(228, 229, 237)');
            $('#allCheck').prop('checked', false);
            $checkboxesImg.children().prop('checked', false);
            $btnModal.attr('disabled', true);
        } else {
            $all.css('background-color', 'rgb(255, 212, 0)');
            $checkboxesImg.css('background-color', 'rgb(255, 212, 0)');
            $('#allCheck').prop('checked', true);
            $checkboxesImg.children().prop('checked', true);
            $btnModal.removeAttr('disabled');
        }
    });

    $checkboxesImg.on('click', function(){
        if($checkboxesImg.children().filter(":checked").length == 6) {
            $all.css("background-color", 'rgb(255, 212, 0)');
            $all.children().prop('checked', true);
        } else {
            $all.css("background-color", 'rgb(228, 229, 237)');
            $all.children().prop('checked', false);
        }

        if($($checkboxes[0]).is(':checked')) {
            if($($checkboxes[1]).is(':checked')) {
                if($($checkboxes[2]).is(':checked')) {
                    if($($checkboxes[3]).is(':checked')) {
                        $btnModal.removeAttr('disabled');
                        return;
                    }
                }
            }
        }
        $btnModal.attr('disabled', true);
    });

    $('.join-item-select-dropdown-div').on('click', () => {
        let $click = $('#drop-content');
        if($click.css('display') === 'none'){
            $click.css('display', 'block');
        }else{
            $click.css('display', 'none')
        }
    });

    function selectGender(e) {
        $('.join-item-select-placeholder').text($(e).text()).css('color', 'black');
        $('#memberGender').val($(e).text());
        $('#drop-content').css('display', 'none');
    }

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                document.querySelector("#memberAddress").value = data.address; // 주소 넣기
                document.querySelector("input[name=memberAddressDetail]").focus(); //상세입력 포커싱
            }
        }).open();
    }