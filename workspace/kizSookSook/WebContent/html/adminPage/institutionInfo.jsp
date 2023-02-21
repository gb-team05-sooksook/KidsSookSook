<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>관리자페이지</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@200;300;400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminPage/userInfo.css">
    </head>
    <body>
        <section class="adminPage">
            <div class="sidebar">
                <a class="logo" href="https://www.naver.com">
                    <img
                        class="logoImg"
                        src="/kizSookSook/resources/img/icon.png"/>
                    <span class="logoText">키즈쑥쑥</span>
                </a>
                <a><i class="bannerText"></i> 회원관리</a>
                <a><i class="bannerText"></i> 결제</a>
                <a><i class="bannerText"></i> 체험학습조회</a>
                <a><i class="bannerText"></i> 공지사항</a>
                <a><i class="bannerText"></i> 문의사항</a>
                <a><i class="bannerText"></i> 배너관리</a>
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
									<input class="filterButton" type="button" value="개인회원보기" />
									<input class="filterButton" type="button" value="회원수정" />
									<input class="filterButton" type="button" value="회원삭제" />
								</div>
									<input type="text" id="myInput" onkeyup="myFunction()" placeholder="회원 아이디 검색" />
							</div>
						</div>
						<table id="myTable">
							<tr class="trHeader">
								<th style="width: 6%">
									<form>
										<input class="tableCheckboxAll" type="checkbox" name="deleteCheck" value="">
									</form>
								</th>
								<th style="width: 6%">사용자번호</th>
								<th style="width: 12.5%">회원아이디</th>
								<th style="width: 12.5%">가입일자</th>
								<th style="width: 12.5%">이메일</th>
								<th style="width: 18%">주소</th>
								<th style="width: 12.5%">사업자등록번호</th>
								<th style="width: 6%">기관명</th>
								
							</tr>
							<tr>
								<td style="width: 6%">
									<form>
										<input class="tableCheckbox" type="checkbox" name="deleteCheck" value="">
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
										<input class="tableCheckbox" type="checkbox" name="deleteCheck" value="">
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
										<input class="tableCheckbox" type="checkbox" name="deleteCheck" value="">
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
										<input class="tableCheckbox" type="checkbox" name="deleteCheck" value="">
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

        <!-- 나중에 모달창용 -->
        <div style="display: none">
            <table id="myTable">
                <tr class="trHeader">
                    <th style="width: 12.5%">사용자번호</th>
                    <th style="width: 12.5%">회원아이디</th>
                    <th style="width: 12.5%">가입일자</th>
                    <th style="width: 12.5%">이메일</th>
                    <th style="width: 12.5%">주소</th>
                    <th style="width: 12.5%">핸드폰번호</th>
                    <th style="width: 12.5%">성별</th>
                    <th style="width: 12.5%">계정관리</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>hds1234</td>
                    <td>2023/02/09</td>
                    <td>이메일</td>
                    <td>서울특별시</td>
                    <td>010-0312-1234</td>
                    <td>여</td>
                    <td>...</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>hds1234</td>
                    <td>2023/02/09</td>
                    <td>이메일</td>
                    <td>서울특별시</td>
                    <td>010-0312-1234</td>
                    <td>여</td>
                    <td>...</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>hds1234</td>
                    <td>2023/02/09</td>
                    <td>이메일</td>
                    <td>서울특별시</td>
                    <td>010-0312-1234</td>
                    <td>여</td>
                    <td>...</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>hds1234</td>
                    <td>2023/02/09</td>
                    <td>이메일</td>
                    <td>서울특별시</td>
                    <td>010-0312-1234</td>
                    <td>여</td>
                    <td>...</td>
                </tr>
            </table>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/adminPage/memberInfo.js"></script>
</html>