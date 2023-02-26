package com.app.member.domain;

public class InstitutionVO {
	private Long userId;
	private String userIdentification;
	private String userPassword;
	private String userEmail;
	private String userAddress;
	private String userRegister;
	
	public InstitutionVO() {;}

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

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserRegister() {
		return userRegister;
	}

	public void setUserRegister(String userRegister) {
		this.userRegister = userRegister;
	}

	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userIdentification=" + userIdentification + ", userPassword="
				+ userPassword + ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", userRegister="
				+ userRegister + "]";
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
		InstitutionVO other = (InstitutionVO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}


	
	
	
}
