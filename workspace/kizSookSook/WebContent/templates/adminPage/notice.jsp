<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>관리자페이지_공지사항</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" />
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminPage/notice.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font/font.css" />
  </head>
  <body>
    <section class="adminPage">
      <div class="sidebar">
        <a class="logo" href="${pageContext.request.contextPath}/html/main/main.jsp">
          <img class="logoImg" src="${pageContext.request.contextPath}/resources/img/logo/logo_main_02.png"/>
          <span class="logoText">키즈쑥쑥</span>
        </a>
        <a href="javascript:location.href='memberInfo.jsp'"><i class="bannerText"></i> 회원관리</a>
        <a href="javascript:location.href='payment.jsp'"><i class="bannerText"></i> 결제</a>
        <a href="javascript:location.href='fieldTripFind.jsp'"><i class="bannerText"></i> 체험학습조회</a>
        <a href="javascript:location.href='notice.jsp'"><i class="bannerText"></i> 공지사항</a>
        <a href="javascript:location.href='enquiry.jsp'"><i class="bannerText"></i> 문의사항</a>
        <a href="javascript:location.href='bannerManage.jsp'"><i class="bannerText"></i> 배너관리</a>
      </div>
      <div class="mainContentContainer">
        <div class="sidebarNameLayout">
          <div class="sidebarNameText">
            <span> 공지사항 </span>
          </div>
        </div>
        <div class="stageLayout">
          <div class="dataTableLayout">
            <div class="dataTable">
              <div class="inputBox">
                <div class="filterButtonLayout">
                  <div class="memberIdSearchText">
                    <input
                      id="noticeRegisterButton"
                      class="filterButton"
                      type="button"
                      value="공지등록"
                    />
                    <input id="noticeUpdaterButton" class="filterButton" type="button" value="공지수정" />
                    <input id="noticeDeleteButton" class="filterButton" type="button" value="공지삭제" />
                  </div>
                  <input
                    type="text"
                    id="myInput"
                    onkeyup="myFunction()"
                    placeholder="회원 아이디 검색"
                  />
                </div>
              </div>
              <table id="myTable">
                <tr class="trHeader">
                  <th style="width: 6%">
                    <form>
                      <input class="tableCheckboxAll" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </th>
                  <th class="thStyle">공지번호</th>
                  <th class="thStyle">공지제목</th>
                  <th class="thStyle">공지내용</th>
                  <th class="thStyle">공지날짜</th>
                  <th class="thStyle">수정날짜</th>
                </tr>
                <tr>
                  <td class="tdStyle">
                    <form>
                      <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </td>
                  <td>1</td>
                  <td>첫 회원가입시 이벤트</td>
                  <td>첫 회원가입을 하시면 체험학습 하나 무료권을 드립니다.</td>
                  <td>2023/02/09</td>
                  <td>2023/02/15</td>
                </tr>
                <tr>
                  <td class="tdStyle">
                    <form>
                      <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </td>
                  <td>2</td>
                  <td>첫 회원가입시 이벤트</td>
                  <td>첫 회원가입을 하시면 체험학습 하나 무료권을 드립니다.</td>
                  <td>2023/02/09</td>
                  <td>2023/02/15</td>
                </tr>
                <tr>
                  <td class="tdStyle">
                    <form>
                      <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </td>
                  <td>3</td>
                  <td>첫 회원가입시 이벤트</td>
                  <td>첫 회원가입을 하시면 체험학습 하나 무료권을 드립니다.</td>
                  <td>2023/02/09</td>
                  <td>2023/02/15</td>
                </tr>
                <tr>
                  <td class="tdStyle">
                    <form>
                      <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </td>
                  <td>4</td>
                  <td>첫 회원가입시 이벤트</td>
                  <td>첫 회원가입을 하시면 체험학습 하나 무료권을 드립니다.</td>
                  <td>2023/02/09</td>
                  <td>2023/02/15</td>
                </tr>
                <tr>
                  <td class="tdStyle">
                    <form>
                      <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </td>
                  <td>4</td>
                  <td>첫 회원가입시 이벤트</td>
                  <td>첫 회원가입을 하시면 체험학습 하나 무료권을 드립니다.</td>
                  <td>2023/02/09</td>
                  <td>2023/02/15</td>
                </tr>
              </table>
              <div class="paginationLayout">
                <div class="pagination">
                  <a href="#">&laquo;</a>
                  <a class="active" href="#">1</a>
                  <a href="#">2</a>
                  <a href="#">3</a>
                  <a href="#">4</a>
                  <a href="#">5</a>
                  <a href="#">6</a>
                  <a href="#">&raquo;</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div id="root"></div>
    <div id="layer"></div>

    <!-- 나중에 모달창용 -->
    <div>
      <div class="modal-bg">
        <section class="container">
          <form action="">
            <div class="title-wrapper">
              <div class="titleAndX">
                <h2 class="title">공지사항 작성</h2>
                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="X"><path xmlns="http://www.w3.org/2000/svg" d="M6.34314575,4.92893219 L12.000039,10.585039 L17.6568542,4.92893219 C18.0473785,4.5384079 18.6805435,4.5384079 19.0710678,4.92893219 C19.4615921,5.31945648 19.4615921,5.95262146 19.0710678,6.34314575 L13.415039,12.000039 L19.0710678,17.6568542 C19.4615921,18.0473785 19.4615921,18.6805435 19.0710678,19.0710678 C18.6805435,19.4615921 18.0473785,19.4615921 17.6568542,19.0710678 L12.000039,13.415039 L6.34314575,19.0710678 C5.95262146,19.4615921 5.31945648,19.4615921 4.92893219,19.0710678 C4.5384079,18.6805435 4.5384079,18.0473785 4.92893219,17.6568542 L10.585039,12.000039 L4.92893219,6.34314575 C4.5384079,5.95262146 4.5384079,5.31945648 4.92893219,4.92893219 C5.31945648,4.5384079 5.95262146,4.5384079 6.34314575,4.92893219 Z"></path></svg>
              </div>
              <div class="details">
                <div class="det_title-wrapper">
                  <div class="det_title">
                    <span>제목 작성</span>
                    <input type="text" name="title" />
                  </div>
                  <div class="det_title">
                    <span>날짜 선택</span>
                    <input type="date" name="writtenDate" />
                  </div>
                </div>
                <div class="det_submit">
                  <input class="det_submitButton" type="button" value="공지사항 등록" />
                </div>
              </div>
            </div>
            <div class="content">
              <textarea name="content" id="content" cols="40" rows="20"></textarea>
            </div>
          </form>
        </section>
      </div>
    </div>

    <div>
      <div class="updateModal-bg">
        <section class="container">
          <form action="">
            <div class="title-wrapper">
              <div class="titleAndX">
                <h2 class="title">공지사항 수정</h2>
                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="updateX"><path xmlns="http://www.w3.org/2000/svg" d="M6.34314575,4.92893219 L12.000039,10.585039 L17.6568542,4.92893219 C18.0473785,4.5384079 18.6805435,4.5384079 19.0710678,4.92893219 C19.4615921,5.31945648 19.4615921,5.95262146 19.0710678,6.34314575 L13.415039,12.000039 L19.0710678,17.6568542 C19.4615921,18.0473785 19.4615921,18.6805435 19.0710678,19.0710678 C18.6805435,19.4615921 18.0473785,19.4615921 17.6568542,19.0710678 L12.000039,13.415039 L6.34314575,19.0710678 C5.95262146,19.4615921 5.31945648,19.4615921 4.92893219,19.0710678 C4.5384079,18.6805435 4.5384079,18.0473785 4.92893219,17.6568542 L10.585039,12.000039 L4.92893219,6.34314575 C4.5384079,5.95262146 4.5384079,5.31945648 4.92893219,4.92893219 C5.31945648,4.5384079 5.95262146,4.5384079 6.34314575,4.92893219 Z"></path></svg>
              </div>
              <div class="details">
                <div class="det_title-wrapper">
                  <div class="det_title">
                    <span>제목 작성</span>
                    <input type="text" name="title" />
                  </div>
                  <div class="det_title">
                    <span>날짜 선택</span>
                    <input type="date" name="writtenDate" />
                  </div>
                </div>
                <div class="det_submit">
                  <input class="det_submitUpdateButton" type="button" value="공지사항 수정" />
                </div>
              </div>
            </div>
            <div class="content">
              <textarea name="content" id="content" cols="40" rows="20"></textarea>
            </div>
          </form>
        </section>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/adminPage/notice.js"></script>
</html>
