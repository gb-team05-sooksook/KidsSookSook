package com.app.fieldTrip.domain;

public class FieldTripDetailDTO {
	private Long fieldTripId;
	private Long userId;
	private Long categoryId;
	private String fieldTripName;
	private String fieldTripRegistationDate;
	private String fieldTripDeadlineDate;
	private String fieldTripProgramDate;
	private String fieldTripPlace;
	private int fieldTripPrice;
	private String fieldTripContextDescription;
	private Long fieldTripDetailId;
	private String fieldTripDetailContext;
	private String fieldTripDetailInstitutionInfo;
	private String fieldTripDetailUseTime;
	private String fieldTripDetailRefundPolicy;
	
	public FieldTripDetailDTO() {;}

	public Long getFieldTripId() {
		return fieldTripId;
	}

	public void setFieldTripId(Long fieldTripId) {
		this.fieldTripId = fieldTripId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getFieldTripName() {
		return fieldTripName;
	}

	public void setFieldTripName(String fieldTripName) {
		this.fieldTripName = fieldTripName;
	}

	public String getFieldTripRegistationDate() {
		return fieldTripRegistationDate;
	}

	public void setFieldTripRegistationDate(String fieldTripRegistationDate) {
		this.fieldTripRegistationDate = fieldTripRegistationDate;
	}

	public String getFieldTripDeadlineDate() {
		return fieldTripDeadlineDate;
	}

	public void setFieldTripDeadlineDate(String fieldTripDeadlineDate) {
		this.fieldTripDeadlineDate = fieldTripDeadlineDate;
	}

	public String getFieldTripProgramDate() {
		return fieldTripProgramDate;
	}

	public void setFieldTripProgramDate(String fieldTripProgramDate) {
		this.fieldTripProgramDate = fieldTripProgramDate;
	}

	public String getFieldTripPlace() {
		return fieldTripPlace;
	}

	public void setFieldTripPlace(String fieldTripPlace) {
		this.fieldTripPlace = fieldTripPlace;
	}

	public int getFieldTripPrice() {
		return fieldTripPrice;
	}

	public void setFieldTripPrice(int fieldTripPrice) {
		this.fieldTripPrice = fieldTripPrice;
	}

	public String getFieldTripContextDescription() {
		return fieldTripContextDescription;
	}

	public void setFieldTripContextDescription(String fieldTripContextDescription) {
		this.fieldTripContextDescription = fieldTripContextDescription;
	}

	public Long getFieldTripDetailId() {
		return fieldTripDetailId;
	}

	public void setFieldTripDetailId(Long fieldTripDetailId) {
		this.fieldTripDetailId = fieldTripDetailId;
	}

	public String getFieldTripDetailContext() {
		return fieldTripDetailContext;
	}

	public void setFieldTripDetailContext(String fieldTripDetailContext) {
		this.fieldTripDetailContext = fieldTripDetailContext;
	}

	public String getFieldTripDetailInstitutionInfo() {
		return fieldTripDetailInstitutionInfo;
	}

	public void setFieldTripDetailInstitutionInfo(String fieldTripDetailInstitutionInfo) {
		this.fieldTripDetailInstitutionInfo = fieldTripDetailInstitutionInfo;
	}

	public String getFieldTripDetailUseTime() {
		return fieldTripDetailUseTime;
	}

	public void setFieldTripDetailUseTime(String fieldTripDetailUseTime) {
		this.fieldTripDetailUseTime = fieldTripDetailUseTime;
	}

	public String getFieldTripDetailRefundPolicy() {
		return fieldTripDetailRefundPolicy;
	}

	public void setFieldTripDetailRefundPolicy(String fieldTripDetailRefundPolicy) {
		this.fieldTripDetailRefundPolicy = fieldTripDetailRefundPolicy;
	}

	@Override
	public String toString() {
		return "FieldTripDetailDTO [fieldTripId=" + fieldTripId + ", userId=" + userId + ", categoryId=" + categoryId
				+ ", fieldTripName=" + fieldTripName + ", fieldTripRegistationDate=" + fieldTripRegistationDate
				+ ", fieldTripDeadlineDate=" + fieldTripDeadlineDate + ", fieldTripProgramDate=" + fieldTripProgramDate
				+ ", fieldTripPlace=" + fieldTripPlace + ", fieldTripPrice=" + fieldTripPrice
				+ ", fieldTripContextDescription=" + fieldTripContextDescription + ", fieldTripDetailId="
				+ fieldTripDetailId + ", fieldTripDetailContext=" + fieldTripDetailContext
				+ ", fieldTripDetailInstitutionInfo=" + fieldTripDetailInstitutionInfo + ", fieldTripDetailUseTime="
				+ fieldTripDetailUseTime + ", fieldTripDetailRefundPolicy=" + fieldTripDetailRefundPolicy + "]";
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
		FieldTripDetailDTO other = (FieldTripDetailDTO) obj;
		if (fieldTripId == null) {
			if (other.fieldTripId != null)
				return false;
		} else if (!fieldTripId.equals(other.fieldTripId))
			return false;
		return true;
	}

}
