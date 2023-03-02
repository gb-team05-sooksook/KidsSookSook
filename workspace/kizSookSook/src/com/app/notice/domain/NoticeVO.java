package com.app.notice.domain;

public class NoticeVO {
	private Long noticeId;
	private String noticeTitle;
	private String noticeContext;
	private String noticeDate;
	private String noticeAlterDate;
	
	public NoticeVO() {;}

	

	public Long getNoticeId() {
		return noticeId;
	}



	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}



	public String getNoticeTitle() {
		return noticeTitle;
	}



	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}



	public String getNoticeContext() {
		return noticeContext;
	}



	public void setNoticeContext(String noticeContext) {
		this.noticeContext = noticeContext;
	}



	public String getNoticeDate() {
		return noticeDate;
	}



	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}



	public String getNoticeAlterDate() {
		return noticeAlterDate;
	}



	public void setNoticeAlterDate(String noticeAlterDate) {
		this.noticeAlterDate = noticeAlterDate;
	}





	@Override
	public String toString() {
		return "CustomerNotice [noticeId=" + noticeId + ", noticeTitle=" + noticeTitle + ", noticeContext="
				+ noticeContext + ", noticeDate=" + noticeDate + ", noticeAlterDate=" + noticeAlterDate + "]";
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((noticeId == null) ? 0 : noticeId.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		NoticeVO other = (NoticeVO) obj;
		if (noticeId == null) {
			if (other.noticeId != null)
				return false;
		} else if (!noticeId.equals(other.noticeId))
			return false;
		return true;
	}




}
