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
                                    <div data-index="-4" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true">
                                        <div>
                                            <article class="bestBannerG">
                                                <a href="" class="bestBannerH">
                                                    <div class="bestBannerI">
                                                        <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/Science2-1.jpg" class="bestBannerJ">
                                                    </div>
                                                    <div class="bestBannerK">
                                                        <h3>과학IT의 모든 것</h3>
                                                        <div class="bestBannerL">
                                                            <div class="bestBannerM">4세 이상</div>
                                                            <div class="bestBannerM">Realistic_실재형</div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </article>
                                        </div>
                                    </div>
                                    <div data-index="-4" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true">
                                        <div>
                                            <article class="bestBannerG">
                                                <a href="" class="bestBannerH">
                                                    <div class="bestBannerI">
                                                        <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/cook12-2.jpg" class="bestBannerJ">
                                                    </div>
                                                    <div class="bestBannerK">
                                                        <h3>요리의 모든 것</h3>
                                                        <div class="bestBannerL">
                                                            <div class="bestBannerM">4세 이상</div>
                                                            <div class="bestBannerM">Social_사회형</div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </article>
                                        </div>
                                    </div>
                                    <div data-index="-4" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true">
                                        <div>
                                            <article class="bestBannerG">
                                                <a href="" class="bestBannerH">
                                                    <div class="bestBannerI">
                                                        <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/medical10-1.jpg" class="bestBannerJ">
                                                    </div>
                                                    <div class="bestBannerK">
                                                        <h3>의료의 모든 것</h3>
                                                        <div class="bestBannerL">
                                                            <div class="bestBannerM">6세 이상</div>
                                                            <div class="bestBannerM">Realistic_실재형</div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </article>
                                        </div>
                                    </div>
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
            <a href="" class="topTitleD">더보기 ></a>
        </header>
        <!-- TOP10 목록 -->
        <div class="top-list-container">
        	<a href="javascript:void(0)" class="topListC">
                <div class="topListD">
                    <div class="topListE">
                        <div class="topListF">
                            <div class="topListG">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/history5-1.jpg" class="topListH">
                            </div>
                        </div>
                    </div>
                    <div class="topListI">
                        <button class="topListJ">
                            <span role="img" color="#ffffff" rotate="0" class="topListZ">
                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="topList-svg">
                                    <defs>
                                        <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
                                    </defs>
                                    <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
                                        <path class="like-btn" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="transparent"  fill-rule="nonzero"></path>
                                        <mask id="mask-2" fill="white">
                                            <use xlink:href="#heart-outlined-fill-icon"></use>
                                        </mask>
                                        <use id="Shape" xlink:href="#heart-outlined-fill-icon"></use>
                                    </g>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="topListK">
                    <div class="topListL">
                        <span class="topListM">역사</span>
                    </div>
                    <h3 class="topListN">고고학자가 되어 피라미드 내부의 다양한 코스를 탐험합니다.</h3>
                    <div class="topListO">
                        <div class="topListP">
                            <div class="topListR" id="topListRR">9,000원</div>
                        </div>
                    </div>
                </div>
                <div class="topListQ">
                    <div class="topListT">
                       30
                       개의 평가
                    </div>
                </div>
           	</a>
        	<a href="javascript:void(0)" class="topListC">
                <div class="topListD">
                    <div class="topListE">
                        <div class="topListF">
                            <div class="topListG">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/history5-1.jpg" class="topListH">
                            </div>
                        </div>
                    </div>
                    <div class="topListI">
                        <button class="topListJ">
                            <span role="img" color="#ffffff" rotate="0" class="topListZ">
                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="topList-svg">
                                    <defs>
                                        <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
                                    </defs>
                                    <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
                                        <path class="like-btn" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="transparent"  fill-rule="nonzero"></path>
                                        <mask id="mask-2" fill="white">
                                            <use xlink:href="#heart-outlined-fill-icon"></use>
                                        </mask>
                                        <use id="Shape" xlink:href="#heart-outlined-fill-icon"></use>
                                    </g>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="topListK">
                    <div class="topListL">
                        <span class="topListM">역사</span>
                    </div>
                    <h3 class="topListN">고고학자가 되어 피라미드 내부의 다양한 코스를 탐험합니다.</h3>
                    <div class="topListO">
                        <div class="topListP">
                            <div class="topListR" id="topListRR">9,000원</div>
                        </div>
                    </div>
                </div>
                <div class="topListQ">
                    <div class="topListT">
                       30
                       개의 평가
                    </div>
                </div>
           	</a>
        	<a href="javascript:void(0)" class="topListC">
                <div class="topListD">
                    <div class="topListE">
                        <div class="topListF">
                            <div class="topListG">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/history5-1.jpg" class="topListH">
                            </div>
                        </div>
                    </div>
                    <div class="topListI">
                        <button class="topListJ">
                            <span role="img" color="#ffffff" rotate="0" class="topListZ">
                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="topList-svg">
                                    <defs>
                                        <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
                                    </defs>
                                    <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
                                        <path class="like-btn" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="transparent"  fill-rule="nonzero"></path>
                                        <mask id="mask-2" fill="white">
                                            <use xlink:href="#heart-outlined-fill-icon"></use>
                                        </mask>
                                        <use id="Shape" xlink:href="#heart-outlined-fill-icon"></use>
                                    </g>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="topListK">
                    <div class="topListL">
                        <span class="topListM">역사</span>
                    </div>
                    <h3 class="topListN">고고학자가 되어 피라미드 내부의 다양한 코스를 탐험합니다.</h3>
                    <div class="topListO">
                        <div class="topListP">
                            <div class="topListR" id="topListRR">9,000원</div>
                        </div>
                    </div>
                </div>
                <div class="topListQ">
                    <div class="topListT">
                       30
                       개의 평가
                    </div>
                </div>
           	</a>
        	<a href="javascript:void(0)" class="topListC">
                <div class="topListD">
                    <div class="topListE">
                        <div class="topListF">
                            <div class="topListG">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/history5-1.jpg" class="topListH">
                            </div>
                        </div>
                    </div>
                    <div class="topListI">
                        <button class="topListJ">
                            <span role="img" color="#ffffff" rotate="0" class="topListZ">
                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="topList-svg">
                                    <defs>
                                        <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
                                    </defs>
                                    <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
                                        <path class="like-btn" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="transparent"  fill-rule="nonzero"></path>
                                        <mask id="mask-2" fill="white">
                                            <use xlink:href="#heart-outlined-fill-icon"></use>
                                        </mask>
                                        <use id="Shape" xlink:href="#heart-outlined-fill-icon"></use>
                                    </g>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="topListK">
                    <div class="topListL">
                        <span class="topListM">역사</span>
                    </div>
                    <h3 class="topListN">고고학자가 되어 피라미드 내부의 다양한 코스를 탐험합니다.</h3>
                    <div class="topListO">
                        <div class="topListP">
                            <div class="topListR" id="topListRR">9,000원</div>
                        </div>
                    </div>
                </div>
                <div class="topListQ">
                    <div class="topListT">
                       30
                       개의 평가
                    </div>
                </div>
           	</a>
        	<a href="javascript:void(0)" class="topListC">
                <div class="topListD">
                    <div class="topListE">
                        <div class="topListF">
                            <div class="topListG">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/history5-1.jpg" class="topListH">
                            </div>
                        </div>
                    </div>
                    <div class="topListI">
                        <button class="topListJ">
                            <span role="img" color="#ffffff" rotate="0" class="topListZ">
                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="topList-svg">
                                    <defs>
                                        <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
                                    </defs>
                                    <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
                                        <path class="like-btn" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="transparent"  fill-rule="nonzero"></path>
                                        <mask id="mask-2" fill="white">
                                            <use xlink:href="#heart-outlined-fill-icon"></use>
                                        </mask>
                                        <use id="Shape" xlink:href="#heart-outlined-fill-icon"></use>
                                    </g>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="topListK">
                    <div class="topListL">
                        <span class="topListM">역사</span>
                    </div>
                    <h3 class="topListN">고고학자가 되어 피라미드 내부의 다양한 코스를 탐험합니다.</h3>
                    <div class="topListO">
                        <div class="topListP">
                            <div class="topListR" id="topListRR">9,000원</div>
                        </div>
                    </div>
                </div>
                <div class="topListQ">
                    <div class="topListT">
                       30
                       개의 평가
                    </div>
                </div>
           	</a>
        	<a href="javascript:void(0)" class="topListC">
                <div class="topListD">
                    <div class="topListE">
                        <div class="topListF">
                            <div class="topListG">
                                <img src="${pageContext.request.contextPath}/static/resources/img/fieldTrip/fieldTripMain/history5-1.jpg" class="topListH">
                            </div>
                        </div>
                    </div>
                    <div class="topListI">
                        <button class="topListJ">
                            <span role="img" color="#ffffff" rotate="0" class="topListZ">
                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="topList-svg">
                                    <defs>
                                        <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
                                    </defs>
                                    <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
                                        <path class="like-btn" d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="transparent"  fill-rule="nonzero"></path>
                                        <mask id="mask-2" fill="white">
                                            <use xlink:href="#heart-outlined-fill-icon"></use>
                                        </mask>
                                        <use id="Shape" xlink:href="#heart-outlined-fill-icon"></use>
                                    </g>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="topListK">
                    <div class="topListL">
                        <span class="topListM">역사</span>
                    </div>
                    <h3 class="topListN">고고학자가 되어 피라미드 내부의 다양한 코스를 탐험합니다.</h3>
                    <div class="topListO">
                        <div class="topListP">
                            <div class="topListR" id="topListRR">9,000원</div>
                        </div>
                    </div>
                </div>
                <div class="topListQ">
                    <div class="topListT">
                       30
                       개의 평가
                    </div>
                </div>
           	</a>
        </div>
    </section>
    <%@ include file="/templates/main/footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}";</script>
<script src="${pageContext.request.contextPath}/static/js/fieldTrip/fieldTripMain.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mainpage/dropdown.js"></script>
</html>