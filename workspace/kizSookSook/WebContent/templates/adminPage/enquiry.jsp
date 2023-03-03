<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>관리자페이지_문의사항</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      rel="shortcut icon"
      href="${pageContext.request.contextPath}/static/resources/img/favicon.png" />
    <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/favicon.png" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css" />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/adminPage/enquiry.css" />
  </head>
  <body>
    <section class="adminPage">
      <div class="sidebar">
        <a class="logo" href="${pageContext.request.contextPath}/templates/main/main.jsp">
          <img
            class="logoImg"
            src="${pageContext.request.contextPath}/static/resources/img/logo/logo_main_02.png" />
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
            <span> 문의사항 </span>
          </div>
        </div>
        <div class="stageLayout">
          <div class="dataTableLayout">
            <div class="dataTable">
              <div class="inputBox">
                <div class="filterButtonLayout">
                  <div class="memberIdSearchText">
                    <a href="javascript:location.href='enquiry.jsp'">
                      <input class="filterButton" type="button" value="전체보기" />
                    </a>
                    <input class="filterButton" type="button" value="대기문의보기" />
                    <input class="filterButton" type="button" value="답변하기" />
                  </div>
                  <input type="text" id="myInput" placeholder="회원 아이디 검색" />
                </div>
              </div>
              <table id="myTable">
                <tr class="trHeader">
                  <th style="width: 6%">
                    <form>
                      <input class="tableCheckboxAll" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </th>
                  <th style="width: 10%">문의번호</th>
                  <th style="width: 12.5%">회원아이디</th>
                  <th style="width: 12.5%">수신이메일</th>
                  <th style="width: 12.5%">문의제목</th>
                  <th style="width: 18%">문의내용</th>
                  <th style="width: 12.5%">문의날짜</th>
                  <th style="width: 12.5%">답변완료여부</th>
                </tr>
                <tr class="trData">
                  <td style="width: 6%">
                    <form>
                      <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </td>
                  <td>1</td>
                  <td>kjy1234</td>
                  <td>kjy1234@google.com</td>
                  <td>가운데정렬이 안먹어요</td>
                  <td>div div div 너무 많아서 못찾겠어요 어떻게하나요?</td>
                  <td>2023/02/09</td>
                  <td class="trDataOK">답변완료</td>
                </tr>
                <tr class="trData">
                  <td style="width: 6%">
                    <form>
                      <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </td>
                  <td>2</td>
                  <td>kjy1234</td>
                  <td>kjy1234@google.com</td>
                  <td>last-child 함수 이상해요</td>
                  <td>자꾸 안먹어요</td>
                  <td>2023/02/09</td>
                  <td class="trDataNO">답변대기</td>
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
    <!-- 모달 -->
    <div>
      <div class="modal-bg">
        <section class="container">
          <form action="">
            <div class="title-wrapper">
              <div class="titleAndX">
                <h2 class="title">문의사항 답변</h2>
                <svg
                  width="24"
                  height="24"
                  viewBox="0 0 24 24"
                  fill="currentColor"
                  aria-hidden="true"
                  focusable="false"
                  preserveAspectRatio="xMidYMid meet"
                  class="X">
                  <path
                    xmlns="http://www.w3.org/2000/svg"
                    d="M6.34314575,4.92893219 L12.000039,10.585039 L17.6568542,4.92893219 C18.0473785,4.5384079 18.6805435,4.5384079 19.0710678,4.92893219 C19.4615921,5.31945648 19.4615921,5.95262146 19.0710678,6.34314575 L13.415039,12.000039 L19.0710678,17.6568542 C19.4615921,18.0473785 19.4615921,18.6805435 19.0710678,19.0710678 C18.6805435,19.4615921 18.0473785,19.4615921 17.6568542,19.0710678 L12.000039,13.415039 L6.34314575,19.0710678 C5.95262146,19.4615921 5.31945648,19.4615921 4.92893219,19.0710678 C4.5384079,18.6805435 4.5384079,18.0473785 4.92893219,17.6568542 L10.585039,12.000039 L4.92893219,6.34314575 C4.5384079,5.95262146 4.5384079,5.31945648 4.92893219,4.92893219 C5.31945648,4.5384079 5.95262146,4.5384079 6.34314575,4.92893219 Z"></path>
                </svg>
              </div>
              <div class="details">
                <div class="det_title-wrapper">
                  <div class="det_title">
                    <span>제목</span>
                    <input type="text" name="title" />
                  </div>
                  <div class="det_title">
                    <span>아이디</span>
                    <input type="text" name="title" />
                  </div>
                </div>
                <div class="det_submit">
                  <input class="det_submitButton" type="button" value="답변등록하기" />
                </div>
              </div>
            </div>
            <div class="contentQuestion"></div>
            <div class="contentAnswer">
              <textarea name="content" id="contentA" cols="20" rows="10"></textarea>
            </div>
          </form>
        </section>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/adminPage/enquiry.js"></script>
</html>
