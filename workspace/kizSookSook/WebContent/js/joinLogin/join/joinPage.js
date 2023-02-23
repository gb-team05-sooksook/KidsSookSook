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

    // 동의 버튼 효과
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

    // 전체동의 버튼 효과
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

    // 동의 버튼 전체 확인 시 전체동의도 확인 효과, 필수사항 동의 시 submit 버튼 활성화
    $checkboxesImg.on('click', function(){
        var agreeCheck = [false, false, false, false];

        if($checkboxesImg.children().filter(":checked").length == 6) {
            $all.css("background-color", 'rgb(255, 212, 0)');
            $all.children().prop('checked', true);
        } else {
            $all.css("background-color", 'rgb(228, 229, 237)');
            $all.children().prop('checked', false);
        }
        
        for (let i = 0; i < $checkboxes.length - 2; i++) {
            agreeCheck[i] = $($checkboxes[i]).is(':checked');
        }
        if(agreeCheck.every(e => e === true)) {
            $btnModal.removeAttr('disabled');
            return;
        };
        $btnModal.attr('disabled', true);
    });

    // 성별 드롭다운
    $('.join-item-select-dropdown-div').on('click', () => {
        let $click = $('#drop-content');
        if($click.css('display') === 'none'){
            $click.css('display', 'block');
        }else{
            $click.css('display', 'none')
        }
    });

    // 성별 선택시 효과
    function selectGender(e) {
        $('.join-item-select-placeholder').text($(e).text()).css('color', 'black');
        $('#memberGender').val($(e).text());
        $('#drop-content').css('display', 'none');
    }

    // 주소 api
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                document.querySelector("#memberAddress").value = data.address; // 주소 넣기
                document.querySelector("input[name=memberAddressDetail]").focus(); //상세입력 포커싱
            }
        }).open();
    }
    
    // 정규식으로 유효성 검사
    function checkReg(check, e, i, reg) {
        if(reg) {
            check = reg.test($(e).val());
        } else {
            check = $(e).val() != '';
        }
        changeCSS(check, e, i);
    }
    
    // 오류 태그 보이기/숨기기
    function changeCSS(check, e, i) {
        if(!check) {
            $($errors[i]).css('display', 'block');
        } else {
            $($errors[i]).css('display', 'none');
        }
    }