/**
 * bannerManage.js
 */

const size = 4;

const $checkboxes = $(".tableCheckbox");

$checkboxes.click(function(){
	$checkboxes.prop("checked", false);
	$(this).prop("checked",true);
});