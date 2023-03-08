<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카테고리 | 키즈쑥쑥</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fieldTrip/fieldPage.css">
    <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css"/>
</head>
<body>
    <%@ include file="/templates/main/header.jsp"%>
        <!-- 왼쪽 카테고리 창 -->
    <div>
        <div class="category-container">
            <div class="category-wrapper">
                <main class="category-fieldPage">
                    <nav class="category-left">
                        <div class="category-left-title">
                            <h1 class="category-left-title-name">카테고리</h1>
                        </div>
                        <section>
                            <ul class="category-left-title-list" style="list-style:none;">
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=1&categoryName=science'" class="category-left-title-list-fields">과학IT</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike'" class="category-left-title-list-fields">방송</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=3&categoryName=study'" class="category-left-title-list-fields">사회</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=4&categoryName=activity'" class="category-left-title-list-fields">엑티비티</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=5&categoryName=history'" class="category-left-title-list-fields">역사</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=6&categoryName=art'" class="category-left-title-list-fields">예술</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=7&categoryName=cook'" class="category-left-title-list-fields">요리</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=8&categoryName=medical'" class="category-left-title-list-fields">의료</a>
                                    </div>
                                </li>
                            </ul>
                        </section>
                    </nav>
                    <!-- 오른쪽 카테고리 목록 -->
                    <div class="category-right">
                        <section class="category-right-name">
                            <div class="category-right-names"></div>
                            <span class="category-right-listName">카테고리  >  방송</span>
                        </section>
                        <div class="category-right-listNames">
                            <div class="category-right-listName-turn">
								<div id="btn-item" class="category-right-listName-turn-name">
                                    <p id="item1" class="selectBold" onclick="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike&sort=recent'">최신순</p>
                                </div>
                                <div id="btn-item" class="category-right-listName-turn-name">
                                    <p id="item2" onclick="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike&sort=popular'">추천순</p>
                                </div>
                            </div>
                        </div>
                        <!-- 체험학습 리스트 -->
                        <div class="trip-list">
                            <div class="trip-list-containal">
                            	<%-- <article class="top-list-wrappers">
            						<a class="trip-list-wrapper">
            							<div class="trip-image">
				            				<div class="trip-image-wrapper">
				            					<img src="${contextPath}/static/resources/img/fieldTrip/fieldPage/activity/activity1-1.jpg" class="trip-image-size">
				            				</div>
				            			</div>
				            			<div class="trip-img-heart">
				            				<button class="trip-img-heart-button">
				            					<span role="img" color="#ffffff" rotate="0" class="trip-img-heart-span">
					                                <svg class="like-svg" width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="trip-img-heart-svg">
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
				            			<div class="topListK">
						                    <div class="topListL">
				                                <span class="topListM">엑티비티</span>
						                    </div>
						                    <h3 class="topListN">국가대표 훈련센터에서는 신체 균형과 장 건강의 중요성에 대해 배우고 양궁 훈련을 통해 집중력과 균형감각을 키울 수 있습니다.</h3>
						                    <div class="topListO">
						                        <div class="topListP">
						                            <div class="topListR" id="topListRR">11,000원</div>
						                        </div>
						                    </div>
						                </div>
						                <div class="topListQ">
						                    <div class="topListT">
				                                2023-02-28마감
						                    </div>
						                </div>
				            	    </a>
				           	    </article> --%>
                            </div>
							<!-- 하단 페이지 쪽 번호 -->
							<div class="page-number-containel">
								<ul class="page-number-wrapper">
									<c:if test="${prev}">
										<li class="page-left-arrow">
											<button onclick="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike&page=${startPage - 1}&sort=${param.sort}'" class="page-left-arrow-button-wrapper">
												<span class="page-left-arrow-button">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="page-left-arrow-button-svg">
														<path xmlns="http://www.w3.org/2000/svg" d="M9.41421356,12 L15.7071068,5.70710678 C16.0976311,5.31658249 16.0976311,4.68341751 15.7071068,4.29289322 C15.3165825,3.90236893 14.6834175,3.90236893 14.2928932,4.29289322 L7.29289322,11.2928932 C6.90236893,11.6834175 6.90236893,12.3165825 7.29289322,12.7071068 L14.2928932,19.7071068 C14.6834175,20.0976311 15.3165825,20.0976311 15.7071068,19.7071068 C16.0976311,19.3165825 16.0976311,18.6834175 15.7071068,18.2928932 L9.41421356,12 Z"></path>
													</svg>
												</span>
											</button>
										</li>
									</c:if>
									<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<li class="page-middle-number-containel">
											<button class="page-middle-number-button">
												<span><c:out value="${i}"/></span>
											</button>
										</li>
									</c:forEach>
									<c:if test="${next}">
										<li class="page-right-arrow">
											<button onclick="javascript:location.href='${pageContext.request.contextPath}/connectCategoryPageAction.fieldTrip?categoryId=2&categoryName=mike&page=${endPage + 1}&sort=${param.sort}'" class="page-right-arrow-button-wrapper">
												<span class="page-right-arrow-button">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="page-right-arrow-svg">
														<path xmlns="http://www.w3.org/2000/svg" d="M9.41421356,12 L15.7071068,5.70710678 C16.0976311,5.31658249 16.0976311,4.68341751 15.7071068,4.29289322 C15.3165825,3.90236893 14.6834175,3.90236893 14.2928932,4.29289322 L7.29289322,11.2928932 C6.90236893,11.6834175 6.90236893,12.3165825 7.29289322,12.7071068 L14.2928932,19.7071068 C14.6834175,20.0976311 15.3165825,20.0976311 15.7071068,19.7071068 C16.0976311,19.3165825 16.0976311,18.6834175 15.7071068,18.2928932 L9.41421356,12 Z" transform="translate(11.500000, 12.000000) scale(-1, 1) translate(-11.500000, -12.000000) "></path>
													</svg>
												</span>
											</button>
										</li>
									</c:if>
								</ul>
							</div>
                        </div> <!-- 카테고리 4개 담은 div -->
                    </div>
                </main>
            </div>
        </div>
    </div>
    <%@ include file="/templates/main/footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}", categoryAll = `${categoryAll}`, sort = `${sort}`, userIdSession = "${sessionScope.userId}";</script>
<script src="${pageContext.request.contextPath}/static/js/fieldTrip/fieldPage.js"></script>
</html>