/**
 * 
 */

    // 유효성 검사
    $btnModal.click(function(event) {
        event.preventDefault();
        var reg;
        var check;
        const regAr = [
            /^[a-z]+[a-z0-9]{5,19}$/g,
            /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/,
            /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/,
            '',
            '',
            /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i,
            /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/,
            '',
            ''
        ];
        $inputs.each((i, e) => {
            switch (i) {
            case 0: case 1: case 3: case 4: case 5: case 6: case 7:
                // 아이디 비밀번호 이름 닉네임 이메일 폰번호 주소
                reg = regAr[i];
                checkReg(check, e, i, reg);
                break;
            case 2:
                // 비번확인
                reg = regAr[i];
                check = reg.test($(e).val());
                check = ($($inputs[i]).val() == $($inputs[i - 1]).val()) && check;
                changeCSS(check && $($inputs[i - 1]).val() != '', e, i);
                break;
            case 8:
                // 상세주소
                check = $(e).val() == '' || $($inputs[i - 1]).val() == '';
                changeCSS(!check, e, i - 1);
                break;
            case 9:
                // 성별
                checkReg(check, e, i - 1);
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
        joinForm.submit();
    });