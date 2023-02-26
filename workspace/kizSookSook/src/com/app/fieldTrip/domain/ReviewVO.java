package com.app.fieldTrip.domain;

public class ReviewVO {
 	Long reviewId;
	Long userId;
	Long fieldTripId;
	String reviewWriteDate;
	String reviewAlterDate;
	int reviewGood;
	String reviewTitle;
	String reviewContext;
	
	public ReviewVO() {;}

	public Long getReviewId() {
		return reviewId;
	}

	public void setReviewId(Long reviewId) {
		this.reviewId = reviewId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getFieldTripId() {
		return fieldTripId;
	}

	public void setFieldTripId(Long fieldTripId) {
		this.fieldTripId = fieldTripId;
	}

	public String getReviewWriteDate() {
		return reviewWriteDate;
	}

	public void setReviewWriteDate(String reviewWriteDate) {
		this.reviewWriteDate = reviewWriteDate;
	}

	public String getReviewAlterDate() {
		return reviewAlterDate;
	}

	public void setReviewAlterDate(String reviewAlterDate) {
		this.reviewAlterDate = reviewAlterDate;
	}

	public int getReviewGood() {
		return reviewGood;
	}

	public void setReviewGood(int reviewGood) {
		this.reviewGood = reviewGood;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContext() {
		return reviewContext;
	}

	public void setReviewContext(String reviewContext) {
		this.reviewContext = reviewContext;
	}

	@Override
	public String toString() {
		return "ReviewVO [reviewId=" + reviewId + ", userId=" + userId + ", fieldTripId=" + fieldTripId
				+ ", reviewWriteDate=" + reviewWriteDate + ", reviewAlterDate=" + reviewAlterDate + ", reviewGood="
				+ reviewGood + ", reviewTitle=" + reviewTitle + ", reviewContext=" + reviewContext + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((reviewId == null) ? 0 : reviewId.hashCode());
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
		ReviewVO other = (ReviewVO) obj;
		if (reviewId == null) {
			if (other.reviewId != null)
				return false;
		} else if (!reviewId.equals(other.reviewId))
			return false;
		return true;
	}
	
}
