<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의 등록 - 키즈쑥쑥 고객센터</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerCenter/enquiry.css">
	<link rel="icon" href="${pageContext.request.contextPath}/resources/img/logo/icon.png">
</head>

<body>
 <!-- header start-->
    <div style="background-color:#FAE57C">
        <header class="header" style="background-color:#FAE57C">
            <div class="logo">
                <a href="">
                    <img src="${pageContext.request.contextPath}/resources/img/logo/logo.png" class="logo-kidsSookSook">
                </a>
                <a title="홈" href="">
                    <img src="//theme.zdassets.com/theme_assets/9204604/db54bfa5d2ad14572afe57b4b5582b04a38aa9e1.png"
                        class="cs">
                </a>
            </div>
            <div class="nav-wrapper">
                <a href="" target="_parent">문의하기</a>
                <a class="login" data-auth-action="signin" role="button" rel="nofollow" title="대화 상자를 엽니다."
                    href="">로그인</a>
            </div>
        </header>
    </div>
    <!-- header end -->
    
    <!-- main start -->
    <main role="main">
        <div class="container-divider"></div>
        <div class="container">
            <nav class="sub-nav">
                <ol class="breadcrumbs">
                    <li title="키즈쑥쑥 고객센터">
                        <a href="">키즈쑥쑥 고객센터</a>
                    </li>
                    <li title="문의 등록">
                        문의 등록
                    </li>
                </ol>
                <form role="search" class="search" data-search="" action="/hc/ko/search" accept-charset="UTF-8"
                    method="get">
                    <input name="utf8" type="hidden" value="✓" autocomplete="off">
                    <input type="search" name="query" id="query" placeholder="검색" aria-label="검색">
                </form>
            </nav>
            <h1>
                <div class="page-title">문의 등록</div>
                <div class="custom-breadcrumbs" style="font-color:#666666; margin-bottom:10px;">
                    <a>
                        <em><strong>[중요] 작업문의는 키즈쑥쑥 사이트 내 해당 담당자에게 직접 남겨주세요.</strong></em>
                    </a>
                </div>
            </h1>
            <div class="form">
                <form id="new_request" class="request-form" data-form="" data-form-type="request"
                    action="/hc/ko/requests" accept-charset="UTF-8" method="post">
                    <input name="utf8" type="hidden" value="✓" autocomplete="off">
                    <input type="hidden" name="authenticity_token" value="">
                    <div class="form-field string required request_anonymous_requester_email">
                        <label for="request_anonymous_requester_email">
                            이메일 주소
                        </label>
                        <input type="text" name="request[anonymous_requester_email]"
                            id="request_anonymous_requester_email" aria-required="true" class="test1">
                        <div id="request_anonymous_requester_email_error"
                            class="notification notification-error notification-inline">
                            요청자 이메일: 액센트 부호가 있는 문자를 이메일 주소에 포함할 수 없습니다.
                        </div>
                    </div>
                    <div class="form-field string  required  request_custom_fields">
                        <label id="request_custom_fields_label" for="request_custom_fields">상담유형</label>
                        <input type="hidden" name="request[custom_fields][360018466731]"
                            id="request_custom_fields_360018466731" value="" autocomplete="off"
                            data-tagger="[{&quot;label&quot;:&quot;-&quot;,&quot;value&quot;:&quot;&quot;,&quot;selected&quot;:true},
                        {&quot;label&quot;:&quot;이용문의&quot;,&quot;value&quot;:&quot;이용문의&quot;},{&quot;label&quot;:&quot;고객의 소리/제보&quot;,
                        &quot;value&quot;:&quot;고객의소리/제보&quot;},{&quot;label&quot;:&quot;제휴&quot;,&quot;value&quot;:&quot;제휴&quot;}]" 
                        aria-required="true" aria-describedby="request_custom_fields_360018466731_error" aria-labelledby="request_custom_fields_360018466731_label">
                        <a class="nesty-input" style="max-width: 100%;">-</a>
                        <div id="request_custom_fields_360018466731_error" class="notification notification-error notification-inline">
                            상담유형: 반드시 입력해야 합니다.
                        </div>

                    </div>
                    <div class="form-field string  required  request_subject">
                        <label id="request_subject_label" for="request_subject">제목</label>
                        <input type="text" name="request[subject]" id="request_subject" maxlength="150" size="150"
                            aria-required="true" aria-labelledby="request_subject_label" class="test1">
                        <div id="request_subject_error" class="notification notification-error notification-inline">
                            제목: 반드시 입력해야 합니다.
                        </div>
                    </div>
                    <div class="suggestion-list" data-hc-class="searchbox" data-hc-suggestion-list="true"></div>
                    <div class="form-field text  required  request_description">
                        <label id="request_description_label" for="request_description">설명</label>
                        <textarea name="request[description]" id="request_description" aria-required="true"
                            aria-describedby="request_description_hint" aria-labelledby="request_description_label">
                        </textarea>
                        <input type="hidden" name="request[description_mimetype]" id="request_description_mimetype"
                            value="text/plain" style="display: none;" autocomplete="off" class="test1">
                        <div id="request_description_error" class="notification notification-error notification-inline">
                            설명: 반드시 입력해야 합니다.
                        </div>
                        <p id="request_description_hint">
                            요청에 관한 세부 정보를 입력하세요. 저희 지원 스태프가 가능한 빨리 자세한 답변을 드리도록 하겠습니다.
                        </p>
                    </div>

                    <div class="form-field">
                        <label for="request-attachments">
                            첨부 파일
                        </label>
                        <div id="upload-dropzone" class="upload-dropzone">
                            <input type="file" multiple="true" id="request-attachments" data-fileupload="true"
                                data-dropzone="upload-dropzone" data-error="upload-error"
                                data-create-url="/hc/ko/request_uploads" data-name="request[attachments][]"
                                data-pool="request-attachments-pool" data-delete-confirm-msg=""
                                aria-describedby="upload-error">
                            <span>
                                <a>파일 추가</a> 또는 파일을 여기로 드래그
                            </span>
                        </div>

                        <div id="upload-error" class="notification notification-error notification-inline"
                            style="display: none;">
                            <span data-upload-error-message=""></span>
                        </div>
                        <ul id="request-attachments-pool" class="upload-pool" data-template="upload-template"></ul>
                    </div>
                    <footer>
                        <input type="submit" name="commit" value="제출">
                    </footer>
                </form>
            </div>
        </div>
    </main>


    <!-- footer start-->
    <footer class="footer">
        <div class="footer-inner">
            <ol style="width:40%">
                <b>(주)키즈쑥쑥</b> | 서울시 서초구 테헤란로 145, 4층 | 대표 : HJH<br>
                개인정보보호책임 : HJH | 사업자등록번호 : 111-777-33333<br>
                통신판매업신고 : 2023-서울서초-2134 | 1111-2222<br>
                help@kidsSookSook.com | 호스팅 사업자: Amazon Web Service(AWS)
            </ol>
            <ol><a href="">공지사항</a></ol>
            <ol><a href="">FAQ</a></ol>
            <ol><a href="">이용약관</a></ol>
            <ol><a href=""><b>개인정보처리방침</b></a></ol>
        </div>
        <div class="footer-mweb">
            &nbsp;&nbsp; (주) 키즈쑥쑥 &nbsp;&nbsp;&nbsp;
            <a href="">공지사항</a>&nbsp;
            <a href="">FAQ</a>&nbsp;
            <a href="">이용약관</a>&nbsp;
            <a href=""><b>개인정보처리방침</b></a>&nbsp;
            <a href="">1:1 문의하기</a>&nbsp;&nbsp;
        </div>
    </footer>
    <!-- footer end -->
</body>
<script src="${pageContext.request.contextPath}/js/customerCenter/clickChangeBorder.js"></script>

</html>