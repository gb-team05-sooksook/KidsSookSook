const $checkboxes = $('.tableCheckbox');
const closeSpan = document.querySelector('#bannerDeleteButton');
const $uploadForm = $('.upload');
const $imgFile = $('input.img-file');
const $thumbnail = $('img.thumbnail');
const $button = $('input.submitButton');
const bannerURL = pageContext + '/bannerUploadAction.admin';
$imgFile.on('change', function (e) {
  var i = $imgFile.index($(this));
  var reader = new FileReader();
  reader.readAsDataURL(e.target.files[0]);
  reader.onload = function (e) {
    let url = e.target.result;
    if (url.includes('image')) {
      $thumbnail.eq(i).attr('src', `${url}`);
    } else {
      alert('이미지 파일만 등록 가능합니다.');
      return;
    }
  };
});

$button.click(function (event){
	event.preventDefault();
	console.log("서브밋 전 L96");
	$form.submit();
})












 /*$uploadForm.on("submit", function (e) {
   e.preventDefault();
   var temp = new FormData(this);
   console.log(temp);
 });*/