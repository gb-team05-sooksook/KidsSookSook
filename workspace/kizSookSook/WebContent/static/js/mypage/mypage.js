/*$.get(arraysObj.stageArr[0], function(data) {
	jqueryDomObj.load().$stage.append($(data).fadeIn());

	functionsObj.modal.service.excute();
	functionsObj.side.fontService.excute();
});*/

/* 체험학습 목록 */
function loadTrips(){
	showlist($("div.history-result-list"), function(){
	var text = "";
	
	console.log(fieldTrips);
	
	fieldTrips.forEach((fieldTrip, i) => {
		text += `
			<div class="history-result">
	            <div class="h_result-info">
	                <h4 class="h_title">${fieldTrip.fieldTripName}</h4>
	                <div class="h_details">
	                    <span class="h_category">${fieldTrip.categoryName}</span>
	                    <span class="h_date">${fieldTrip.RegistrationDate}</span>
	                    <span class="h_institution">업체명</span>
	                </div>
	            </div>
	            <div class="h_result-content">
	                <div>체험학습 내용의 요약본 한 줄</div>
	                <a href="javascript:functionsObj.modal.activateReviewModalService.excute()">리뷰 쓰기</a>
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
				break;
			case 1:
				console.log('케이스 1들어옴');
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
				functionsObj.modal.service.excute();
				break;
			case 4:
				console.log('케이스 4들어옴');
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

	$(e).on('click', function(e) {
		e.preventDefault();

		selectPages(index);
	});
});





