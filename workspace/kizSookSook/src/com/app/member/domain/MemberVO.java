package com.app.member.domain;

public class MemberVO {
	private Long memberId;
	private String memberIdentification;
	private String memberPhoneNumber;
	private String memberGender;
	
	public MemberVO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberIdentification() {
		return memberIdentification;
	}

	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}

	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}

	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberIdentification=" + memberIdentification
				+ ", memberPhoneNumber=" + memberPhoneNumber + ", memberGender=" + memberGender + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
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
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
}
