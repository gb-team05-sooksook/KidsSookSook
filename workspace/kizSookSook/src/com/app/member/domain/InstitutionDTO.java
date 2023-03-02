package com.app.member.domain;

public class InstitutionDTO {
	private String institutionName;
	private String institutionBusinessNumber;
	private Long userId;
	private String userIdentification;
	private String userPassword;
	private String userEmail;
	private String userPhoneNumber;
	private String userAddress;
	private String userRegisterDate;
	
	public InstitutionDTO() {;}
	
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
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getUserIdentification() {
		return userIdentification;
	}
	public void setUserIdentification(String userIdentification) {
		this.userIdentification = userIdentification;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}
	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserRegisterDate() {
		return userRegisterDate;
	}
	public void setUserRegisterDate(String userRegisterDate) {
		this.userRegisterDate = userRegisterDate;
	}

	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		InstitutionDTO other = (InstitutionDTO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "InstitutionDTO [institutionName=" + institutionName + ", institutionBusinessNumber="
				+ institutionBusinessNumber + ", userId=" + userId + ", userIdentification=" + userIdentification
				+ ", userPassword=" + userPassword + ", userEmail=" + userEmail + ", userPhoneNumber=" + userPhoneNumber
				+ ", userAddress=" + userAddress + ", userRegisterDate=" + userRegisterDate + "]";
	}
}
