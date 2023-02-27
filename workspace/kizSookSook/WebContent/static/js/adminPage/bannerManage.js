/**
 * bannerManage.jsp
 */

/* 한 페이지당 테이블 갯수 */
const size = 5;

const $checkboxes = $(".tableCheckbox");
const closeSpan = document.querySelector('#bannerDeleteButton');
const file = document.querySelector('input[type=file]');
const imgDiv = document.querySelectorAll('.image');
const input = document.querySelector('#attach');

/* 배너는 한번에 하나만 수정할 수 있도록 체크박스 중복 불가능하게 만들기*/
$checkboxes.click(function(){
	$checkboxes.prop("checked", false);
	$(this).prop("checked",true);
});

/* 체크된 박스의 index를 담을 변수 */
let index = 0;

/* input file과 배너수정버튼을 label로 묶은 후 
input file은 display none 즉 배너수정버튼을 클릭했을때 */
file.addEventListener('change', function (e) {

	/* 체크된 인덱스 가져와서 index에 담기*/
	$checkboxes.each((i,e) => {
		if($($checkboxes[i]).is(':checked')) {
			index = i;
		}
	});

	/* 파일절대경로얻기 */
	let reader = new FileReader();
	reader.readAsDataURL(e.target.files[0]);

	/* 이미지인지 확인 */
	/* 이미지면 체크된 인덱스의 div.image에 넣기 아니면 no_image 띄어주기 */
	reader.onload = function (e) {
		let result = e.target.result;
		if (result.includes('image')) {
			imgDiv[index].style.backgroundImage = `url('${result}')`;
		} else {
			imgDiv[index].style.backgroundImage = `url('/static/resources/img/no_image.png')`;
		}
	};
});


closeSpan.addEventListener('click', function (e) {

	/* 체크된 인덱스 가져와서 index에 담기*/
	$checkboxes.each((i,e) => {
		if($($checkboxes[i]).is(':checked')) {
			index = i;
		}
	});

	/* 삭제했을 때 이미지 뿐만 아니라 data 없애주기 */
	input.value = "";
	imgDiv[index].style.backgroundImage = `url('/static/resources/img/no_image.png')`;
});

