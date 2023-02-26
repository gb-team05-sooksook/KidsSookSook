package com.app.member.domain;

public class InstitutionFileVO {
	private Long institutionFileId;
	private Long institutionInstitutionId;
	private String institutionFilePath;
	private String institutionSystemName;
	private String institutionOrgName;
	
	public InstitutionFileVO() {;}

	public Long getInstitutionFileId() {
		return institutionFileId;
	}

	public void setInstitutionFileId(Long institutionFileId) {
		this.institutionFileId = institutionFileId;
	}

	public Long getInstitutionInstitutionId() {
		return institutionInstitutionId;
	}

	public void setInstitutionInstitutionId(Long institutionInstitutionId) {
		this.institutionInstitutionId = institutionInstitutionId;
	}

	public String getInstitutionFilePath() {
		return institutionFilePath;
	}

	public void setInstitutionFilePath(String institutionFilePath) {
		this.institutionFilePath = institutionFilePath;
	}

	public String getInstitutionSystemName() {
		return institutionSystemName;
	}

	public void setInstitutionSystemName(String institutionSystemName) {
		this.institutionSystemName = institutionSystemName;
	}

	public String getInstitutionOrgName() {
		return institutionOrgName;
	}

	public void setInstitutionOrgName(String institutionOrgName) {
		this.institutionOrgName = institutionOrgName;
	}

	@Override
	public String toString() {
		return "InstitutionFileVO [institutionFileId=" + institutionFileId + ", institutionInstitutionId="
				+ institutionInstitutionId + ", institutionFilePath=" + institutionFilePath + ", institutionSystemName="
				+ institutionSystemName + ", institutionOrgName=" + institutionOrgName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((institutionFileId == null) ? 0 : institutionFileId.hashCode());
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
		InstitutionFileVO other = (InstitutionFileVO) obj;
		if (institutionFileId == null) {
			if (other.institutionFileId != null)
				return false;
		} else if (!institutionFileId.equals(other.institutionFileId))
			return false;
		return true;
	}
	
}
