/**
 * noticeRegister.jsp
 */

const open = document.querySelector("#noticeRegisterButton");
const close = document.querySelector(".X");
const modalBox = document.querySelector(".modal-bg");
const size = 4;
const $all = $(".tableCheckboxAll");
const $checkboxes = $(".tableCheckbox");


open.addEventListener("click" , () => {
	modalBox.classList.add("active");
})

close.addEventListener("click", () => {
	modalBox.classList.remove("active");
})

$all.on("click", function(){
	$checkboxes.prop('checked', $(this).is(":checked"));
});

$checkboxes.click(function(){
	$all.prop("checked", $checkboxes.filter(":checked").length == size);
});