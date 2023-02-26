package com.app.member.domain;

public class CashVO {
	private Long cashId;
	private Long userId;
	private int paymentCash;
	private int reviewCash;
	private String cashSaveDate;
	private String reviewSaveDate;
	
	public CashVO() {;}

	public Long getCashId() {
		return cashId;
	}

	public void setCashId(Long cashId) {
		this.cashId = cashId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public int getPaymentCash() {
		return paymentCash;
	}

	public void setPaymentCash(int paymentCash) {
		this.paymentCash = paymentCash;
	}

	public int getReviewCash() {
		return reviewCash;
	}

	public void setReviewCash(int reviewCash) {
		this.reviewCash = reviewCash;
	}

	public String getCashSaveDate() {
		return cashSaveDate;
	}

	public void setCashSaveDate(String cashSaveDate) {
		this.cashSaveDate = cashSaveDate;
	}

	public String getReviewSaveDate() {
		return reviewSaveDate;
	}

	public void setReviewSaveDate(String reviewSaveDate) {
		this.reviewSaveDate = reviewSaveDate;
	}

	@Override
	public String toString() {
		return "CashVO [cashId=" + cashId + ", userId=" + userId + ", paymentCash=" + paymentCash + ", reviewCash="
				+ reviewCash + ", cashSaveDate=" + cashSaveDate + ", reviewSaveDate=" + reviewSaveDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cashId == null) ? 0 : cashId.hashCode());
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
		CashVO other = (CashVO) obj;
		if (cashId == null) {
			if (other.cashId != null)
				return false;
		} else if (!cashId.equals(other.cashId))
			return false;
		return true;
	}
	
}
