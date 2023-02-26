/**
 * notice.jsp
 */

/* 공지등록 변수 */
const openRegister = document.querySelector("#noticeRegisterButton");
const close = document.querySelector(".X");
const modalBox = document.querySelector(".modal-bg");
const submit = document.querySelector('.det_submitButton');

/* 공지수정 변수 */
const openUpdate = document.querySelector("#noticeUpdaterButton");
const closeUpdate = document.querySelector(".updateX");
const updateModalBox = document.querySelector(".updateModal-bg");
const updateSubmit = document.querySelector('.det_submitUpdateButton');

/* 한페이지 당 테이블 최대 갯수 */
const size = 5;

/* 체크박스 전체선택과 개별선택 변수*/
const $all = $(".tableCheckboxAll");
const $checkboxes = $(".tableCheckbox");

/* 공지수정 버튼 클릭 변수*/
const $update = $("#noticeUpdaterButton");

/* 공지등록 버튼 클릭시 모달창 */
openRegister.addEventListener("click" , () => {
	modalBox.classList.add("active");
});

close.addEventListener("click", () => {
	modalBox.classList.remove("active");
});

submit.addEventListener('click', () => {
	modalBox.classList.remove('active');
});


/* 공지수정 버튼 클릭시 모달창 */
openUpdate.addEventListener("click", () => {
	updateModalBox.classList.add("active");
});

closeUpdate.addEventListener("click", () => {
	updateModalBox.classList.remove("active");
});

updateSubmit.addEventListener('click', () => {
	updateModalBox.classList.remove("active");
});


/* 체크박스 전체선택과 개별선택 */
$all.on("click", function(){
	$checkboxes.prop('checked', $(this).is(":checked"));
});

$checkboxes.click(function(){
	$all.prop("checked", $checkboxes.filter(":checked").length == size);
});

/* 공지수정시 하나만 선택해야함  */
/* 두개 이상 선택하고 공지수정 버튼 누를 시 alert 띄우고 모달창 없애기*/
$update.on('click', function() {
	var count = 0;
	$checkboxes.each((i, e) => {
		if($($checkboxes[i]).is(':checked')) {
			count++;
			console.log($(e));
		}
		if(count > 1) {
			alert('하나만 선택해 주세요.');
			updateModalBox.classList.remove("active");
			return false;
		}
	});
});

