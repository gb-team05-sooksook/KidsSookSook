/**
 * bannerManage.jsp
 *
 * @format
 */

/* 한 페이지당 테이블 갯수 */
const size = 5;

const $checkboxes = $(".tableCheckbox");
const closeSpan = document.querySelector("#bannerDeleteButton");
const $uploadForm = $(".upload");
const $imgFile = $("input.img-file");
const $thumbnail = $("div.thumbnail");
const bannerURL = pageContext + "/bannerUploadAction.admin";

$imgFile.on("change", function (e) {
  var i = $imgFile.index($(this));
  var reader = new FileReader();

  reader.readAsDataURL(e.target.files[0]);
  reader.onload = function (e) {
    let url = e.target.result;
    if (url.includes("image")) {
      $thumbnail.eq(i).css("backgroundImage", `url('${url}')`);
      console.log($imgFile.eq(i));
    } else {
      alert("이미지 파일만 등록 가능합니다.");
      return;
    }
  };
});

// $uploadForm.on("submit", function (e) {
//   e.preventDefault();
//   var temp = new FormData(this);
//   console.log(temp);
// });
