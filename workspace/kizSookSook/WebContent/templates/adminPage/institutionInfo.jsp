<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>관리자페이지_회원조회_기관</title>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/resources/img/favicon.png"/>
        <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/favicon.png" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/adminPage/userInfo.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css" />
    </head>
    <body>
        <section class="adminPage">
            <div class="sidebar">
                <a class="logo" href="${pageContext.request.contextPath}/templates/main/main.jsp">
                    <img class="logoImg" src="${pageContext.request.contextPath}/static/resources/img/logo/logo_main_02.png"/>
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
                        <span> 회원관리 </span>
                    </div>
                </div>
                <div class="stageLayout">
                    <div class="dataTableLayout">
                        <div class="dataTable">
                            <div class="inputBox">
                                <div class="filterButtonLayout">
                                    <div class="memberIdSearchText">
                                        <a href="javascript:location.href='memberInfo.jsp'">
                                            <input class="filterButton" type="button" value="개인회원보기"/>
                                        </a>
                                        <input id="userUpdateButton" class="filterButton" type="button" value="회원수정"/>
                                        <input class="filterButton" type="button" value="회원삭제" />
                                    </div>
                                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="회원 아이디 검색"/>
                                </div>
                            </div>
                            <table id="myTable">
                                <tr class="trHeader">
                                    <th style="width: 6%">
                                        <form>
                                            <input
                                                class="tableCheckboxAll"
                                                type="checkbox"
                                                name="deleteCheck"
                                                value=""
                                            />
                                        </form>
                                    </th>
                                    <th style="width: 12%">사용자번호</th>
                                    <th style="width: 12.5%">회원아이디</th>
                                    <th style="width: 12.5%">가입일자</th>
                                    <th style="width: 12.5%">이메일</th>
                                    <th style="width: 12%">주소</th>
                                    <th style="width: 12.5%">사업자등록번호</th>
                                    <th style="width: 6%">기관명</th>
                                </tr>
                                <tr>
                                    <td style="width: 6%">
                                        <form>
                                            <input
                                                class="tableCheckbox"
                                                type="checkbox"
                                                name="deleteCheck"
                                                value=""
                                            />
                                        </form>
                                    </td>
                                    <td>1</td>
                                    <td>hds1234</td>
                                    <td>2023/02/09</td>
                                    <td>이메일</td>
                                    <td>서울특별시</td>
                                    <td>613-81-65278</td>
                                    <td>크몽</td>
                                </tr>
                                <tr>
                                    <td style="width: 6%">
                                        <form>
                                            <input
                                                class="tableCheckbox"
                                                type="checkbox"
                                                name="deleteCheck"
                                                value=""
                                            />
                                        </form>
                                    </td>
                                    <td>2</td>
                                    <td>hds1234</td>
                                    <td>2023/02/09</td>
                                    <td>이메일</td>
                                    <td>서울특별시</td>
                                    <td>613-81-65278</td>
                                    <td>크몽</td>
                                </tr>
                                <tr>
                                    <td style="width: 6%">
                                        <form>
                                            <input
                                                class="tableCheckbox"
                                                type="checkbox"
                                                name="deleteCheck"
                                                value=""
                                            />
                                        </form>
                                    </td>
                                    <td>3</td>
                                    <td>hds1234</td>
                                    <td>2023/02/09</td>
                                    <td>이메일</td>
                                    <td>서울특별시</td>
                                    <td>613-81-65278</td>
                                    <td>크몽</td>
                                </tr>
                                <tr>
                                    <td style="width: 6%">
                                        <form>
                                            <input
                                                class="tableCheckbox"
                                                type="checkbox"
                                                name="deleteCheck"
                                                value=""
                                            />
                                        </form>
                                    </td>
                                    <td>4</td>
                                    <td>hds1234</td>
                                    <td>2023/02/09</td>
                                    <td>이메일</td>
                                    <td>서울특별시</td>
                                    <td>613-81-65278</td>
                                    <td>크몽</td>
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
                <section class="memberInfoModalContainer">
                    <table id="myTable">
                        <div class="xLayout">
                            <svg
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                fill="currentColor"
                                aria-hidden="true"
                                focusable="false"
                                preserveAspectRatio="xMidYMid meet"
                                class="X"
                            >
                                <path
                                    xmlns="http://www.w3.org/2000/svg"
                                    d="M6.34314575,4.92893219 L12.000039,10.585039 L17.6568542,4.92893219 C18.0473785,4.5384079 18.6805435,4.5384079 19.0710678,4.92893219 C19.4615921,5.31945648 19.4615921,5.95262146 19.0710678,6.34314575 L13.415039,12.000039 L19.0710678,17.6568542 C19.4615921,18.0473785 19.4615921,18.6805435 19.0710678,19.0710678 C18.6805435,19.4615921 18.0473785,19.4615921 17.6568542,19.0710678 L12.000039,13.415039 L6.34314575,19.0710678 C5.95262146,19.4615921 5.31945648,19.4615921 4.92893219,19.0710678 C4.5384079,18.6805435 4.5384079,18.0473785 4.92893219,17.6568542 L10.585039,12.000039 L4.92893219,6.34314575 C4.5384079,5.95262146 4.5384079,5.31945648 4.92893219,4.92893219 C5.31945648,4.5384079 5.95262146,4.5384079 6.34314575,4.92893219 Z"
                                ></path>
                            </svg>
                        </div>
                        <tr class="trHeader">
                            <th style="width: 14%">사용자번호</th>
                            <th style="width: 14%">회원아이디</th>
                            <th style="width: 14%">가입일자</th>
                            <th style="width: 14%">이메일</th>
                            <th style="width: 14%">주소</th>
                            <th style="width: 14%">사업자등록번호</th>
                            <th style="width: 14%">기관명</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><input class="modalUpdateText" type="text" name="userId" /></td>
                            <td><input class="modalUpdateText" type="text" name="joinDate" /></td>
                            <td><input class="modalUpdateText" type="text" name="userEmail" /></td>
                            <td>
                                <input class="modalUpdateText" type="text" name="userAddress" />
                            </td>
                            <td><input class="modalUpdateText" type="text" name="userphone" /></td>
                            <td><input class="modalUpdateText" type="text" name="userGender" /></td>
                        </tr>
                    </table>
                </section>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/adminPage/memberInfo.js"></script>
</html>
