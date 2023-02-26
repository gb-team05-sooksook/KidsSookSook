package com.app.notice.domain;

public class EnquiryFileVO {
	private Long enquiryFileId;
	private Long enquiryId;
	private String enquiryFilePath;
	private String enquiryFileSystemName;
	private String enquiryFileOrgName;
	
	public EnquiryFileVO() {;}

	public Long getEnquiryFileId() {
		return enquiryFileId;
	}

	public void setEnquiryFileId(Long enquiryFileId) {
		this.enquiryFileId = enquiryFileId;
	}

	public Long getEnquiryId() {
		return enquiryId;
	}

	public void setEnquiryId(Long enquiryId) {
		this.enquiryId = enquiryId;
	}

	public String getEnquiryFilePath() {
		return enquiryFilePath;
	}

	public void setEnquiryFilePath(String enquiryFilePath) {
		this.enquiryFilePath = enquiryFilePath;
	}

	public String getEnquiryFileSystemName() {
		return enquiryFileSystemName;
	}

	public void setEnquiryFileSystemName(String enquiryFileSystemName) {
		this.enquiryFileSystemName = enquiryFileSystemName;
	}

	public String getEnquiryFileOrgName() {
		return enquiryFileOrgName;
	}

	public void setEnquiryFileOrgName(String enquiryFileOrgName) {
		this.enquiryFileOrgName = enquiryFileOrgName;
	}

	@Override
	public String toString() {
		return "EnquiryFileVO [enquiryFileId=" + enquiryFileId + ", enquiryId=" + enquiryId + ", enquiryFilePath="
				+ enquiryFilePath + ", enquiryFileSystemName=" + enquiryFileSystemName + ", enquiryFileOrgName="
				+ enquiryFileOrgName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((enquiryFileId == null) ? 0 : enquiryFileId.hashCode());
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
		EnquiryFileVO other = (EnquiryFileVO) obj;
		if (enquiryFileId == null) {
			if (other.enquiryFileId != null)
				return false;
		} else if (!enquiryFileId.equals(other.enquiryFileId))
			return false;
		return true;
	}
	
}
