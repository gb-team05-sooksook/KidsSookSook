/**
 * 
 */
const $input = $('.join-item-input');
const $error = $('.error-text');
const nameRegex = /^[가-힣|a-z|A-Z|]+$/;
const specialCharacterRegex = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gim;
const phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
const idRegex = /^(?!(?:[0-9]+)$)([a-zA-Z]|[0-9a-zA-Z]){4,}$/;
const passwordNumberRegex =/[0-9]/g;
const passwordEnglishRegex = /[a-z]/ig;
const emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
const passwordSpecialCharacterRegex = /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi;
const nickNameRegex = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/;
let errorBlurMessages = ["아이디를 입력하세요", "비밀번호를 입력하세요", "비밀번호 한번 더 입력하세요", "이름을 입력하세요.", "닉네임을 입력하세요.", "이메일를 입력하세요.", "휴대폰번호를 입력하세요", "주소를 입력해 주세요", "최소 한가지를 선택해주세요"];
let infoRegexMessages = ["영문 혹은 한글로 2자~20자로 입력해주세요.", "공백 제외 영어 및 숫자, 특수문자 모두 포함하여 10~20자로 입력해주세요.","공백 제외 영어 및 숫자, 특수문자 모두 포함하여 10~20자로 입력해주세요.", "이름을 확인해주세요", "닉네임을 확인해 주세요", "이메일 주소를 확인해주세요.", "휴대폰 번호를 확인하세요.", "주소를 확인해주세요"];
const emailRegex =  /[`~!@#$%^&*|\\\'\";:\/?]/ + /[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

let errorCheck;
let errorCheckAll = [false, false, false, false, false, false, false, false, false];
console.log($input);
console.log($error);

$input.eq(6).on("focus", function(){
	console.log($(this));
	$(this).val($(this).val().replaceAll("-",""));
});

$input.on("blur", function(){

		
	let i = $input.index($(this));
	let value = $(this).val();
	
	$(this).next().hide();
    $(this).next().fadeIn(500);

	if(!value){
		$error.eq(i).text(errorBlurMessages[i]);
		errorCheck = false;
		errorCheckAll[i] = errorCheck;
		return;
	}
	switch(i){
		case 0:
			errorCheck = value.length > 3 && value.length < 21 && idRegex.test(value) && !specialCharacterRegex.test(value);
			break; 
		case 1:
			let numberCheck = value.search(passwordNumberRegex);
            let englishCheck = value.search(passwordEnglishRegex);
            let specialCharacterCheck = value.search(passwordSpecialCharacterRegex);
			
			var condition1 = (numberCheck >= 0 && englishCheck >= 0) && (englishCheck >= 0 && specialCharacterCheck >= 0) && (specialCharacterCheck >= 0 && numberCheck >= 0)
            var condition2 = value.length > 9 && value.length < 21;
            var condition3 = value.search(/\s/) < 0;
			
			errorCheck = condition1 && condition2 && condition3;
			break;
		case 2:
			errorCheck = $Input.eq(i-1).val() == value;
			break;
		case 3: case 4:
			errorCheck = value.length > 1 && value.length < 21 && nameRegex.test(value) && !specialCharacterRegex.test(value);
			break;
		case 5: 
			break;
		case 6:
			errorCheck = phoneRegex.text(value);
			if(errorCheck){
				console.log("들왔나1");
				$(this).val(value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`));
			}
			break;
		case 7:
			errorCheck = emailRegex.text(value);
			break;
		case 8:
			/*성별*/
			break;
	}
	errorCheckAll[i] = errorCheck;
	
	if(!errorCheck){
		$error.eq(i).text(infoRegexMessages[i]);
	}
	
	if(i != 0){
		$errorCheck.eq(i).text("");
	}else {
			$.ajax({
			url: contextPath + "/checkIdAction.member",
			data: {data: value},
			success: function(result){
				let message;
				result = JSON.parse(result);
				if(result.check){
					message = "중복되었습니다.";
					$error.eq(i).css('color', 'red')
				}else{
					message = "사용가능합니다.";
					$error.eq(i).css('color', '#2bb673')
				}
				$error.eq(i).text(message);
				joinCheckAll[i] = !result.check;

			}
		});
	}
	
});

// 유효성 검사
  /*  $btnModal.click(function() {
		$("input[name='userPassword']").val(btoa($("input[name='userPassword']").val()));
	    $("input[name='passwordConfirm']").val(btoa($("input[name='passwordConfirm']").val()));
        $("input[name='userAddress']").val($("#memberAddress").val() + " " +$("#memberAddressDetail").val());
		joinForm.submit();
}*/












