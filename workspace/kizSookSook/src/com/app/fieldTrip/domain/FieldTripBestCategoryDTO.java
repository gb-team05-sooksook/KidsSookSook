package com.app.fieldTrip.domain;

public class FieldTripBestCategoryDTO {
	private Long fieldTripId;
	private Long categoryId;
	private String categoryName;
	private Long userId;
	private String fieldTripName;
	private String fieldTripRegistationDate; 
	private String fieldTripDeadlineDate;
	private String fieldTripProgramDate; 
	private String fieldTripPlace;
	private String fieldTripPrice;
	private String fieldTripContextDescription;
	private int sumHeadCount;
	private String fieldTripSystemName; 
	private String fieldTripOrgName;
	
	public FieldTripBestCategoryDTO() {;}

	public Long getFieldTripId() {
		return fieldTripId;
	}

	public void setFieldTripId(Long fieldTripId) {
		this.fieldTripId = fieldTripId;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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

	public String getFieldTripPrice() {
		return fieldTripPrice;
	}

	public void setFieldTripPrice(String fieldTripPrice) {
		this.fieldTripPrice = fieldTripPrice;
	}

	public String getFieldTripContextDescription() {
		return fieldTripContextDescription;
	}

	public void setFieldTripContextDescription(String fieldTripContextDescription) {
		this.fieldTripContextDescription = fieldTripContextDescription;
	}

	public int getSumHeadCount() {
		return sumHeadCount;
	}

	public void setSumHeadCount(int sumHeadCount) {
		this.sumHeadCount = sumHeadCount;
	}

	public String getFieldTripSystemName() {
		return fieldTripSystemName;
	}

	public void setFieldTripSystemName(String fieldTripSystemName) {
		this.fieldTripSystemName = fieldTripSystemName;
	}

	public String getFieldTripOrgName() {
		return fieldTripOrgName;
	}

	public void setFieldTripOrgName(String fieldTripOrgName) {
		this.fieldTripOrgName = fieldTripOrgName;
	}

	@Override
	public String toString() {
		return "FieldTripBestCategoryDTO [fieldTripId=" + fieldTripId + ", categoryId=" + categoryId + ", categoryName="
				+ categoryName + ", userId=" + userId + ", fieldTripName=" + fieldTripName
				+ ", fieldTripRegistationDate=" + fieldTripRegistationDate + ", fieldTripDeadlineDate="
				+ fieldTripDeadlineDate + ", fieldTripProgramDate=" + fieldTripProgramDate + ", fieldTripPlace="
				+ fieldTripPlace + ", fieldTripPrice=" + fieldTripPrice + ", fieldTripContextDescription="
				+ fieldTripContextDescription + ", sumHeadCount=" + sumHeadCount + ", fieldTripSystemName="
				+ fieldTripSystemName + ", fieldTripOrgName=" + fieldTripOrgName + "]";
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
		FieldTripBestCategoryDTO other = (FieldTripBestCategoryDTO) obj;
		if (fieldTripId == null) {
			if (other.fieldTripId != null)
				return false;
		} else if (!fieldTripId.equals(other.fieldTripId))
			return false;
		return true;
	}
	
}