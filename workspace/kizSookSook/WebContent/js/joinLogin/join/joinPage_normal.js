/**
 * 
 */

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
                // 이름
                check = $(e).val() == '';
                if(check) {
                    $($errors[i]).css('display', 'block');
                } else {
                    $($errors[i]).css('display', 'none');
                }
                break;
			case 4:
                // 닉네임
                check = $(e).val() == '';
                if(check) {
                    $($errors[i]).css('display', 'block');
                } else {
                    $($errors[i]).css('display', 'none');
                }
                break;
            case 5:
                // 이메일
                reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
                check = reg.test($(e).val());
                if(!check) {
                    $($errors[i]).css('display', 'block');
                } else {
                    $($errors[i]).css('display', 'none');
                }
                break;
            case 6:
                // 폰번호
                reg = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;
                check = reg.test($(e).val());
                if(!check) {
                    $($errors[i]).css('display', 'block');
                } else {
                    $($errors[i]).css('display', 'none');
                }
                break;
            case 7:
                // 주소
                check = $(e).val() == '';
                if(check) {
                    $($errors[i]).css('display', 'block');
                } else {
                    $($errors[i]).css('display', 'none');
                }
                break;
            case 8:
                // 상세주소
                check = $(e).val() == '' || $($inputs[i - 1]).val() == '';
                if(!check) {
                    $($errors[i - 1]).css('display', 'none');
                } else {
                    $($errors[i - 1]).css('display', 'block');
                }
                break;
            case 9:
                // 성별, 사업자등록번호
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
        for (let i = 0; i < $inputs.length; i++) {
            if($($errors[i]).css('display') == 'block') {
                return;
            }
        }
        $joinForm.submit();
    });