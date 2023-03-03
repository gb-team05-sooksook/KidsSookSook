package com.app.member.domain;

public class MemberVO {
	private Long userId;
	private String userIdentification;
	private String userPassword;
	private String userEmail;
	private String userPhoneNumber;
	private String userAddress;
	private String userRegisterDate;
	
	private String memberName;
	private String memberNickname;
	private String memberGender;
	
	private String institutionName;
	private String institutionBusinessNumber;
	
	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public MemberVO() {;}

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

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
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
		MemberVO other = (MemberVO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MemberVO [userId=" + userId + ", userIdentification=" + userIdentification + ", userPassword="
				+ userPassword + ", userEmail=" + userEmail + ", userPhoneNumber=" + userPhoneNumber + ", userAddress="
				+ userAddress + ", userRegisterDate=" + userRegisterDate + ", memberName=" + memberName
				+ ", memberNickname=" + memberNickname + ", memberGender=" + memberGender + ", institutionName="
				+ institutionName + ", institutionBusinessNumber=" + institutionBusinessNumber + "]";
	}


	
}
