package com.app.notice.domain;

public class CustomerNotice {
	private Long noticeId;
	private String oticeTitle;
	private String oticeContext;
	private String oticeDate;
	private String oticeAlterDate;
	
	public CustomerNotice() {;}

	public Long getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}

	public String getOticeTitle() {
		return oticeTitle;
	}

	public void setOticeTitle(String oticeTitle) {
		this.oticeTitle = oticeTitle;
	}

	public String getOticeContext() {
		return oticeContext;
	}

	public void setOticeContext(String oticeContext) {
		this.oticeContext = oticeContext;
	}

	public String getOticeDate() {
		return oticeDate;
	}

	public void setOticeDate(String oticeDate) {
		this.oticeDate = oticeDate;
	}

	public String getOticeAlterDate() {
		return oticeAlterDate;
	}

	public void setOticeAlterDate(String oticeAlterDate) {
		this.oticeAlterDate = oticeAlterDate;
	}

	@Override
	public String toString() {
		return "CustomerNotice [noticeId=" + noticeId + ", oticeTitle=" + oticeTitle + ", oticeContext=" + oticeContext
				+ ", oticeDate=" + oticeDate + ", oticeAlterDate=" + oticeAlterDate + "]";
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
		CustomerNotice other = (CustomerNotice) obj;
		if (noticeId == null) {
			if (other.noticeId != null)
				return false;
		} else if (!noticeId.equals(other.noticeId))
			return false;
		return true;
	}
	
}
