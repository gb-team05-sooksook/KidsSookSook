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
    
    $btnModal.click(function(event) {
        event.preventDefault();
        $inputs.each((i, e) => {
            var reg;
            var check;
            switch (i) {
                case 0:
                    // 아이디
                    reg = /^[a-z]+[a-z0-9]{5,19}$/g;
                    check = reg.test($(e).val());
                    if(!check) {
                        $($errors[i]).css('display', 'block');
                    } else {
                        $($errors[i]).css('display', 'none');
                    }
                    break;
                case 1:
                    // 비번
                    reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
                    check = reg.test($(e).val());
                    if(!check) {
                        $($errors[i]).css('display', 'block');
                    } else {
                        $($errors[i]).css('display', 'none');
                    }
                    break;
                case 2:
                    // 비번확인
                    reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
                    check = reg.test($(e).val());
                    check = ($($inputs[i]).val() == $($inputs[i - 1]).val()) && check;
                    if(check && $($inputs[i - 1]).val() != '') {
                        $($errors[i]).css('display', 'none');
                    } else {
                        $($errors[i]).css('display', 'block');
                    }
                    break;
                case 3:
                    // 이메일
                    reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
                    check = reg.test($(e).val());
                    if(!check) {
                        $($errors[i]).css('display', 'block');
                    } else {
                        $($errors[i]).css('display', 'none');
                    }
                    break;
                case 4:
                    // 폰번호
                    reg = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;
                    check = reg.test($(e).val());
                    if(!check) {
                        $($errors[i]).css('display', 'block');
                    } else {
                        $($errors[i]).css('display', 'none');
                    }
                    break;
                case 5:
                    // 주소
                    check = $(e).val() == '';
                    if(check) {
                        $($errors[i]).css('display', 'block');
                    } else {
                        $($errors[i]).css('display', 'none');
                    }
                    break;
                case 6:
                    // 상세주소
                    console.log($(e));
                    check = $(e).val() == '';
                    if(check) {
                        $($errors[i - 1]).css('display', 'block');
                    } else {
                        $($errors[i - 1]).css('display', 'none');
                    }
                    break;
                case 7:
                    // 성별, 사업자등록번호
                    console.log($(e));
                    check = $(e).val() == '';
                    if(check) {
                        $($errors[i - 1]).css('display', 'block');
                    } else {
                        $($errors[i - 1]).css('display', 'none');
                    }
                    break;
                default:
                    break;
            }
        });
        $errors.each((i, e) => {
            if($(e).css('display') == 'block') {
                console.log('야');
            } else {
                if($(e).val() != '') {
                    $joinForm.submit();
                }
            }
        });
    });