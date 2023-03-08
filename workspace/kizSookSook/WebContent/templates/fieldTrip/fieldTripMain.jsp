<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>세상 모든 직업을 체험해볼 수 있는 곳, 키즈쑥쑥</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fieldTrip/fieldTripMain.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css"/>
    <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/header.css"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/dropdown.css">  
</head>
<body>
	<%@ include file="/templates/main/header.jsp"%>
    
    <div>
        <!-- 배너 -->
        <section class="banner-section">
            <div class="banner-img-div">
                <div class="banner-inner-div">
                    <h1 class="banner-title">실제 기업이 참여하고 현실에 바탕을 둔 생생한 직업체험</h1>
                    <h2 class="banner-small-title"><b>키즈쑥쑥</b>에 맡기세요!</h2>
                    <div class="banner-btn-outer-div">
                        <div class="banner-btn-inner-div">
                            <a role="link" color="yellow" href="" class="banner-btn-a">
                                <span class="banner-span">체험학습 참여하기</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
        <!-- 카테고리 -->
    <div class="categorymold">
        <section class="categoryList">
            <div class="categoryListAll">
                <ul class="category-field">
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=1&categoryName=science'" class="ByCategoryList">
                            <div class="category-img">
								<img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/Science.png">
                            </div>
                            <span class="categoryName">과학IT</span>
                        </a>
                    </li>
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike'" class="ByCategoryList">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/mike.png">
                            </div>
                            <span class="categoryName">방송</span>
                        </a>
                    </li>
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=3&categoryName=study'" class="ByCategoryList">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/study.png">
                            </div>
                            <span class="categoryName">사회</span>
                        </a>
                    </li>
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=4&categoryName=activity'" class="ByCategoryList">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/Activity.png">
                            </div>
                            <span class="categoryName">엑티비티</span>
                        </a>
                    </li>
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=5&categoryName=history'" class="ByCategoryList">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/history.png">
                            </div>
                            <span class="categoryName">역사</span>
                        </a>
                    </li>
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=6&categoryName=art'" class="ByCategoryList">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/art.png">
                            </div>
                            <span class="categoryName">예술</span>
                        </a>
                    </li>
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=7&categoryName=cook'" class="ByCategoryList">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/cook.png">
                            </div>
                            <span class="categoryName">요리</span>
                        </a>
                    </li>
                    <li class="ByCategory">
                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=8&categoryName=medical'" class="ByCategoryList">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/category/medical.png">
                            </div>
                            <span class="categoryName">의료</span>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <!-- BEST 모음전 -->
    <div class="bestmold">
        <section class="bestVowel">
            <header class="bestVowels">
                <div class="bestVowelVowel">
                    <h3 class="bestVowelVowels">BEST 모음전</h3>
                    <h4 class="bestVowelChild">아이의 재능을 찾아보세요!</h4>
                </div>
            </header>
            <!-- BEST모음전 슬라이드 베너 -->
            <div class="bestBanner">
                <div class="bestBannerA">
                    <div class="bestBannerB">
                        <div class="bestBannerC">
                            <div class="slick-list">
                                <div class="slick-track" style="width: 4680px; opacity: 1;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- 중간 광고 배너 -->
    <div>
    	<section class="middle-benner">
    		<div class="middle-benner-wrapper">
    			<div class="middle-benner-wrapper2">
    				<div class="left-benner">
    					<img src="https://d2v80xjmx68n4w.cloudfront.net/assets/desktop/pages/knowhow/banner-item1.jpg" width="100%">
    				</div>
    				<div class="right-benner">
    					<img src="https://d2v80xjmx68n4w.cloudfront.net/assets/desktop/pages/knowhow/banner-item2.jpg" width="100%">
    				</div>
    			</div>
    		</div>
    	</section>
    </div>
    <!-- 주간 TOP10 -->
    <section class="topTitle">
        <header class="topTitles">
            <div class="topTitleA">
                <h3 class="topTitleB">주간 TOP10</h3>
                <h4 class="topTitleC">지난 주 가장 많이 판매된 체험학습을 만나보세요!</h4>
            </div>
        </header>
        <!-- TOP10 목록 -->
        <div class="top-list-container">
        </div>
    </section>
    <%@ include file="/templates/main/footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}", fieldTripTop10 = `${fieldTripTop10}`, bestCategoryList = `${bestCategoryList}`;
	let userIdSession = "${sessionScope.userId}";
</script>
<script src="${pageContext.request.contextPath}/static/js/fieldTrip/fieldTripMain.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mainpage/dropdown.js"></script>
</html>