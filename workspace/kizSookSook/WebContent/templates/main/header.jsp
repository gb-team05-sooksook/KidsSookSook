<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/dropdown.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">

</head>
<body>
	<c:out value="${sessionScope.userId}"/>
	<div id="wrap">
	
	<c:if test="${sessionScope.userId != null}">
	<!--header -->
		<header class="wrap-h">
			<section class="wrap-s">
				<a class="logo" href="${pageContext.request.contextPath}/main.main">
                    <!-- 크몽 logo 이미지 -->
				<img src="${pageContext.request.contextPath}/static/resources/img/kids-logo.png">
				</a>
				<div></div>
				<div style="flex-grow: 1;"></div>
				<form class="search">
					<div class="search-d">
						<input type="text" placeholder="검색어를 입력하세요" class="search-input" maxlength="30">
                                <!-- 검색 이미지 -->
                              <div class="search-svg">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
									<path xmlns="http://www.w3.org/2000/svg" d="M11.2307008,3.5 C15.5002489,3.5 18.9614015,6.96828437 18.9614015,11.24663 C18.9614015,13.0978372 18.3133954,14.7973826 17.2322825,16.1299241 L20.2742127,19.178378 
									C20.5762688,19.4810023 20.5764739,19.9714482 20.2746708,20.2738195 C19.9728678,20.5761908 19.4833433,20.5759857 19.1812873,20.2733614 L19.1812873,20.2733614 L16.1426973,17.2288066 C14.8071694,18.3312107 
									13.0960911,18.9932599 11.2307008,18.9932599 C6.96115262,18.9932599 3.5,15.5249756 3.5,11.24663 C3.5,6.96828437 6.96115262,3.5 11.2307008,3.5 Z M11.2307008,5.04932599 C7.81506225,5.04932599 5.04614015,7.82395349 5.04614015,
									11.24663 C5.04614015,14.6693064 7.81506225,17.4439339 11.2307008,17.4439339 C14.6463393,17.4439339 17.4152614,14.6693064 17.4152614,11.24663 C17.4152614,7.82395349 14.6463393,5.04932599 11.2307008,5.04932599 Z"></path>
								</svg>
							</div>
					</div>
				</form>
				<div class="wrap-btn">
					<a color="default" class="btn-1" href="${pageContext.request.contextPath}/customer-main.notice">
					    <span>고객센터</span>
					</a>
					<a color="default" class="btn-2" href="${pageContext.request.contextPath}/mypage.mypage">
					    <span>마이크몽</span>
					</a>
                    <!-- 마이페이지 이동 -->
                    <div>
                        <a class="mypage" href="${pageContext.request.contextPath}/mypage.mypage">
                            <span>
                                <div class="default-profile">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/profile.png" class="profile-img">
                                </div>
                            </span>
                        </a>
                    </div>
				</div>
			</section>

            <section class="categroyContainer">
                <div class="categoryWrap">
                    <div class="category">
                        <div class="categoryContent">
                            <button type="button" class="category-btn">
                                <span class="img">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                        <path xmlns="http://www.w3.org/2000/svg" d="M19,17 C19.5522847,17 20,17.4477153 20,18 C20,18.5522847 19.5522847,19 19,19 L5,19 C4.44771525,19 4,18.5522847 4,18 C4,17.4477153 4.44771525,17 5,17 L19,17 Z M19,11 C19.5522847,11 20,11.4477153 
                                        20,12 C20,12.5522847 19.5522847,13 19,13 L5,13 C4.44771525,13 4,12.5522847 4,12 C4,11.4477153 4.44771525,11 5,11 L19,11 Z M19,5 C19.5522847,5 20,5.44771525 20,6 C20,6.55228475 19.5522847,7 19,7 L5,7 C4.44771525,7 4,6.55228475 4,6 C4,5.44771525 4.44771525,5 5,5 L19,5 Z"></path>
                                    </svg>
                                </span>
                            </button>

                            <!-- dropdown -->
                        <div class="dropdown-container">
                            <button type="button" class="category-s" onclick="dp_menu()">전체 카테고리</button>
                            <div style="display: none;" id="drop-content">
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=1&categoryName=science'">과학IT</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike'">방송</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=3&categoryName=study'">사회</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=4&categoryName=activity'">엑티비티</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=5&categoryName=history'">역사</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=6&categoryName=art'">예술</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=7&categoryName=cook'">요리</a>
                                    <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=8&categoryName=medical'">의료</a>
                             </div>
                        </div>
                            <span class="categoryImg">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                    <polygon id="Triangle" transform="translate(12.000000, 12.000000) rotate(-180.000000) translate(-12.000000, -12.000000) " points="12 9 18 15 6 15">
                                    </polygon>
                                </svg>
                            </span>
                        </div>
                    </div>
                 </div> 
            </div>
    </section>
</header>
</c:if>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mainpage/dropdown.js"></script>
</html>