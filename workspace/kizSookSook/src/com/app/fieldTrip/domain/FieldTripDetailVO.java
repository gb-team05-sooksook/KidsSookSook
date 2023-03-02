package com.app.fieldTrip.domain;

public class FieldTripDetailVO {
	private Long fieldTripDetailId;
	private Long fieldTripId;
	private String fieldTripDetailContext;
	private String fieldTripDetailInstitutionInfo;
	private String fieldTripDetailUseTime;
	private String fieldTripDetailRefundPolicy;
	
	public FieldTripDetailVO() {;}

	public Long getFieldTripDetailId() {
		return fieldTripDetailId;
	}

	public void setFieldTripDetailId(Long fieldTripDetailId) {
		this.fieldTripDetailId = fieldTripDetailId;
	}

	public Long getFieldTripId() {
		return fieldTripId;
	}

	public void setFieldTripId(Long fieldTripId) {
		this.fieldTripId = fieldTripId;
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
		return "FieldTripDetailVO [fieldTripDetailId=" + fieldTripDetailId + ", fieldTripId=" + fieldTripId
				+ ", fieldTripDetailContext=" + fieldTripDetailContext + ", fieldTripDetailInstitutionInfo="
				+ fieldTripDetailInstitutionInfo + ", fieldTripDetailUseTime=" + fieldTripDetailUseTime
				+ ", fieldTripDetailRefundPolicy=" + fieldTripDetailRefundPolicy + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fieldTripDetailId == null) ? 0 : fieldTripDetailId.hashCode());
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
		FieldTripDetailVO other = (FieldTripDetailVO) obj;
		if (fieldTripDetailId == null) {
			if (other.fieldTripDetailId != null)
				return false;
		} else if (!fieldTripDetailId.equals(other.fieldTripDetailId))
			return false;
		return true;
	}
	
}
