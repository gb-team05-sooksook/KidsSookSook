<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>관리자페이지_체험학습조회</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link
      rel="shortcut icon"
      href="${pageContext.request.contextPath}/static/resources/img/favicon.png" />
    <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/favicon.png" />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/adminPage/fieldTripFind.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css" />
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
            <span> 체험학습조회 </span>
          </div>
        </div>
        <div class="stageLayout">
          <div class="dataTableLayout">
            <div class="dataTable">
              <div class="inputBox">
                <div class="filterButtonLayout">
                  <div class="memberIdSearchText">
                    <input
                      name="tripDelete"
                      class="filterButton"
                      type="button"
                      value="체험학습삭제" />
                  </div>
                  <form name="searchFieldTrip">
                    <input
                      type="text"
                      id="myInput"
                      name="searchFieldTrip"
                      placeholder="체험학습 제목 검색" />
                  </form>
                </div>
              </div>
              <table class="myTable">
                <tr class="trHeader">
                  <th style="width: 6%">
                    <form>
                      <input class="tableCheckboxAll" type="checkbox" name="deleteCheck" value="" />
                    </form>
                  </th>
                  <th style="width: 9%">체험학습번호</th>
                  <th style="width: 9%">회원아이디</th>
                  <th style="width: 9%">카테고리이름</th>
                  <th style="width: 9%">등록일자</th>
                  <th style="width: 9%">마감일자</th>
                  <th style="width: 9%">진행일자</th>
                  <th style="width: 9%">주소</th>
                  <th style="width: 9%">가격</th>
                  <th style="width: 9%">내용설명</th>
                </tr>
              </table>
              <div class="paginationLayout">
                <div class="pagination">
                  <c:if test="${prev}">
                    <a
                      href="javascript:location.href='${pageContext.request.contextPath}/fieldTrip.admin?page=${startPage - 1}&sort=${sort}'"
                      class="paging paging-move">
                      &laquo;
                    </a>
                  </c:if>
                  <c:forEach var="i" begin="${startPage}" end="${endPage}">
                    <c:choose>
                      <c:when test="${i eq page}">
                        <a
                          href="javascript:void(0)"
                          style="cursor: default"
                          class="paging paging-checked"
                          ><c:out value="${i}"
                        /></a>
                      </c:when>
                      <c:otherwise>
                        <a
                          href="javascript:location.href='${pageContext.request.contextPath}/fieldTrip.admin?page=${i}&sort=${sort}'"
                          class="paging"
                          ><c:out value="${i}"
                        /></a>
                      </c:otherwise>
                    </c:choose>
                  </c:forEach>
                  <c:if test="${next}">
                    <a
                      href="javascript:location.href='${pageContext.request.contextPath}/fieldTrip.admin?page=${endPage + 1}&sort=${sort}'"
                      class="paging paging-move">
                      &raquo;
                    </a>
                  </c:if>
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
    let fieldTrips = `${fieldTrips}`;
    let pageContext = `${pageContext.request.contextPath}`;
  </script>
  <script src="${pageContext.request.contextPath}/static/js/adminPage/state.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/adminPage/app.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/adminPage/fieldTripFind.js"></script>
</html>
