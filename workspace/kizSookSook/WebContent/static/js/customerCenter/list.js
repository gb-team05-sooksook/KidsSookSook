/**
 * 
 */
function showList(){
	notices = JSON.parse(notices);
		let text = "";
		notices.forEach(notice => {
			text +=	`
					 
 					<ul class="article-list">
                        <li class="article-list-item  article-promoted">
                            <span data-title="승격된 문서"></span>
                          <a href="javascript: location.href'${contextPath}/DetailOkAction.notice?noticeId=${notice.noticeId}&page=${page}'" class="article-list-link">
								${notice.noticeTitle}</a>
                        </li>
					</ul>
				`
	});
}



