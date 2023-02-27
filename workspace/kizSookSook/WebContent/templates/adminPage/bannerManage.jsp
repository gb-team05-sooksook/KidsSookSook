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

		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/adminPage/bannerManage.css">
    </head>
    <body>
        <section class="adminPage">
            <div class="sidebar">
                <a class="logo" href="${pageContext.request.contextPath}/templates/main/main.jsp">
                    <img
                        class="logoImg"
                        src="${pageContext.request.contextPath}/resources/img/logo/logo_main_02.png"/>
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
					<span> 배너관리 </span>
				</div>
			</div>
			<div class="stageLayout">
				<div class="dataTableLayout">
					<div class="dataTable">
						<div class="inputBox">
							<div class="filterButtonLayout">
								<div class="memberIdSearchText">
                                    <label for="attach" class="filterButton">
                                        배너수정
                                        <input type="file" id="attach">
                                    </label>
									<input id="bannerDeleteButton" class="filterButton" type="button" value="배너삭제" />
								</div>
								<a class="paddingA"></a>
							</div>
						</div>
						<div class= "bannerLayout">
							<div class="banner">
								<div class="bannerTopWrap">
									<span>1</span>
								</div>
                                <!-- 파일 입출력 썸네일 -->
                                <div class="image"></div>
  								<div>
  									<div class="banner-wrap">
                                        <input class="tableCheckbox" type="checkbox" name="deleteCheck">
									</div>
  								</div>
  								
							</div>
							
							<div class="banner">
								<div class="bannerTopWrap">
									<span>2</span>
								</div>
                                <!-- 파일 입출력 썸네일 -->
                                <div class="image"></div>
  								<div>
  									<div class="banner-wrap">
										<input class="tableCheckbox" type="checkbox" name="deleteCheck">
									</div>
  								</div>
  								
							</div>
							
							<div class="banner">
								<div class="bannerTopWrap">
									<span>3</span>
								</div>
                                <!-- 파일 입출력 썸네일 -->
                                <div class="image"></div>
  								<div>
  									<div class="banner-wrap">
										<input class="tableCheckbox" type="checkbox" name="deleteCheck">
									</div>
  								</div>
							</div>
							<div class="banner">
								<div class="bannerTopWrap">
									<span>4</span>
								</div>
                                <!-- 파일 입출력 썸네일 -->
                                <div class="image"></div>
  								<div>
  									<div class="banner-wrap">
										<input class="tableCheckbox" type="checkbox" name="deleteCheck">
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
    <script src="${pageContext.request.contextPath}/static/js/adminPage/bannerManage.js"></script>
</html>