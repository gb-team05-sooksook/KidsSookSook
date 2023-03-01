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

	@Override
	public String toString() {
		return "FieldTripDTO [fieldTripId=" + fieldTripId + ", userId=" + userId + ", categoryId=" + categoryId
				+ ", fieldTripName=" + fieldTripName + ", fieldTripRegistationDate=" + fieldTripRegistationDate
				+ ", fieldTripDeadlineDate=" + fieldTripDeadlineDate + ", fieldTripProgramDate=" + fieldTripProgramDate
				+ ", fieldTripPlace=" + fieldTripPlace + ", fieldTripPrice=" + fieldTripPrice
				+ ", fieldTripContextDescription=" + fieldTripContextDescription + ", categoryName=" + categoryName
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((categoryId == null) ? 0 : categoryId.hashCode());
		result = prime * result + ((categoryName == null) ? 0 : categoryName.hashCode());
		result = prime * result + ((fieldTripContextDescription == null) ? 0 : fieldTripContextDescription.hashCode());
		result = prime * result + ((fieldTripDeadlineDate == null) ? 0 : fieldTripDeadlineDate.hashCode());
		result = prime * result + ((fieldTripId == null) ? 0 : fieldTripId.hashCode());
		result = prime * result + ((fieldTripName == null) ? 0 : fieldTripName.hashCode());
		result = prime * result + ((fieldTripPlace == null) ? 0 : fieldTripPlace.hashCode());
		result = prime * result + fieldTripPrice;
		result = prime * result + ((fieldTripProgramDate == null) ? 0 : fieldTripProgramDate.hashCode());
		result = prime * result + ((fieldTripRegistationDate == null) ? 0 : fieldTripRegistationDate.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
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
		if (categoryId == null) {
			if (other.categoryId != null)
				return false;
		} else if (!categoryId.equals(other.categoryId))
			return false;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (fieldTripContextDescription == null) {
			if (other.fieldTripContextDescription != null)
				return false;
		} else if (!fieldTripContextDescription.equals(other.fieldTripContextDescription))
			return false;
		if (fieldTripDeadlineDate == null) {
			if (other.fieldTripDeadlineDate != null)
				return false;
		} else if (!fieldTripDeadlineDate.equals(other.fieldTripDeadlineDate))
			return false;
		if (fieldTripId == null) {
			if (other.fieldTripId != null)
				return false;
		} else if (!fieldTripId.equals(other.fieldTripId))
			return false;
		if (fieldTripName == null) {
			if (other.fieldTripName != null)
				return false;
		} else if (!fieldTripName.equals(other.fieldTripName))
			return false;
		if (fieldTripPlace == null) {
			if (other.fieldTripPlace != null)
				return false;
		} else if (!fieldTripPlace.equals(other.fieldTripPlace))
			return false;
		if (fieldTripPrice != other.fieldTripPrice)
			return false;
		if (fieldTripProgramDate == null) {
			if (other.fieldTripProgramDate != null)
				return false;
		} else if (!fieldTripProgramDate.equals(other.fieldTripProgramDate))
			return false;
		if (fieldTripRegistationDate == null) {
			if (other.fieldTripRegistationDate != null)
				return false;
		} else if (!fieldTripRegistationDate.equals(other.fieldTripRegistationDate))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

	
}
