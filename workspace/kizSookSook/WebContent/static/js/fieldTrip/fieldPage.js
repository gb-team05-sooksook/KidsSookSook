const $btn = $('.like-svg');
// const item = document.getElementById('item');
// const btn = document.getElementById('btn-item');

$btn.each((i, e) => {
   $(e).on("click", function() {
        var checkColor = $($('.like-btn')[i]).attr("fill");
        if(checkColor == "red"){
            $($('.like-btn')[i]).attr("fill", "transparent");
        } else $($('.like-btn')[i]).attr("fill", "red");
   })
});

// $btn.onclick = function(){
//     item.setAttribute('class','done');
// }
