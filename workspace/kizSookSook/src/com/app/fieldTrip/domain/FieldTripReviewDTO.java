package com.app.fieldTrip.domain;

public class FieldTripReviewDTO {
	private Long reviewId;
	private Long userId;
	private Long fieldTripId;
	private String reviewWriteDate;
	private String reviewAlterDate;
	private String reviewContext;
	private String memberName;
	private String memberNickname;
	private String memberGender;
	private Long fileId;
	private String systemName;
	private String orgName;
	
	public FieldTripReviewDTO() {;}

	public Long getReviewId() {
		return reviewId;
	}

	public void setReviewId(Long reviewId) {
		this.reviewId = reviewId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getFieldTripId() {
		return fieldTripId;
	}

	public void setFieldTripId(Long fieldTripId) {
		this.fieldTripId = fieldTripId;
	}

	public String getReviewWriteDate() {
		return reviewWriteDate;
	}

	public void setReviewWriteDate(String reviewWriteDate) {
		this.reviewWriteDate = reviewWriteDate;
	}

	public String getReviewAlterDate() {
		return reviewAlterDate;
	}

	public void setReviewAlterDate(String reviewAlterDate) {
		this.reviewAlterDate = reviewAlterDate;
	}

	public String getReviewContext() {
		return reviewContext;
	}

	public void setReviewContext(String reviewContext) {
		this.reviewContext = reviewContext;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public Long getFileId() {
		return fileId;
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	public String getSystemName() {
		return systemName;
	}

	public void setSystemName(String systemName) {
		this.systemName = systemName;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	@Override
	public String toString() {
		return "FieldTripReviewDTO [reviewId=" + reviewId + ", userId=" + userId + ", fieldTripId=" + fieldTripId
				+ ", reviewWriteDate=" + reviewWriteDate + ", reviewAlterDate=" + reviewAlterDate + ", reviewContext="
				+ reviewContext + ", memberName=" + memberName + ", memberNickname=" + memberNickname
				+ ", memberGender=" + memberGender + ", fileId=" + fileId + ", systemName=" + systemName + ", orgName="
				+ orgName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fieldTripId == null) ? 0 : fieldTripId.hashCode());
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
		FieldTripReviewDTO other = (FieldTripReviewDTO) obj;
		if (fieldTripId == null) {
			if (other.fieldTripId != null)
				return false;
		} else if (!fieldTripId.equals(other.fieldTripId))
			return false;
		return true;
	}
	
}
