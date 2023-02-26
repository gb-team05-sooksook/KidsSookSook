package com.app.fieldTrip.domain;

public class ReviewFileVO {
	Long reviewFileId;
	Long reviewId;
	String reviewFileFilePath;
	String reviewFileSystemName;
	String reviewFileOrgName;
	
	public ReviewFileVO() {;}

	public Long getReviewFileId() {
		return reviewFileId;
	}

	public void setReviewFileId(Long reviewFileId) {
		this.reviewFileId = reviewFileId;
	}

	public Long getReviewId() {
		return reviewId;
	}

	public void setReviewId(Long reviewId) {
		this.reviewId = reviewId;
	}

	public String getReviewFileFilePath() {
		return reviewFileFilePath;
	}

	public void setReviewFileFilePath(String reviewFileFilePath) {
		this.reviewFileFilePath = reviewFileFilePath;
	}

	public String getReviewFileSystemName() {
		return reviewFileSystemName;
	}

	public void setReviewFileSystemName(String reviewFileSystemName) {
		this.reviewFileSystemName = reviewFileSystemName;
	}

	public String getReviewFileOrgName() {
		return reviewFileOrgName;
	}

	public void setReviewFileOrgName(String reviewFileOrgName) {
		this.reviewFileOrgName = reviewFileOrgName;
	}

	@Override
	public String toString() {
		return "ReviewFileVO [reviewFileId=" + reviewFileId + ", reviewId=" + reviewId + ", reviewFileFilePath="
				+ reviewFileFilePath + ", reviewFileSystemName=" + reviewFileSystemName + ", reviewFileOrgName="
				+ reviewFileOrgName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((reviewFileId == null) ? 0 : reviewFileId.hashCode());
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
		ReviewFileVO other = (ReviewFileVO) obj;
		if (reviewFileId == null) {
			if (other.reviewFileId != null)
				return false;
		} else if (!reviewFileId.equals(other.reviewFileId))
			return false;
		return true;
	}
	
}
