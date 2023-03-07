/**
 * 
 */
 
showReview();

function showReview() {
	fieldTripReviews = JSON.parse(fieldTripReviews);
	
	let text = "";
	fieldTripReviews.forEach(fieldTripReview => {
		text += `
			<div class="review-list">
                <div class="review-list-containal">
                    <div class="review-list-person">
                        <div class="review-list-person-profile">
                            <img src="${contextPath}/upload/${fieldTripReview.SystemName}" class="review-list-person-profile-img">
                        </div>
                        <div class="review-list-person-profile-next">
                            <div class="review-list-person-profile-nikename">${fieldTripReview.fieldTripNickName}</div>
                            <div class="review-list-person-profile-star-containal">
                                <div class="review-list-person-score-next-date">${fieldTripReview.reviewWriteDate}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="person-review-containel">
                    <div class="person-review-wrapper">
                        <p class="person-review-write">${fieldTripReview.reviewContext}
                        </p>
                    </div>
                </div>
            </div>
		`;
	});
	$('.review-div').append(text);
}