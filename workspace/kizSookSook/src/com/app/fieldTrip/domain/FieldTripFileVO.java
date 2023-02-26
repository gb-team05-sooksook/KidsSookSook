package com.app.fieldTrip.domain;

public class FieldTripFileVO {
	private Long fieldTripFileId;
	private Long fieldTripId;
	private String fieldTripFilePath;
	private String fieldTripSystemName;
	private String fieldTripOrgName;
	
	public FieldTripFileVO() {;}

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

	@Override
	public String toString() {
		return "FieldTripFileVO [fieldTripFileId=" + fieldTripFileId + ", fieldTripId=" + fieldTripId
				+ ", fieldTripFilePath=" + fieldTripFilePath + ", fieldTripSystemName=" + fieldTripSystemName
				+ ", fieldTripOrgName=" + fieldTripOrgName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fieldTripFileId == null) ? 0 : fieldTripFileId.hashCode());
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
		FieldTripFileVO other = (FieldTripFileVO) obj;
		if (fieldTripFileId == null) {
			if (other.fieldTripFileId != null)
				return false;
		} else if (!fieldTripFileId.equals(other.fieldTripFileId))
			return false;
		return true;
	}
	
}
