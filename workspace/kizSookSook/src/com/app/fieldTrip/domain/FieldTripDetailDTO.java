package com.app.fieldTrip.domain;

public class FieldTripDetailDTO {
	private Long fieldTripFileId;
	private Long fieldTripId;
	private Long fieldTripDetailId;
	private String fieldTripFilePath;
	private String fieldTripSystemName;
	private String fieldTripOrgName;
	private String fieldTripDetailContext;
	private String fieldTripDetailInstitutionInfo;
	private String fieldTripDetailUseTime;
	private String fieldTripDetailRefundPolicy;
	
	public FieldTripDetailDTO() {;}

	public Long getFieldTripFileId() {
		return fieldTripFileId;
	}

	public void setFieldTripFileId(Long fieldTripFileId) {
		this.fieldTripFileId = fieldTripFileId;
	}

	public Long getFieldTripId() {
		return fieldTripId;
	}

	public void setFieldTripId(Long fieldTripId) {
		this.fieldTripId = fieldTripId;
	}

	public Long getFieldTripDetailId() {
		return fieldTripDetailId;
	}

	public void setFieldTripDetailId(Long fieldTripDetailId) {
		this.fieldTripDetailId = fieldTripDetailId;
	}

	public String getFieldTripFilePath() {
		return fieldTripFilePath;
	}

	public void setFieldTripFilePath(String fieldTripFilePath) {
		this.fieldTripFilePath = fieldTripFilePath;
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
		return "FieldTripDetailDTO [fieldTripFileId=" + fieldTripFileId + ", fieldTripId=" + fieldTripId
				+ ", fieldTripDetailId=" + fieldTripDetailId + ", fieldTripFilePath=" + fieldTripFilePath
				+ ", fieldTripSystemName=" + fieldTripSystemName + ", fieldTripOrgName=" + fieldTripOrgName
				+ ", fieldTripDetailContext=" + fieldTripDetailContext + ", fieldTripDetailInstitutionInfo="
				+ fieldTripDetailInstitutionInfo + ", fieldTripDetailUseTime=" + fieldTripDetailUseTime
				+ ", fieldTripDetailRefundPolicy=" + fieldTripDetailRefundPolicy + "]";
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
