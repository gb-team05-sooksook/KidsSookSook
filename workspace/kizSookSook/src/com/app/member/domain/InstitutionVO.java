package com.app.member.domain;

public class InstitutionVO {
	private Long institutionId;
	private String institutionName;
	private String institutionBusinessNumber;
	
	public InstitutionVO() {;}

	public Long getInstitutionId() {
		return institutionId;
	}

	public void setInstitutionId(Long institutionId) {
		this.institutionId = institutionId;
	}

	public String getInstitutionName() {
		return institutionName;
	}

	public void setInstitutionName(String institutionName) {
		this.institutionName = institutionName;
	}

	public String getInstitutionBusinessNumber() {
		return institutionBusinessNumber;
	}

	public void setInstitutionBusinessNumber(String institutionBusinessNumber) {
		this.institutionBusinessNumber = institutionBusinessNumber;
	}

	@Override
	public String toString() {
		return "InstitutionVO [institutionId=" + institutionId + ", institutionName=" + institutionName
				+ ", institutionBusinessNumber=" + institutionBusinessNumber + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((institutionId == null) ? 0 : institutionId.hashCode());
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
		InstitutionVO other = (InstitutionVO) obj;
		if (institutionId == null) {
			if (other.institutionId != null)
				return false;
		} else if (!institutionId.equals(other.institutionId))
			return false;
		return true;
	}
	
}
