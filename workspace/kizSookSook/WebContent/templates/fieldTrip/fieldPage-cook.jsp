<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카테고리 | 키즈쑥쑥</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fieldTrip/fieldPage.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/logo/icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css"/>
</head>
<body>
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
                                        <a href="" class="category-left-title-list-fields">과학IT</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="" class="category-left-title-list-fields">방송</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="" class="category-left-title-list-fields">사회</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="" class="category-left-title-list-fields">엑티비티</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="" class="category-left-title-list-fields">역사</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="" class="category-left-title-list-fields">예술</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="" class="category-left-title-list-fields">요리</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="category-left-title-list-field">
                                        <a href="" class="category-left-title-list-fields">의료</a>
                                    </div>
                                </li>
                            </ul>
                        </section>
                    </nav>
        <!-- 오른쪽 카테고리 목록 -->
                    <div class="category-right">
                        <section class="category-right-name">
                            <div class="category-right-names"></div>
                            <span class="category-right-listName">카테고리  >  요리</span>
                        </section>
                        <div class="category-right-listNames">
                            <div class="category-right-listName-turn">
                                <div class="category-right-listName-turn-name">
                                    인기순
                                    <span class="category-right-listName-turn-list">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                            <path xmlns="http://www.w3.org/2000/svg" d="M16.2207159,6.10870583 C16.5916812,5.74209279 16.5932964,5.14609072 16.2243236,4.77749794 C15.8553508,4.40890516 15.2555125,4.40730026 14.8845472,4.77391329 L7.77928409,11.9296701 C7.40827322,12.2963282 7.40670988,12.7039529 7.7757925,13.0725272 L14.8810556,20.2226181 C15.2500929,20.5911471 15.8499315,20.5926484 16.2208326,20.2259713 C16.5917338,19.8592942 16.5932448,19.2632919 16.2242075,18.8947628 L9.75,12.5010986 L16.2207159,6.10870583 Z" transform="translate(12.000000, 12.500000) scale(1, -1) rotate(-270.000000) translate(-12.000000, -12.500000) "></path>
                                        </svg>
                                    </span>
                                </div>
                            </div>
                        </div>
          <!-- 체험학습 리스트 -->
                        <div class="trip-list">
                            <div class="trip-list-containal">
                            	<article class="top-list-wrappers">
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook1-1.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">라면 연구 센터에서는 다양한 라면의 종류와 특징에 대해 알아본 후 최고의 라면을 만들 수 있습니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">11,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       30
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook2-1.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">베이커리에서는 고소한 빵 냄새를 맡으며 반죽-성형-빵을 굽는 활동을 통해 오감을 활용하는 작품을 만듭니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">15,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       35
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook3-1.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">비타민 연구소에서는 비타민의 특성을 알아보는 실험을 통해 비타민을 연구하고 비타민정을 직접 가공합니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">10,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       18
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook4-2.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">다양한 소시지를 알아보고 제품을 개발합니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">12,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       25
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            	</article>
                            </div>
                            <div class="trip-list-containal">
                            	<article class="top-list-wrappers">
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook5-1.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">스낵개발센터에서는 시민들에게 맛있는 스낵을 제공하기 위해 연구하고, 직접 반죽, 굽기, 양념 개발 과정을 경험합니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">11,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       20
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook6-1.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">시리얼 카페에서는 아침의 중요성에 대해 알아보고 맛과 영양이 가득한 시리얼을 만듭니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">9,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       38
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook7-1.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">아이스크림 스토어에서는 고객의 취향과 기호에 맞는 다양한 재료를 이용해 하나뿐인 특별한 아이스크림을 만들어 봅니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">15,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       42
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            		<a class="trip-list-wrapper">
                            			<div class="trip-image">
                            				<div class="trip-image-wrapper">
                            					<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook8-1.jpg" class="trip-image-size">
                            				</div>
                            			</div>
                            			<div class="trip-img-heart">
                            				<button class="trip-img-heart-button">
                            					<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
					                               <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
					                                   <defs>
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
					                                   </defs>
					                                   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
					                                       <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
						                       <span class="topListM">요리</span>
						                   </div>
						                   <h3 class="topListN">완전식품 우유 속의 다양한 영양성분을 배우며, 직접 유제품을 만들고 개발해보는 체험을 합니다.</h3>
						                   <div class="topListO">
						                       <div class="topListP">
						                           <div class="topListR" id="topListRR">11,000원</div>
						                       </div>
						                   </div>
						               </div>
						               <div class="topListQ">
						                   <span class="topListR">
						                       <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
						                           <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
						                       </svg>
						                   </span>
						                   "5.0"
						                   <span class="topListS"></span>
						                   <div class="topListT">
						                       40
						                       개의 평가
						                   </div>
						               </div>
                            		</a>
                            	</article>
                            </div>
							<div class="trip-list">
								<div class="trip-list-containal">
									<article class="top-list-wrappers">
										<a class="trip-list-wrapper">
											<div class="trip-image">
												<div class="trip-image-wrapper">
													<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook9-2.jpg" class="trip-image-size">
												</div>
											</div>
											<div class="trip-img-heart">
												<button class="trip-img-heart-button">
													<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
													   <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
														   <defs>
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
														   </defs>
														   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
												   <span class="topListM">요리</span>
											   </div>
											   <h3 class="topListN">첨단 자동화 설비를 갖춘 음료수 공장에서는 빈병-세척-음료수 주입-캡- 냉각 등 자동화 단계를 거쳐 톡 쏘는 맛의 시원한 음료수를 생산합니다.</h3>
											   <div class="topListO">
												   <div class="topListP">
													   <div class="topListR" id="topListRR">11,000원</div>
												   </div>
											   </div>
										   </div>
										   <div class="topListQ">
											   <span class="topListR">
												   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
													   <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
												   </svg>
											   </span>
											   "5.0"
											   <span class="topListS"></span>
											   <div class="topListT">
												   30
												   개의 평가
											   </div>
										   </div>
										</a>
										<a class="trip-list-wrapper">
											<div class="trip-image">
												<div class="trip-image-wrapper">
													<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook10-1.jpg" class="trip-image-size">
												</div>
											</div>
											<div class="trip-img-heart">
												<button class="trip-img-heart-button">
													<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
													   <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
														   <defs>
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
														   </defs>
														   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
												   <span class="topListM">요리</span>
											   </div>
											   <h3 class="topListN">채소와 과일에 담긴 영양소에 대해 배우고, 채소와 과일의 영양소를 효과적으로 섭취하는 방법을 연구해봅니다.</h3>
											   <div class="topListO">
												   <div class="topListP">
													   <div class="topListR" id="topListRR">15,000원</div>
												   </div>
											   </div>
										   </div>
										   <div class="topListQ">
											   <span class="topListR">
												   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
													   <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
												   </svg>
											   </span>
											   "5.0"
											   <span class="topListS"></span>
											   <div class="topListT">
												   35
												   개의 평가
											   </div>
										   </div>
										</a>
										<a class="trip-list-wrapper">
											<div class="trip-image">
												<div class="trip-image-wrapper">
													<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook11-1.jpg" class="trip-image-size">
												</div>
											</div>
											<div class="trip-img-heart">
												<button class="trip-img-heart-button">
													<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
													   <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
														   <defs>
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
														   </defs>
														   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
												   <span class="topListM">요리</span>
											   </div>
											   <h3 class="topListN">쿠킹스쿨에서는 레시피에 따라 다양한 요리를 완성합니다.</h3>
											   <div class="topListO">
												   <div class="topListP">
													   <div class="topListR" id="topListRR">10,000원</div>
												   </div>
											   </div>
										   </div>
										   <div class="topListQ">
											   <span class="topListR">
												   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
													   <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
												   </svg>
											   </span>
											   "5.0"
											   <span class="topListS"></span>
											   <div class="topListT">
												   18
												   개의 평가
											   </div>
										   </div>
										</a>
										<a class="trip-list-wrapper">
											<div class="trip-image">
												<div class="trip-image-wrapper">
													<img src="${pageContext.request.contextPath}/resources/img/fieldTrip/fieldPage/cook/cook12-2.jpg" class="trip-image-size">
												</div>
											</div>
											<div class="trip-img-heart">
												<button class="trip-img-heart-button">
													<span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg">
													   <svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
														   <defs>
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z M11.999764,19.1166999 L4.75479942,11.7085588 C3.15293092,10.0706117 3.15293094,7.4069956 4.75479947,5.76904857 C6.34586921,4.14214354 8.91709737,4.14214352 10.5081671,5.76904852 L11.4435969,6.72554678 C11.7484384,7.0372541 12.2510896,7.0372541 12.555931,6.72554678 L13.4913608,5.76904851 C14.2561214,4.98669624 15.2906419,4.5483871 16.3680447,4.5483871 C17.4454474,4.5483871 18.4799679,4.98669624 19.2446013,5.76891842 C20.0136074,6.55487573 20.4466019,7.6234063 20.4466019,8.73880364 C20.4466019,9.85420097 20.0136074,10.9227315 19.2448557,11.7084287 L18.3092987,12.665057 L11.999764,19.1166999 Z" id="heart-outlined-fill-icon"></path>
														   </defs>
														   <g id="Icons_Favorite_border_fill" stroke="none" stroke-width="1" fill-rule="evenodd">
															   <path d="M16.3680447,3 C14.8701244,3 13.434867,3.60809471 12.3788995,4.68835248 L11.999764,5.07602721 L11.6205012,4.68822239 C9.41974855,2.43790277 5.843218,2.4379028 3.64246538,4.68822244 C1.45251156,6.92750008 1.45251154,10.5501072 3.64246532,12.7893849 L11.4435969,20.7662195 C11.7484384,21.0779268 12.2510896,21.0779268 12.555931,20.7662195 L20.3570626,12.7893849 C21.4096395,11.7136062 22,10.2567327 22,8.73880364 C22,7.22093571 21.409687,5.76411845 20.3570626,4.68822238 C19.3011071,3.60804588 17.8659048,3 16.3680447,3 Z" id="Shape" fill="#212224" fill-rule="nonzero" opacity="0.2"></path>
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
												   <span class="topListM">요리</span>
											   </div>
											   <h3 class="topListN">햄버거 카페테리아의 햄버거 요리사로서 맛과 영양의 조화를 살린 레시피로 직접 햄버거를 만들어봅니다.</h3>
											   <div class="topListO">
												   <div class="topListP">
													   <div class="topListR" id="topListRR">12,000원</div>
												   </div>
											   </div>
										   </div>
										   <div class="topListQ">
											   <span class="topListR">
												   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
													   <path d="M8.37094152,8.12482574 L2.52598096,8.59636398 L2.36821881,8.6135218 C0.881583763,8.81867772 0.513822851,10.1467426 1.72605142,11.1443161 L6.11068071,14.7526934 L4.80553251,20.0682859 L4.77348322,20.2161997 C4.50052597,21.673724 5.6402616,22.4726949 6.9887771,21.699537 L12.00271,18.8250573 L17.0166429,21.699537 L17.1506515,21.7715841 C18.4829447,22.4403279 19.5680516,21.5674348 19.1998875,20.0682859 L17.8937294,14.7526934 L22.2793686,11.1443161 L22.3984321,11.0405714 C23.4954951,10.0270601 23.0352205,8.72174778 21.479439,8.59636398 L15.6334685,8.12482574 L13.3880977,3.09014615 C12.7393731,1.6361626 11.2656405,1.63707337 10.6173223,3.09014615 L8.37094152,8.12482574 Z"></path>
												   </svg>
											   </span>
											   "5.0"
											   <span class="topListS"></span>
											   <div class="topListT">
												   25
												   개의 평가
											   </div>
										   </div>
										</a>
									</article>
								</div>
							<!-- 하단 페이지 쪽 번호 -->
							<div class="page-number-containel">
								<ul class="page-number-wrapper">
									<li class="page-left-arrow">
										<button class="page-left-arrow-button-wrapper">
											<span class="page-left-arrow-button">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="page-left-arrow-button-svg">
													<path xmlns="http://www.w3.org/2000/svg" d="M9.41421356,12 L15.7071068,5.70710678 C16.0976311,5.31658249 16.0976311,4.68341751 15.7071068,4.29289322 C15.3165825,3.90236893 14.6834175,3.90236893 14.2928932,4.29289322 L7.29289322,11.2928932 C6.90236893,11.6834175 6.90236893,12.3165825 7.29289322,12.7071068 L14.2928932,19.7071068 C14.6834175,20.0976311 15.3165825,20.0976311 15.7071068,19.7071068 C16.0976311,19.3165825 16.0976311,18.6834175 15.7071068,18.2928932 L9.41421356,12 Z"></path>
												</svg>
											</span>
										</button>
									</li>
									<li class="page-middle-number-containel">
										<button class="page-middle-number-button">
											<span>1</span>
										</button>
									</li>
									<li class="page-right-arrow">
										<button class="page-right-arrow-button-wrapper">
											<span class="page-right-arrow-button">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="page-right-arrow-svg">
													<path xmlns="http://www.w3.org/2000/svg" d="M9.41421356,12 L15.7071068,5.70710678 C16.0976311,5.31658249 16.0976311,4.68341751 15.7071068,4.29289322 C15.3165825,3.90236893 14.6834175,3.90236893 14.2928932,4.29289322 L7.29289322,11.2928932 C6.90236893,11.6834175 6.90236893,12.3165825 7.29289322,12.7071068 L14.2928932,19.7071068 C14.6834175,20.0976311 15.3165825,20.0976311 15.7071068,19.7071068 C16.0976311,19.3165825 16.0976311,18.6834175 15.7071068,18.2928932 L9.41421356,12 Z" transform="translate(11.500000, 12.000000) scale(-1, 1) translate(-11.500000, -12.000000) "></path>
												</svg>
											</span>
										</button>
									</li>
								</ul>
							</div>
                        </div> <!-- 카테고리 4개 담은 div -->
                    </div>
                </main>
            </div>
        </div>
    </div>
</body>
<script src="${pageContext.request.contextPath}/static/js/fieldTrip/fieldPage.js"></script>
</html>