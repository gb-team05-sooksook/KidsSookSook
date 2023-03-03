<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>키즈쑥쑥 | 아이들의 체험나라 키즈쑥쑥에 오신걸 환영합니다.</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/main.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/dropdown.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font/font.css">
 <link rel="icon" href="${pageContext.request.contextPath}/static/resources/img/logo/icon.png">
</head>
<body>

	<div id="wrap">
	
	<!--header -->
		<header class="wrap-h">
			<section class="wrap-s">
				<a class="logo" href="${pageContext.request.contextPath}/templates/main/main.jsp">
                    <!-- logo 이미지 -->
                   <img src="${pageContext.request.contextPath}/static/resources/img/kids-logo.png">
				</a>
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
					<a color="default" class="btn-1" href="${pageContext.request.contextPath}/templates/customerCenter/customer-main.jsp">
					    <span>고객센터</span>
					</a>
					<a color="default" class="btn-2" href="${pageContext.request.contextPath}/templates/joinLogin/join/firstJoin.member">
					    <span>로그인</span>
					</a>
                    <a color="yellow" href="${pageContext.request.contextPath}/templates/joinLogin/join/firstJoin.member" class="join">
                        <span>무료 회원가입</span>
                    </a>

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
                                            <a href='#'>과학IT</a>
                                            <a href='#'>방송</a>
                                            <a href='#'>사회</a>
                                            <a href='#'>엑티비티</a>
                                            <a href='#'>역사</a>
                                            <a href='#'>예술</a>
                                            <a href='#'>요리</a>
                                            <a href='#'>의료</a>
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

        
        <div class="container">
            <main class="c-wrap">
                <!-- 컬러체인지javascript로 구현 -->
            <section class="colorChange">
                <div class="layout">
                    <section class="search-s">
                        <h1 class="title">아이들의 직업체험 키즈쑥쑥!<br>아이들이 원하는 직업체험을 찾아보세요!</h1>
                            
                            <form class="search-f">
                                <div class="search-Wrap">
                                    <div class="search-Category">
                                       <!--  검색기능 javascript -->
                                        <span class="text"></span>
                                            <input class="banner-input" type="text" />
                                        <span class="cursor"></span> 
                                    </div>
                                   
                                    <div class="search-icon">
                                        <span class="icon">
                                            <svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                <path xmlns="http://www.w3.org/2000/svg" d="M11.2307008,3.5 C15.5002489,3.5 18.9614015,6.96828437 18.9614015,11.24663 C18.9614015,13.0978372 18.3133954,14.7973826 17.2322825,16.1299241 L20.2742127,19.178378 C20.5762688,19.4810023 20.5764739,19.9714482 20.2746708,20.2738195 C19.9728678,20.5761908 
                                                19.4833433,20.5759857 19.1812873,20.2733614 L19.1812873,20.2733614 L16.1426973,17.2288066 C14.8071694,18.3312107 13.0960911,18.9932599 11.2307008,18.9932599 C6.96115262,18.9932599 3.5,15.5249756 3.5,11.24663 C3.5,6.96828437 6.96115262,3.5 11.2307008,3.5 Z M11.2307008,5.04932599 C7.81506225,5.04932599 5.04614015,7.82395349 5.04614015,11.24663 C5.04614015,14.6693064 7.81506225,17.4439339 11.2307008,17.4439339 C14.6463393,17.4439339 17.4152614,14.6693064 17.4152614,11.24663 C17.4152614,7.82395349 14.6463393,5.04932599 11.2307008,5.04932599 Z"></path>
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                            </form>
                            
                            <!-- #tag -->
                            <div class="tag-container">
                                <div class="tag-wrap">
                                    <a class="tag-a" href="#">
                                        #
                                        과학IT
                                    </a>
                                </div>
                                <div class="tag-wrap">
                                    <a class="tag-a" href="#">
                                        #
                                        엑티비티
                                    </a>
                                </div>
                                <div class="tag-wrap">
                                    <a class="tag-a" href="#">
                                        #
                                        의료
                                    </a>
                                </div>
                                <div class="tag-wrap">
                                    <a class="tag-a" href="#">
                                        #
                                        예술
                                    </a>
                                </div> 
                                <div class="tag-wrap">
                                    <a class="tag-a" href="#">
                                        #
                                        사회
                                    </a>
                                </div>
                            </div>
                </section>

                 
                    
                            <div class="slideshow-container">
                                    <!-- banner -->
                                <div class="mySlideDiv fade active">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/kmong1.jpg"> 
                                </div>
                                
                                <div class="mySlideDiv fade active">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/kmong2.jpg"> 
                                </div>
                                
                                <div class="mySlideDiv fade active">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/kmong3.jpg"> 
                                </div>
                                
                                <div class="mySlideDiv fade active">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/kmong4.jpg"> 
                                </div>
                        	
                                    <!-- 이전 버튼 -->
                                    <div class="bannerPrev">
                                        <div class="bannerPrev-wrap">
                                            <div class="prev-icon">
                                                <a class="prev" onclick="prevSlide()">
                                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                        <path xmlns="http://www.w3.org/2000/svg" d="M9.41421356,12 L15.7071068,5.70710678 C16.0976311,5.31658249 16.0976311,4.68341751 15.7071068,4.29289322 C15.3165825,3.90236893 14.6834175,3.90236893 14.2928932,4.29289322 L7.29289322,11.2928932 C6.90236893,
                                                        11.6834175 6.90236893,12.3165825 7.29289322,12.7071068 L14.2928932,19.7071068 C14.6834175,20.0976311 15.3165825,20.0976311 15.7071068,19.7071068 C16.0976311,19.3165825 16.0976311,18.6834175 15.7071068,18.2928932 L9.41421356,12 Z"></path>
                                                    </svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 다음 버튼 -->
                                <div class="bannerNext">
                                    <div class="bannerNext-wrap">
                                        <div class="next-icon">
                                            <a class="next" onclick="nextSlide()">
                                                <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                    <path xmlns="http://www.w3.org/2000/svg" d="M9.41421356,12 L15.7071068,5.70710678 C16.0976311,5.31658249 16.0976311,4.68341751 15.7071068,4.29289322 C15.3165825,3.90236893 14.6834175,3.90236893 
                                                    14.2928932,4.29289322 L7.29289322,11.2928932 C6.90236893,11.6834175 6.90236893,12.3165825 7.29289322,12.7071068 L14.2928932,19.7071068 C14.6834175,20.0976311 15.3165825,20.0976311 15.7071068,19.7071068 C16.0976311,19.3165825 16.0976311,18.6834175 15.7071068,18.2928932 L9.41421356,12 Z" transform="translate(11.500000, 12.000000) scale(-1, 1) translate(-11.500000, -12.000000) "></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div> 
							</div>

                    
                        <!-- 배너의 카운트 -->
                        <span id="banner-count"></span>
                    </section>
                </div>
            </section>


            <section class="Context-container">
                <div class="Context-wrap">
                    <div class="Context-box">
                        <div class="contextBox">
                            <h1 class="context">
                                아이에게 필요한 모든 전문가를
                                <br>
                                만날 수 있는 키즈쑥쑥!
                            </h1>
                            <h2 class="context-2">
                                누적 거래수
                                360
                                만 건
                                <br>
                                8개의 카테고리, 수십 개의 다양한 직업체험에서
                                <br>
                                아이들에게 필요한 분야를 만나보세요.
                            </h2>
                        </div>
                        <!-- video -->
                        <div class="video-Container">
                            <div class="video-box">
                                <iframe width="692" height="390"  src="https://www.youtube.com/embed/JiRDWA_vP8Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>

                    <div class="boardTitleWrap">
                        <article class="boardTitle">
                            <h3 class="boardTitle-1">빠른 커뮤니케이션</h3>
                            <h4 class="boardTitle-2">생생한 직업체험으로<br>아이들의 잠재력을 펼쳐보세요!</h4>
                            <div class="imgWrap">
                                <img src="${pageContext.request.contextPath}/static/resources/img/main/01.png" width="28" height="28">
                            </div>
                        </article>
                        <article class="boardTitle">
                            <h3 class="boardTitle-1">빠른 커뮤니케이션</h3>
                            <h4 class="boardTitle-2">부모동반 참여를 통해<br>아이와 여러 추억, 유대감을 쌓아보세요</h4>
                            <div class="imgWrap">
                                <img src="${pageContext.request.contextPath}/static/resources/img/main/02.png" width="28" height="28">
                            </div>
                        </article>
                        <article class="boardTitle">
                            <h3 class="boardTitle-1">빠른 커뮤니케이션</h3>
                            <h4 class="boardTitle-2">평균 만족도 98.9점<br>체험별 전문가가<br>만족스러운 직업체험을 제공합니다.</h4>
                            <div class="imgWrap">
                                <img src="${pageContext.request.contextPath}/static/resources/img/main/03.png" width="28" height="28">
                            </div>
                        </article>
                    </div>

                    </div>
                </div>
            </section>

                <section class="reviewTitle-container">
                    <div class="reviewTitle-wrap">
                        <h1 class="reviewContext-Title">키즈쑥쑥을 이용한 고객들의 생생한 후기!</h1>
                        <h2 class="review">211만명의 체험자들이 98.6% 만족했습니다.</h2>
                        <section class="reviewVideo-container">
                            <article class="reviewVideo-wrap">
                                <div class="reviewVideo-Review">
                                    <div class="reviewVideo-content">
                                        <iframe title="IT-웹개발자님의 생생한 후기" width="375" height="210" src="https://www.youtube.com/embed/3lpaFnEo9AA?disablekb=0&autoplay=1&rel=0&modestbranding=1&iv_load_policy=3&fs=0&enablejsapi=1&origin=http%3A%2F%2Fwww.kidzania.co.kr&widgetid=3ㅍ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                                    </div>
                                </div>
                                <div class="reviewText-wrap">
                                    <div class="reviewText-title">방송</div>
                                    |
                                    <div class="reviewText-job">라디오DJ</div>
                            </div>
                        </article>
                        <article class="reviewVideo-wrap">
                            <div class="reviewVideo-Review">
                                <div class="reviewVideo-content">
                                    <iframe title="IT-웹개발자님의 생생한 후기" width="375" height="210" src="https://www.youtube.com/embed/qqAwgUTx-Iw?disablekb=0&autoplay=1&rel=0&modestbranding=1&iv_load_policy=3&fs=0&enablejsapi=1&origin=http%3A%2F%2Fwww.kidzania.co.kr&widgetid=2" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                                </div>
                            </div>
                            <div class="reviewText-wrap">
                                <div class="reviewText-title">사회</div>
                                |
                                <div class="reviewText-job"> 경찰관</div>
                            </div>
                        </article>
                        <article class="reviewVideo-wrap">
                            <div class="reviewVideo-Review">
                                <div class="reviewVideo-content">
                                    <iframe title="IT-웹개발자님의 생생한 후기" width="375" height="210" src="https://www.youtube.com/embed/s28tW_gVL64?disablekb=0&autoplay=1&rel=0&modestbranding=1&iv_load_policy=3&fs=0&enablejsapi=1&origin=http%3A%2F%2Fwww.kidzania.co.kr&widgetid=2" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                                </div>
                            </div>
                            <div class="reviewText-wrap">
                                <div class="reviewText-title">요리</div>
                                |
                                <div class="reviewText-job">시리얼마스터</div>
                            </div>
                        </article>
                    </div>
                </section>

                <section class="guide-container">
                    <div class="guide-wrap">
                        <h1 class="guide-title">키즈쑥쑥을 200% 활용하는 법</h1>
                        <h2 class="guide-content">키즈쑥쑥까지 내 능력으로 만드는 콘텐츠</h2>
                        <section class="guideContent-wrap">
                            <article class="guideContent-box">
                                <div class="guide-imgWrap">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/kids1.png">
                                </div>
                                <div class="guideText-wrap">
                                    <div class="guideText-title">키즈쑥쑥 체험 가이드</div>
                                    <div class="guideText-context">아이의 성향과 적성을 모르신다면 키즈쑥쑥으로!</div>
                                </div>
                            </article>
                            <article class="guideContent-box">
                                <div class="guide-imgWrap">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/kids2.png" >
                                </div>
                                <div class="guideText-wrap">
                                    <div class="guideText-title">키즈쑥쑥 체험 가이드</div>
                                    <div class="guideText-context">스스로 결졍하고 체험하며 성장하는 아이들!</div>
                                </div>
                            </article>
                            <article class="guideContent-box">
                                <div class="guide-imgWrap">
                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/kids3.png" >
                                </div>
                                <div class="guideText-wrap">
                                    <div class="guideText-title">키즈쑥쑥 체험 가이드</div>
                                    <div class="guideText-context">사회성, 리더쉽 등을 배워 더 나은 어른이 되자!</div>
                                </div>
                            </article>
                        </section>
                    </div>
                </section>

                <!-- Ranking-Top -->
                <section class="ranking-container">
                    <div class="ranking-wrap">
                        <h1 class="ranking-title">TOP 카테고리 체험 랭킹</h1>
                        <h2 class="ranking-small-title">키즈쑥쑥에서 가장 많이 판매한 인기 체험학습 랭킹 입니다.</h2>
                        <div class="ranking-box">
                            <div class="ranking-0">
                                <div class="ranking-T">인기순</div>
                                <div class="ranking-1box">
                                    <article class="ranking-gold">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/gold.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="gold-context">
                                                11,500,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    코리아IT아카데미
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="gold-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/korea.png" class="gold-img">
                                            </div>                                           
                                        </a>     
                                    </article>
                                </div>
                                <div class="ranking-2box">
                                    <article class="ranking-sliver">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/sliver.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="sliver-context">
                                                11,100,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    지구컴즈
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="sliver-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                            </div>
                                        </a>
                                    </article>
                                    <div class="height-line"></div>
                                        <article class="ranking-sliver">
                                            <img src="${pageContext.request.contextPath}/static/resources/img/main/bronze.png" width="40" height="40">
                                            <div class="context-box">
                                                <span class="sliver-context">
                                                    9,100,000
                                                    원
                                                </span>
                                                <a href="#" class="gold-a">
                                                    <span class="gold-first">
                                                        SBS
                                                    </span>
                                                </a>
                                            </div>
                                            <a href="#" class="gold-a">
                                                <div class="sliver-img-wrap">
                                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                                </div>
                                            </a>
                                        </article>
                                        <div class="height-line"></div>
                                        <article class="ranking-sliver">
                                            <img src="${pageContext.request.contextPath}/static/resources/img/main/four.png" width="40" height="40">
                                            <div class="context-box">
                                                <span class="sliver-context">
                                                    7,100,000
                                                    원
                                                </span>
                                                <a href="#" class="gold-a">
                                                    <span class="gold-first">
                                                        미술
                                                    </span>
                                                </a>
                                            </div>
                                            <a href="#" class="gold-a">
                                                <div class="sliver-img-wrap">
                                                    <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                                </div>
                                            </a>
                                        </article>
                                </div>
                            </div>

                            <div class="ranking-0">
                                <div class="ranking-T">추천순</div>
                                <div class="ranking-1box">
                                    <article class="ranking-gold">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/gold.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="gold-context">
                                                11,500,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    코리아IT아카데미
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="gold-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/korea.png" class="gold-img">
                                            </div>                                           
                                        </a>     
                                    </article>
                                </div>
                                <div class="ranking-2box">
                                    <article class="ranking-sliver">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/sliver.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="sliver-context">
                                                11,100,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    지구컴즈
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="sliver-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                            </div>
                                        </a>
                                    </article>
                                    <div class="height-line"></div>
                                    <article class="ranking-sliver">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/bronze.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="sliver-context">
                                                9,100,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    SBS
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="sliver-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                            </div>
                                        </a>
                                    </article>
                                    <div class="height-line"></div>
                                    <article class="ranking-sliver">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/four.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="sliver-context">
                                                7,100,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    미술
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="sliver-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                            </div>
                                        </a>
                                    </article>
                                </div>
                            </div>
                                
                                <div class="ranking-0">
                                <div class="ranking-T">후기 많은 순</div>
                                <div class="ranking-1box">
                                    <article class="ranking-gold">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/gold.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="gold-context">
                                                11,500,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    코리아IT아카데미
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="gold-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/korea.png" class="gold-img">
                                            </div>                                           
                                        </a>     
                                    </article>
                                </div>
                                <div class="ranking-2box">
                                    <article class="ranking-sliver">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/sliver.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="sliver-context">
                                                11,100,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    지구컴즈
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="sliver-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                            </div>
                                        </a>
                                    </article>
                                    <div class="height-line"></div>
                                    <article class="ranking-sliver">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/bronze.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="sliver-context">
                                                9,100,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    SBS
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="sliver-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                            </div>
                                        </a>
                                    </article>
                                    <div class="height-line"></div>
                                    <article class="ranking-sliver">
                                        <img src="${pageContext.request.contextPath}/static/resources/img/main/four.png" width="40" height="40">
                                        <div class="context-box">
                                            <span class="sliver-context">
                                                9,100,000
                                                원
                                            </span>
                                            <a href="#" class="gold-a">
                                                <span class="gold-first">
                                                    SBS
                                                </span>
                                            </a>
                                        </div>
                                        <a href="#" class="gold-a">
                                            <div class="sliver-img-wrap">
                                                <img src="${pageContext.request.contextPath}/static/resources/img/main/earth.jpg" class="sliver-img">
                                            </div>
                                        </a>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
        </div>


        <section>
           <!--  <hr orientation="horizontal" class="line"> -->
                <div class="kids-info">
                    <span class="footer-p">
                     고객센터
                     </span>   
                </div>
                <div class="footer-info-wrap">
                    <span class="footer-info">
                        평일 09:00 ~ 18:00  (점심시간 13:00~14:00)<br>주말 공휴일 휴무
                    </span>
                </div>
        </section>

        <!-- footer -->
            <footer>
                <hr orientation="horizontal" class="line">
                    <div class="kids-info">
                        <p class="footer-p">
                            (주)키즈쑥쑥
                            <span class="footer-s">
                                |
                            </span>
                            서울특별시 강남구 역삼동 736-7 4층 C강의실
                            <span class="footer-s">
                                |
                            </span>
                            대표 : 한동석
                            <span class="footer-s">
                                |
                            </span>
                            개인정보관리책임자 : 문은서
                            <span class="footer-s">
                                |
                            </span>
                            사업자등록번호: 123-45-12345
                            <br>
                            통신판매업신고 : 2022-서울강남-4567
                            <span class="footer-s">
                                |
                            </span>
                            고객센터 : 1111-4567
                            <span class="footer-s">
                                |
                            </span>
                             help@kidsSookSook.com
                        </p>
                    </div>

                    <!-- footer2 -->
                    <div class="footer-info-wrap">
                        <p class="footer-info">
                            (주)키즈쑥쑥은 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매회원에게 있습니다.
                        </p>
                        <p class="footer-info">
                            (주)키즈쑥쑥 사이트의 상품/판매회원/중개 서비스/거래 정보, 콘텐츠, UI 등에 대한 무단복제, 전송, 배포, 스크래핑 등의 행위는 저작권법, 콘텐츠산업 진흥법 등 관련법령에 의하여 엄격히 금지됩니다.
                        </p>
                        <div class="footer-copy-wrap">
                        <p class="footerCopy">
                            Copyright © 2023 kidsSookSook Inc. All rights reserved.
                        </p>
                        </div>
                    </div>
            </footer>
	    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mainpage/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mainpage/banner.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mainpage/dropdown.js"></script>
</html>