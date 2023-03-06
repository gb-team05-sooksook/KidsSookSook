package com.app.enquiry.domain;
public class CustomerEnquiryVO {
	private Long enquiryId;
	private Long userId;
	private String userEmail;
	private String enquiryTitle;
	private String enquiryContent;
	private String enquiryDate;
	private int enquiryConfirm;
	
	public CustomerEnquiryVO() {
	}
	public Long getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(Long enquiryId) {
		this.enquiryId = enquiryId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getEnquiryTitle() {
		return enquiryTitle;
	}
	public void setEnquiryTitle(String enquiryTitle) {
		this.enquiryTitle = enquiryTitle;
	}
	public String getEnquiryContent() {
		return enquiryContent;
	}
	public void setEnquiryContent(String enquiryContent) {
		this.enquiryContent = enquiryContent;
	}
	public String getEnquiryDate() {
		return enquiryDate;
	}
	public void setEnquiryDate(String enquiryDate) {
		this.enquiryDate = enquiryDate;
	}
	public int getEnquiryConfirm() {
		return enquiryConfirm;
	}
	public void setEnquiryConfirm(int enquiryConfirm) {
		this.enquiryConfirm = enquiryConfirm;
	}
	@Override
	public String toString() {
		return "copy [enquiryId=" + enquiryId + ", userId=" + userId + ", userEmail=" + userEmail + ", enquiryTitle="
				+ enquiryTitle + ", enquiryContent=" + enquiryContent + ", enquiryDate=" + enquiryDate
				+ ", enquiryConfirm=" + enquiryConfirm + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((enquiryId == null) ? 0 : enquiryId.hashCode());
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
		CustomerEnquiryVO other = (CustomerEnquiryVO) obj;
		if (enquiryId == null) {
			if (other.enquiryId != null)
				return false;
		} else if (!enquiryId.equals(other.enquiryId))
			return false;
		return true;
	}
	
	
	
}
