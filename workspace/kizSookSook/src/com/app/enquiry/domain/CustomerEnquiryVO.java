package com.app.enquiry.domain;

public class CustomerEnquiryVO {
	private Long customerEnquiryId;
	private Long userId;
	private String userEmail;
	private String customerEnquiryTitle;
	private String customerEnquiryContent;
	private String customerEnquiryDate;
	private boolean customerEnquiryConfirm;
	
	private String userIdentification;
	
	public String getUserIdentification() {
		return userIdentification;
	}

	public void setUserIdentification(String userIdentification) {
		this.userIdentification = userIdentification;
	}

	public CustomerEnquiryVO() {;}

	public Long getCustomerEnquiryId() {
		return customerEnquiryId;
	}

	public void setCustomerEnquiryId(Long customerEnquiryId) {
		this.customerEnquiryId = customerEnquiryId;
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

	public String getCustomerEnquiryTitle() {
		return customerEnquiryTitle;
	}

	public void setCustomerEnquiryTitle(String customerEnquiryTitle) {
		this.customerEnquiryTitle = customerEnquiryTitle;
	}

	public String getCustomerEnquiryContent() {
		return customerEnquiryContent;
	}

	public void setCustomerEnquiryContent(String customerEnquiryContent) {
		this.customerEnquiryContent = customerEnquiryContent;
	}

	public String getCustomerEnquiryDate() {
		return customerEnquiryDate;
	}

	public void setCustomerEnquiryDate(String customerEnquiryDate) {
		this.customerEnquiryDate = customerEnquiryDate;
	}

	public boolean isCustomerEnquiryConfirm() {
		return customerEnquiryConfirm;
	}

	public void setCustomerEnquiryConfirm(boolean customerEnquiryConfirm) {
		this.customerEnquiryConfirm = customerEnquiryConfirm;
	}

	@Override
	public String toString() {
		return "CustomerEnquiryVO [customerEnquiryId=" + customerEnquiryId + ", userId=" + userId + ", userEmail="
				+ userEmail + ", customerEnquiryTitle=" + customerEnquiryTitle + ", customerEnquiryContent="
				+ customerEnquiryContent + ", customerEnquiryDate=" + customerEnquiryDate + ", customerEnquiryConfirm="
				+ customerEnquiryConfirm + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((customerEnquiryId == null) ? 0 : customerEnquiryId.hashCode());
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
		if (customerEnquiryId == null) {
			if (other.customerEnquiryId != null)
				return false;
		} else if (!customerEnquiryId.equals(other.customerEnquiryId))
			return false;
		return true;
	}
	
}
