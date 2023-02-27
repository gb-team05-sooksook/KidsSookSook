const $btn = $('.like-svg');

$btn.each((i, e) => {
   $(e).on("click", function() {
        var checkColor = $($('.like-btn')[i]).attr("fill");
        if(checkColor == "red"){
            $($('.like-btn')[i]).attr("fill", "transparent");
        } else $($('.like-btn')[i]).attr("fill", "red");
   })
});
