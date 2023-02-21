/**
 * 
 */

	const body = document.querySelector('body');
    const modal = document.querySelector('.login-modal');
    const btnLoginModal = document.querySelector('.btn-login-modal');
    const xButton = document.querySelector('.x-button');
    const $modalKeepLogin = $('.modal-keep-login');

    btnLoginModal.addEventListener('click', () => {
        body.style.overflow = 'hidden';
        modal.style.display = "block";
    });

    xButton.addEventListener('click', () => {
        body.style.overflow = 'auto';
        modal.style.display = 'none';
    });
    
    $modalKeepLogin.on('click', () => {
        if($('.modal-checkbox-inner').attr('class') == 'modal-checkbox-inner') {
            $('.modal-checkbox-inner').attr('class', 'modal-checkbox-inner-check');
        } else {
            $('.modal-checkbox-inner-check').attr('class', 'modal-checkbox-inner');
        }
    });
    
    // $('html').click(function(e){
    // 	if(!$(e.target).hasClass('modal-content')){
        //     	console.log('레이어팝업 외의 영역입니다');
        //     }
        // });
        
        // document.querySelector("body").addEventListener("click", function(e) {
            //     if(e.target.className == e.currentTarget.querySelector(".photo").className) {
                //         console.log("correct")
    //     } else {
    //         console.log("wrong")
    //     }
    // });
        
    // $(document).mouseup(function (e){
    //     var LayerPopup = $(".modal-content");
    //     if(LayerPopup.has(e.target).length === 0){
    //         console.log('영역 밖?');
    //         // LayerPopup.removeClass("show");
    //     }
    // });
                
    // $('html').click(function(e){
    //     if($(e.target).parents('.modal-content').length < 1){
    //         console.log('팝업 외 부분이 맞습니다')
    //         //실행 이벤트 부분
    //         body.style.overflow = 'auto';
    //         modal.style.display = 'none';
    //     }
    // });