/*$.get(arraysObj.stageArr[0], function(data) {
	jqueryDomObj.load().$stage.append($(data).fadeIn());

	functionsObj.modal.service.excute();
	functionsObj.side.fontService.excute();
});*/

/* 체험학습 목록 */
function loadTrips(){
	showlist($("div.history-result-list"), function(){
		fieldTrips = JSON.parse(fieldTrips);
		var text = "";
	
		fieldTrips.forEach((fieldTrip) => {
			text += `
				<div class="history-result">
		            <div class="h_result-info">
		                <h4 class="h_title">${fieldTrip.fieldTripName}</h4>
		                <div class="h_details">
		                    <span class="h_category">${fieldTrip.categoryName}</span>
		                    <span class="h_date">${fieldTrip.fieldTripProgramDate}</span>
		                </div>
		            </div>
		            <div class="h_result-content">
		                <div>${fieldTrip.fieldTripContextDescription}</div>
		                <a href="javascript:functionsObj.modal.activateReviewModalService.excute()">리뷰 쓰기</a>
		            </div>
	       		 </div>
			`
		});
		
	return text;
	});
}

/* 내 문의 목록 조회*/
function loadEnquiries(){
	showlist($("div.history-result-list"), function(){
		enquiries = JSON.parse(enquiries);
		
		var text = "";
	
		enquiries.forEach((enquiry) => {
			text += `
				<div class="history-result-list">
		    		<div class="history-result">
	            		<div class="h_result-info">
			                <h4 class="h_title"><a href="">${enquiry.enquiryTitle}</a></h4>
			                <div class="h_details">
			                    <span class="h_category">${enquiry.enquiryConfirm}</span>
			                    <span class="h_date">${enquiry.enquiryDate}</span>
	                		</div>
	            		</div>
	            	<div class="h_result-content">
	                <div>${enquiry.enquiryContent}</div>
	            </div>
	        </div>
	    </div>
			`
		});
		
	return text;
	});
}

/* 내 캐시 목록 조회*/
function loadMyCash(){
	showlist($("div.history-result-list"), function(){
		cashes = JSON.parse(cashes);
		var text = "";
		cashes.forEach(cash => {
			text += `
				<div class="history-result-list">
		    		<div class="history-result">
	            		<div class="h_result-info">
			                <h4 class="h_title"><a href="">${cash.paymentCash}</a></h4>
			                <div class="h_details">
			                    <span class="h_category">${cash.cashSaveDate}</span>
	                		</div>
	            		</div>
	            	<div class="h_result-content">
	                <div>적립타입</div>
	            </div>
	        </div>
	    </div>
			`
		});
		
	return text;
	});
}



/* 내 후기 목록 조회*/
function loadMyReview(){
	showlist($("div.history-result-list"), function(){
		reviews = JSON.parse(reviews);
		var text = "";
		reviews.forEach(review => {
			text += `
				<div class="history-result-list">
		    		<div class="history-result">
	            		<div class="h_result-info">
			                <h4 class="h_title"><a href="">${review.reviewTitle}</a></h4>
			                <div class="h_details">
			                    <span class="h_category">${review.reviewAlterDate}</span>
	                		</div>
	            		</div>
	            	<div class="h_result-content">
	                <div>${review.reviewContext}</div>
	            </div>
	        </div>
	    </div>
			`
		});
		
	return text;
	});
}


function selectPages(index){
	jqueryDomObj.load().$stage.load(arraysObj.stageArr[index], () => {
		switch (index) {
			case 0:
				console.log('케이스 0들어옴');
				loadTrips();
				functionsObj.modal.service.excute();
				$("div.status-item-count").eq(0).find("a").text(scheduleFieldTripCount);
				$("div.status-item-count").eq(1).find("a").text(completeFieldTripCount);
				$("div.status-item-count").eq(2).find("a").text(parseInt(scheduleFieldTripCount)+parseInt(completeFieldTripCount));
				break;
			case 1:
				console.log('케이스 1들어옴');
				loadMyCash();
				functionsObj.modal.service.excute();
				break;
			case 2:
				console.log('케이스 2들어옴');
				// functionsObj.myInfo.loadAdressAPI();
				functionsObj.myInfo.openAdress.excute();
				functionsObj.myInfo.inputCheckService.excute();
				break;
			case 3:
				console.log('케이스 3들어옴');
				loadMyReview();
				functionsObj.modal.service.excute();
				break;
			case 4:
				console.log('케이스 4들어옴');
				loadEnquiries();
				functionsObj.modal.service.excute();
				break;
			case 5:
				console.log('케이스 5들어옴');
				functionsObj.unregister.checkService.excute();
				functionsObj.unregister.warningsService.excute();
				break;
			default:
				alert('페이지 전환 오류!');
				break;
		}
	});
}

window.onload = function(){
		
		var index = Number(pageNumber);
		
		selectPages(index);
}

$('.item-name').each((i, e) => {
	var index = i;

/*	$(e).on('click', function(e) {
		e.preventDefault();

		selectPages(index);
	});*/
});





