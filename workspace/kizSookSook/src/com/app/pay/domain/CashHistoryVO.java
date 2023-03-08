package com.app.pay.domain;

public class CashHistoryVO {
	Long cash_history_id;
	Long user_id;
	int payment_cash;
	int review_cash;
	String cash_save_date;
	String review_save_date;
	
	public CashHistoryVO() {;}

	public Long getCash_history_id() {
		return cash_history_id;
	}

	public void setCash_history_id(Long cash_history_id) {
		this.cash_history_id = cash_history_id;
	}

	public Long getUser_id() {
		return user_id;
	}

	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}

	public int getPayment_cash() {
		return payment_cash;
	}

	public void setPayment_cash(int payment_cash) {
		this.payment_cash = payment_cash;
	}

	public int getReview_cash() {
		return review_cash;
	}

	public void setReview_cash(int review_cash) {
		this.review_cash = review_cash;
	}

	public String getCash_save_date() {
		return cash_save_date;
	}

	public void setCash_save_date(String cash_save_date) {
		this.cash_save_date = cash_save_date;
	}

	public String getReview_save_date() {
		return review_save_date;
	}

	public void setReview_save_date(String review_save_date) {
		this.review_save_date = review_save_date;
	}

	@Override
	public String toString() {
		return "CashHistoryVO [cash_history_id=" + cash_history_id + ", user_id=" + user_id + ", payment_cash="
				+ payment_cash + ", review_cash=" + review_cash + ", cash_save_date=" + cash_save_date
				+ ", review_save_date=" + review_save_date + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cash_history_id == null) ? 0 : cash_history_id.hashCode());
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
		CashHistoryVO other = (CashHistoryVO) obj;
		if (cash_history_id == null) {
			if (other.cash_history_id != null)
				return false;
		} else if (!cash_history_id.equals(other.cash_history_id))
			return false;
		return true;
	}
	
}
