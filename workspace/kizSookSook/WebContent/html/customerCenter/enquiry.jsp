<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의 등록 - 크몽 고객센터</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerCenter/enquiry.css">
</head>

<body>
    <div style="background-color:#FAE57C">
        <header class="header" style="background-color:#FAE57C">
            <div class="logo">
                <a href="">
                    <img src="//theme.zdassets.com/theme_assets/9204604/ed54b2d958a2f7b420f8412b529519e676c20bc3.png"
                        class="logo-kmong">
                </a>
                <a title="홈" href=""><!-- 고객센터 이미지파일 -->
                    <img src="//theme.zdassets.com/theme_assets/9204604/db54bfa5d2ad14572afe57b4b5582b04a38aa9e1.png"
                        class="cs">
                </a>
            </div>
            <div class="nav-wrapper">
                <a href="" target="_parent">문의하기</a><!-- 문의하기 페이지로 -->
                <a class="login" data-auth-action="signin" role="button" rel="nofollow" title="대화 상자를 엽니다."
                    href="/hc/ko/signin?return_to=https%3A%2F%2Fsupport.kmong.com%2Fhc%2Fko%2Frequests%2Fnew&amp;locale=ko">로그인</a>

            </div>
        </header>
    </div>

    <main role="main">
        <div class="container-divider"></div>
        <div class="container">
            <nav class="sub-nav">
                <ol class="breadcrumbs">
                    <li title="크몽 고객센터">
                        <a href="">크몽 고객센터</a>
                    </li>
                    <li title="문의 등록">
                        문의 등록
                    </li>
                </ol>
                <form role="search" class="search" data-search="" action="/hc/ko/search" accept-charset="UTF-8"
                    method="get"><input name="utf8" type="hidden" value="✓" autocomplete="off"><input type="search"
                        name="query" id="query" placeholder="검색" aria-label="검색"></form>
            </nav>
            <h1>
                <div class="page-title">문의 등록</div>
                <div class="custom-breadcrumbs" style="font-color:#666666; margin-bottom:10px;">
                    <a>
                        <em><strong>[중요] 작업문의는 크몽 사이트 내 해당 전문가에게 직접 남겨주세요.</strong></em>
                    </a>
                </div>
            </h1>
            <div class="form">
                <form id="new_request" class="request-form" data-form="" data-form-type="request"
                    action="/hc/ko/requests" accept-charset="UTF-8" method="post">
                    <input name="utf8" type="hidden" value="✓" autocomplete="off">
                    <input type="hidden" name="authenticity_token"
                        value="hc:requests:client:yJTVKYmoEtQMqzrOjzogg6XfVbJjWxStE1UTq23df3TWm8wEiIGKahENZOdOB-GWCogu4xvV53uL-IVJMv0wWw"
                        data-hc-status="ready">
                    <div class="form-field string required request_anonymous_requester_email"><label
                            for="request_anonymous_requester_email">이메일 주소</label>
                        <input type="text" name="request[anonymous_requester_email]"
                            id="request_anonymous_requester_email" aria-required="true">
                    </div>
                    <div class="form-field string  required  request_custom_fields">
                        <label id="request_custom_fields_label" for="request_custom_fields">상담유형</label>
                        <input type="hidden" name="request[custom_fields][360018466731]" id="request_custom_fields"
                            style="max-width: 100%;">-</a>
                    </div>
                    <div class="form-field string  required  request_subject">
                        <label id="request_subject_label" for="request_subject">제목</label>
                        <input type="text" name="request[subject]" id="request_subject" maxlength="150" size="150"
                            aria-required="true" aria-labelledby="request_subject_label">
                    </div>
                    <div class="suggestion-list" data-hc-class="searchbox" data-hc-suggestion-list="true"></div>
                    <div class="form-field text  required  request_description">
                        <label id="request_description_label" for="request_description">설명</label>
                        <textarea name="request[description]" id="request_description" aria-required="true"
                            aria-describedby="request_description_hint" aria-labelledby="request_description_label">
                        </textarea><input type="hidden" name="request[description_mimetype]"
                            id="request_description_mimetype" value="text/plain" style="display: none;"
                            autocomplete="off">
                        <p id="request_description_hint">요청에 관한 세부 정보를 입력하세요. 저희 지원 스태프가 가능한 빨리 자세한 답변을 드리도록 하겠습니다.</p>
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
                    <footer><input type="submit" name="commit" value="제출"></footer>
                </form>
            </div>
        </div>
    </main>
    <footer class="footer">
        <div class="footer-inner">
            <ol style="width:40%">
                <b>(주)크몽</b> | 서울시 서초구 사임당로 157, 3층 | 대표 : 박현호<br>
                개인정보보호책임 : 송준이 | 사업자등록번호 : 613-81-65278<br>
                통신판매업신고 : 2018-서울서초-2134 | 1544-6254<br>
                help@kmong.com | 호스팅 사업자: Amazon Web Service(AWS)
            </ol>
            <ol><a href="">공지사항</a></ol>
            <ol><a href="">FAQ</a></ol>
            <ol><a href="">이용약관</a></ol>
            <ol><a href=""><b>개인정보처리방침</b></a></ol>
        </div>
        <div class="footer-mweb">
            &nbsp;&nbsp; (주) 크몽 &nbsp;&nbsp;&nbsp;
            <a href="">공지사항</a>&nbsp;
            <a href="">FAQ</a>&nbsp;
            <a href="">이용약관</a>&nbsp;
            <a href=""><b>개인정보처리방침</b></a>&nbsp;
            <a href="">1:1 문의하기</a>&nbsp;&nbsp;
        </div>

    </footer>
</body>
<script src="enquiry.js"></script>

</html>