/**
 * memberInfo.jsp
 */

const size = 4;
const $all = $(".tableCheckboxAll");
const $checkboxes = $(".tableCheckbox");

$all.on("click", function(){
	$checkboxes.prop('checked', $(this).is(":checked"));
});

$checkboxes.click(function(){
	$all.prop("checked", $checkboxes.filter(":checked").length == size);
});


