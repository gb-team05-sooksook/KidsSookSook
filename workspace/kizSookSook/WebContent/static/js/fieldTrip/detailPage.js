/**
 * 
 */
let page = 1;

const replyService = (function() {
	function list(callback) {
		$.ajax({
			url: contextPath + "/getReviewAction.fieldTrip",
			data: {fieldTripId: fieldTripId, page: page},
			dataType: "json",
			success: function(reviews){
				if(callback){
					callback(reviews);
				}
			}
		});
	}
	
	return{ list : list };
})();

$(".review-more-button").on("click", function(){
	page++;
	replyService.list(showList);
});

window.onload = function() {
	replyService.list(showList);
}

function showList(fieldTripReviewMoreDTO){
	$(".review-more-button").show();
	
	let reviews = fieldTripReviewMoreDTO.reviews;
	let text = "";
	
	if(!fieldTripReviewMoreDTO.isNextPage){
		$(".review-more-button").hide();
		
	}else{
		$(".review-more-button").show();
	}

	if(reviews.length == 0){
		text = `
			<h4>
				댓글이 없습니다.
			</h4>
		`
	}else {
		reviews.forEach(review => {
			text += `
				<div class="review-list">
	                <div class="review-list-containal">
	                    <div class="review-list-person">
	                        <div class="review-list-person-profile">
	                            <img src="${contextPath}/upload/${review.SystemName}" class="review-list-person-profile-img">
	                        </div>
	                        <div class="review-list-person-profile-next">
	                            <div class="review-list-person-profile-nikename">${review.fieldTripNickName}</div>
	                            <div class="review-list-person-profile-star-containal">
	                                <div class="review-list-person-score-next-date">${review.reviewWriteDate}</div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="person-review-containel">
	                    <div class="person-review-wrapper">
	                        <p class="person-review-write">${review.reviewContext}
	                        </p>
	                    </div>
	                </div>
	            </div>
			`
		});
	}
	$('.review-div').append(text);
}
