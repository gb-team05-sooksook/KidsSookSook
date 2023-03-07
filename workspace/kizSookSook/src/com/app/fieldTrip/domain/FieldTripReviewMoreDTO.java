package com.app.fieldTrip.domain;

import java.util.List;

public class FieldTripReviewMoreDTO {
	private List<FieldTripReviewDTO> fieldTripReviewDTOs;
	private boolean isNextPage;
	
	public FieldTripReviewMoreDTO() {;}

	public List<FieldTripReviewDTO> getFieldTripReviewDTOs() {
		return fieldTripReviewDTOs;
	}

	public void setFieldTripReviewDTOs(List<FieldTripReviewDTO> fieldTripReviewDTOs) {
		this.fieldTripReviewDTOs = fieldTripReviewDTOs;
	}

	public boolean isNextPage() {
		return isNextPage;
	}

	public void setNextPage(boolean isNextPage) {
		this.isNextPage = isNextPage;
	}

	@Override
	public String toString() {
		return "FieldTripReviewMoreDTO [fieldTripReviewDTOs=" + fieldTripReviewDTOs + ", isNextPage=" + isNextPage
				+ "]";
	}
}
