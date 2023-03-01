package com.app.member.domain;

public class MemberDTO {
	private Long userId;
	private String memberName;
	private String memberNickname;
	private String memberGender;
	private String userIdentification;
	private String userEmail;
	private String userPhoneNumber;
	private String userAddress;
	private String userRegisterDate;
	
	public MemberDTO() {;}
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
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
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getUserIdentification() {
		return userIdentification;
	}
	public void setUserIdentification(String userIdentification) {
		this.userIdentification = userIdentification;
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
	public String toString() {
		return "MemberDTO [userId=" + userId + ", memberName=" + memberName + ", memberNickname=" + memberNickname
				+ ", memberGender=" + memberGender + ", userIdentification=" + userIdentification + ", userEmail="
				+ userEmail + ", userPhoneNumber=" + userPhoneNumber + ", userAddress=" + userAddress
				+ ", userRegisterDate=" + userRegisterDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberGender == null) ? 0 : memberGender.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
		result = prime * result + ((userAddress == null) ? 0 : userAddress.hashCode());
		result = prime * result + ((userEmail == null) ? 0 : userEmail.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result + ((userIdentification == null) ? 0 : userIdentification.hashCode());
		result = prime * result + ((userPhoneNumber == null) ? 0 : userPhoneNumber.hashCode());
		result = prime * result + ((userRegisterDate == null) ? 0 : userRegisterDate.hashCode());
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
		MemberDTO other = (MemberDTO) obj;
		if (memberGender == null) {
			if (other.memberGender != null)
				return false;
		} else if (!memberGender.equals(other.memberGender))
			return false;
		if (memberName == null) {
			if (other.memberName != null)
				return false;
		} else if (!memberName.equals(other.memberName))
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
			return false;
		if (userAddress == null) {
			if (other.userAddress != null)
				return false;
		} else if (!userAddress.equals(other.userAddress))
			return false;
		if (userEmail == null) {
			if (other.userEmail != null)
				return false;
		} else if (!userEmail.equals(other.userEmail))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (userIdentification == null) {
			if (other.userIdentification != null)
				return false;
		} else if (!userIdentification.equals(other.userIdentification))
			return false;
		if (userPhoneNumber == null) {
			if (other.userPhoneNumber != null)
				return false;
		} else if (!userPhoneNumber.equals(other.userPhoneNumber))
			return false;
		if (userRegisterDate == null) {
			if (other.userRegisterDate != null)
				return false;
		} else if (!userRegisterDate.equals(other.userRegisterDate))
			return false;
		return true;
	}
	
	
}
