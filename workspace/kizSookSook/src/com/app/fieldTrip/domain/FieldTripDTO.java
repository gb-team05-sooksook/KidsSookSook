package com.app.fieldTrip.domain;

public class FieldTripDTO {
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
	private String categoryName;
	private String field_trip_filePath;
	private String field_trip_system_name;
	private String field_trip_org_name;
	
	public FieldTripDTO() {;}

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

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getField_trip_filePath() {
		return field_trip_filePath;
	}

	public void setField_trip_filePath(String field_trip_filePath) {
		this.field_trip_filePath = field_trip_filePath;
	}

	public String getField_trip_system_name() {
		return field_trip_system_name;
	}

	public void setField_trip_system_name(String field_trip_system_name) {
		this.field_trip_system_name = field_trip_system_name;
	}

	public String getField_trip_org_name() {
		return field_trip_org_name;
	}

	public void setField_trip_org_name(String field_trip_org_name) {
		this.field_trip_org_name = field_trip_org_name;
	}

	@Override
	public String toString() {
		return "FieldTripDTO [fieldTripId=" + fieldTripId + ", userId=" + userId + ", categoryId=" + categoryId
				+ ", fieldTripName=" + fieldTripName + ", fieldTripRegistationDate=" + fieldTripRegistationDate
				+ ", fieldTripDeadlineDate=" + fieldTripDeadlineDate + ", fieldTripProgramDate=" + fieldTripProgramDate
				+ ", fieldTripPlace=" + fieldTripPlace + ", fieldTripPrice=" + fieldTripPrice
				+ ", fieldTripContextDescription=" + fieldTripContextDescription + ", categoryName=" + categoryName
				+ ", field_trip_filePath=" + field_trip_filePath + ", field_trip_system_name=" + field_trip_system_name
				+ ", field_trip_org_name=" + field_trip_org_name + "]";
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
		FieldTripDTO other = (FieldTripDTO) obj;
		if (fieldTripId == null) {
			if (other.fieldTripId != null)
				return false;
		} else if (!fieldTripId.equals(other.fieldTripId))
			return false;
		return true;
	}

}
