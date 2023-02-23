<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>관리자페이지_배너관리</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.png">
        <link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png">

		<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@200;300;400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminPage/bannerManage.css">
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
					<span> 배너관리 </span>
				</div>
			</div>
			<div class="stageLayout">
				<div class="dataTableLayout">
					<div class="dataTable">
						<div class="inputBox">
							<div class="filterButtonLayout">
								<div class="memberIdSearchText">
									<input class="filterButton" type="button" value="배너수정" />
									<input class="filterButton" type="button" value="배너삭제" />
								</div>
								<a class="paddingA"></a>
							</div>
						</div>
						<div class= "bannerLayout">
							<div class="banner">
  								<img src="https://kmong.com/_next/image?url=https%3A%2F%2Fd2v80xjmx68n4w.cloudfront.net%2Fassets%2Fimages%2Fcurated_contents%2Fl5edU_curated_content_item_main_desktop_1020.jpg&w=2880&q=75" alt="mainbanner" style="width:100%">
  								<div>
  									<div class="banner-wrap">
										<input class="tableCheckbox" type="checkbox" name="deleteCheck">
										<span>첫번째배너</span>
									</div>
  								</div>
  								
							</div>
							
							<div class="banner">
  								<img src="https://kmong.com/_next/image?url=https%3A%2F%2Fd2v80xjmx68n4w.cloudfront.net%2Fassets%2Fimages%2Fcurated_contents%2FgP0uM_curated_content_item_main_desktop_1167.png&w=2880&q=75" alt="mainbanner" style="width:100%">
  								<div>
  									<div class="banner-wrap">
										<input class="tableCheckbox" type="checkbox" name="deleteCheck">
										<span>두번째배너</span>
									</div>
  								</div>
  								
							</div>
							
							<div class="banner">
  								<img src="https://kmong.com/_next/image?url=https%3A%2F%2Fd2v80xjmx68n4w.cloudfront.net%2Fassets%2Fimages%2Fcurated_contents%2FnhKVf_curated_content_item_main_desktop_1119.png&w=2880&q=75" style="width:100%">
  								<div>
  									<div class="banner-wrap">
										<input class="tableCheckbox" type="checkbox" name="deleteCheck">
										<span>세번째배너</span>
									</div>
  								</div>
							</div>
							<div class="banner">
  								<img src="https://kmong.com/_next/image?url=https%3A%2F%2Fd2v80xjmx68n4w.cloudfront.net%2Fassets%2Fimages%2Fcurated_contents%2FpuAh7_curated_content_item_main_desktop_719.jpg&w=2880&q=75" style="width:100%">
  								<div>
  									<div class="banner-wrap">
										<input class="tableCheckbox" type="checkbox" name="deleteCheck">
										<span>네번째배너</span>
									</div>
  								</div>
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
    <script src="${pageContext.request.contextPath}/js/adminPage/bannerManage.js"></script>
</html>