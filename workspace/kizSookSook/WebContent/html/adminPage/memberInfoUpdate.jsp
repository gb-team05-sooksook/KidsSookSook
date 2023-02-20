<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>관리자페이지</title>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Noto+Sans+KR:wght@300;500&display=swap"
            rel="stylesheet"
        />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminPage/header.css">
    </head>
    <body>
        <section class="adminPage">
            <div class="sidebar">
                <a class="logo" href="https://www.naver.com">
                    <img
                        class="logoImg"
                        src="/kizSookSook/resources/img/example_favicon.png"
                    />
                    <span class="logoText">키즈쑥쑥</span>
                </a>
                <a href="#user"><i class="bannerText"></i> 회원정보수정</a>
                <a href="#payment"><i class="bannerText"></i> 결제</a>
                <a href="#fieldTrip"><i class="bannerText"></i> 체험학습조회</a>
                <a href="#notice"><i class="bannerText"></i> 공지사항</a>
                <a href="#enquiry"><i class="bannerText"></i> 문의사항</a>
                <a href="#banner"><i class="bannerText"></i> 배너관리</a>
            </div>
		<div class="mainContentContainer">
			<div class="sidebarNameLayout">
				<div class="sidebarNameText">
					<span> 회원정보수정 </span>
				</div>
			</div>
			<div class="stageLayout">
				<div class="dataTableLayout">
					<div class="dataTable">
						<div class="inputBox">
							<div class="filterButtonLayout">
								<input class="filterButton" type="button" value="개인회원보기" /> <input
									class="filterButton" type="button" value="기관회원보기" /> <input
									type="text" id="myInput" onkeyup="myFunction()"
									placeholder="회원 아이디 검색" />
							</div>
						</div>
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
								<td>남</td>
								<td>
									<button>
										<span>회원수정</span>
									</button>
									<button>
										<span>회원삭제</span>
									</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>hds1234</td>
								<td>2023/02/09</td>
								<td>이메일</td>
								<td>서울특별시</td>
								<td>010-0312-1234</td>
								<td>남</td>
								<td>...</td>
							</tr>
							<tr>
								<td>3</td>
								<td>hds1234</td>
								<td>2023/02/09</td>
								<td>이메일</td>
								<td>서울특별시</td>
								<td>010-0312-1234</td>
								<td>남</td>
								<td>...</td>
							</tr>
							<tr>
								<td>4</td>
								<td>hds1234</td>
								<td>2023/02/09</td>
								<td>이메일</td>
								<td>서울특별시</td>
								<td>010-0312-1234</td>
								<td>남</td>
								<td>...</td>
							</tr>
						</table>
						<div class="paginationLayout">
							<div class="pagination">
								<a href="#">1</a> <a class="active" href="#">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a
									href="#">&raquo;</a>
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
</html>