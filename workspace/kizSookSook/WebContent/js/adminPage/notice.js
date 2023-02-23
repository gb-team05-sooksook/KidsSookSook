/**
 * notice.jsp
update.jsp
 */
const openRegister = document.querySelector("#noticeRegisterButton");
const openUpdate = document.querySelector("#noticeUpdaterButton");
const close = document.querySelector(".X");
const closeUpdate = document.querySelector(".updateX");
const modalBox = document.querySelector(".modal-bg");
const updateModalBox = document.querySelector(".updateModal-bg");

const size = 4;
const $all = $(".tableCheckboxAll");
const $checkboxes = $(".tableCheckbox");

const $update = $("#noticeUpdaterButton");

openRegister.addEventListener("click" , () => {
	modalBox.classList.add("active");
})

openUpdate.addEventListener("click", () => {
	updateModalBox.classList.add("active");
})

close.addEventListener("click", () => {
	modalBox.classList.remove("active");
})

closeUpdate.addEventListener("click", () => {
	updateModalBox.classList.remove("active");
})

$all.on("click", function(){
	$checkboxes.prop('checked', $(this).is(":checked"));
});

$checkboxes.click(function(){
	$all.prop("checked", $checkboxes.filter(":checked").length == size);
});

$update.on('click', function() {
	var count = 0;
	$checkboxes.each((i, e) => {
		if($($checkboxes[i]).is(':checked')) {
			count++;
			console.log($(e));
		}
		if(count > 1) {
			alert('하나만 하자');
			return false;
		}
	});
});
/*$delete.on('click', function() {
	$checkboxes.each((i, e) => {
		if($($checkboxes[i]).is(':checked')) {
			$checkboxes[i];
		}
	});
})*/

