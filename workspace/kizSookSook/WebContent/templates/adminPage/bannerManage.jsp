<!-- @format -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>관리자페이지_배너관리</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/resources/img/favicon.png" />
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/adminPage/bannerManage.css" />
  </head>
  <body>
    <section class="adminPage">
      <div class="sidebar">
        <a class="logo" href="${pageContext.request.contextPath}/static/main/main.jsp">
          <img class="logoImg" src="${pageContext.request.contextPath}/static/resources/img/logo/logo_main_02.png" />
          <span class="logoText">키즈쑥쑥</span>
        </a>
        <a href="javascript:location.href='${pageContext.request.contextPath}/memberInfo.admin'"
          ><i class="bannerText"></i> 회원관리</a
        >
        <a href="javascript:location.href='${pageContext.request.contextPath}/payment.admin'"
          ><i class="bannerText"></i> 결제</a
        >
        <a href="javascript:location.href='${pageContext.request.contextPath}/fieldTrip.admin'"
          ><i class="bannerText"></i> 체험학습조회</a
        >
        <a href="javascript:location.href='${pageContext.request.contextPath}/notice.admin'"
          ><i class="bannerText"></i> 공지사항</a
        >
        <a href="javascript:location.href='${pageContext.request.contextPath}/enquiry.admin'"
          ><i class="bannerText"></i> 문의사항</a
        >
        <a href="javascript:location.href='${pageContext.request.contextPath}/bannerManage.admin'"
          ><i class="bannerText"></i> 배너관리</a
        >
      </div>
      <div class="mainContentContainer">
        <div class="sidebarNameLayout">
          <div class="sidebarNameText">
            <span> 배너관리 </span>
          </div>
        </div>
        <div class="stageLayout">
          <div class="dataTableLayout">
            <div class="dataTable">
              <div class="bannerLayout">
                <div class="banner">
                  <form
                    action="${pageContext.request.contextPath}/bannerUploadAction.admin"
                    class="upload"
                    method="post"
                    enctype="multipart/form-data">
                    <div class="bannerTopWrap">
                      <span>1</span>
                    </div>
                    <!-- 파일 입출력 썸네일 -->
                    <label for="image1">
                      <div class="thumbnail"></div>
                    </label>
                    <input type="file" id="image1" class="img-file" name="image1"/>
                    <input class="upload-submit" type="submit" value="파일 수정" />
                  </form>
                </div>
                <div class="banner">
                  <form
                    action="${pageContext.request.contextPath}/bannerUploadAction.admin"
                    class="upload"
                    method="post"
                    enctype="multipart/form-data">
                    <div class="bannerTopWrap">
                      <span>1</span>
                    </div>
                    <!-- 파일 입출력 썸네일 -->
                    <label for="image2">
                      <div class="thumbnail"></div>
                    </label>
                    <input type="file" id="image2" style="display: none" name="image2"/>
                    <input class="upload-submit" type="submit" value="파일 수정" />
                  </form>
                </div>
                <div class="banner">
                  <form
                    action="${pageContext.request.contextPath}/bannerUploadAction.admin"
                    class="upload"
                    method="post"
                    enctype="multipart/form-data">
                    <div class="bannerTopWrap">
                      <span>1</span>
                    </div>
                    <!-- 파일 입출력 썸네일 -->
                    <label for="image3">
                      <div class="thumbnail"></div>
                    </label>
                    <input type="file" id="image3" style="display: none" name="image3"/>
                    <input class="upload-submit" type="submit" value="파일 수정" />
                  </form>
                </div>
                <div class="banner">
                  <form
                    action="${pageContext.request.contextPath}/bannerUploadAction.admin"
                    class="upload"
                    method="post"
                    enctype="multipart/form-data">
                    <div class="bannerTopWrap">
                      <span>1</span>
                    </div>
                    <!-- 파일 입출력 썸네일 -->
                    <label for="image4">
                      <div class="thumbnail"></div>
                    </label>
                    <input type="file" id="image4" style="display: none" name="image4"/>
                    <input class="upload-submit" type="submit" value="파일 수정" />
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div id="root"></div>
    <div id="layer"></div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script>
    let pageContext = `${pageContext.request.contextPath}`;
  </script>
  <script src="${pageContext.request.contextPath}/static/js/adminPage/app.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/adminPage/bannerManage.js"></script>
</html>
