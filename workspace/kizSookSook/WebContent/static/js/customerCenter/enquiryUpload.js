/**
 * 
 */

const $checkboxes = $('.tableCheckbox');
const closeSpan = document.querySelector('#bannerDeleteButton');
const $imgFile = $('input.img-file');
const $thumbnail = $('img.thumbnail');
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