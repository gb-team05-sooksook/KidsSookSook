package com.app.member.domain;

public class MemberFileVO {
	private Long memberFileId;
	private Long memberMemberId;
	private String memberFilePath;
	private String memberSystemName;
	private String memberOrgName;
	
	public MemberFileVO() {;}

	public Long getMemberFileId() {
		return memberFileId;
	}

	public void setMemberFileId(Long memberFileId) {
		this.memberFileId = memberFileId;
	}

	public Long getMemberMemberId() {
		return memberMemberId;
	}

	public void setMemberMemberId(Long memberMemberId) {
		this.memberMemberId = memberMemberId;
	}

	public String getMemberFilePath() {
		return memberFilePath;
	}

	public void setMemberFilePath(String memberFilePath) {
		this.memberFilePath = memberFilePath;
	}

	public String getMemberSystemName() {
		return memberSystemName;
	}

	public void setMemberSystemName(String memberSystemName) {
		this.memberSystemName = memberSystemName;
	}

	public String getMemberOrgName() {
		return memberOrgName;
	}

	public void setMemberOrgName(String memberOrgName) {
		this.memberOrgName = memberOrgName;
	}

	@Override
	public String toString() {
		return "MemberFileVO [memberFileId=" + memberFileId + ", memberMemberId=" + memberMemberId + ", memberFilePath="
				+ memberFilePath + ", memberSystemName=" + memberSystemName + ", memberOrgName=" + memberOrgName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberFileId == null) ? 0 : memberFileId.hashCode());
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
		MemberFileVO other = (MemberFileVO) obj;
		if (memberFileId == null) {
			if (other.memberFileId != null)
				return false;
		} else if (!memberFileId.equals(other.memberFileId))
			return false;
		return true;
	}
	
}
