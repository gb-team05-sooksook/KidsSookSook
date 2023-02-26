package com.app.fieldTrip.domain;

public class FieldTripRecommendVO {
	Long fieldTripRecommendId;
	Long userId;
	Long fieldTripId;
	
	public FieldTripRecommendVO() {;}

	public Long getFieldTripRecommendId() {
		return fieldTripRecommendId;
	}

	public void setFieldTripRecommendId(Long fieldTripRecommendId) {
		this.fieldTripRecommendId = fieldTripRecommendId;
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

	@Override
	public String toString() {
		return "FieldTripRecommendVO [fieldTripRecommendId=" + fieldTripRecommendId + ", userId=" + userId
				+ ", fieldTripId=" + fieldTripId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fieldTripRecommendId == null) ? 0 : fieldTripRecommendId.hashCode());
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
		FieldTripRecommendVO other = (FieldTripRecommendVO) obj;
		if (fieldTripRecommendId == null) {
			if (other.fieldTripRecommendId != null)
				return false;
		} else if (!fieldTripRecommendId.equals(other.fieldTripRecommendId))
			return false;
		return true;
	}
	
}
