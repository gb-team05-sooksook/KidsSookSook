$("#btn-change1").click(function(e){
    e.preventDefault();
    $("html, body").animate({scrollTop: 0}, 400);
    $(this).attr('class', 'detaile-topics-list-change');
    if($(this).attr('class') == 'detaile-topics-list-change') {
        $(this).attr('class', 'detaile-topics-list');
    } else {
        $(this).attr('class', 'detaile-topics-list-change');
    }
    $('detaile-topics-wrapper').children().fillter(data => data.attr('class') == 'detaile-topics-list-change')).map(d => $(d).attr('class', 'detaile-topics-list'));
});

$("#btn-change2").click(function(e){
    e.preventDefault();
    $("html, body").animate({scrollTop: 0}, 400);
    $(this).attr('class', 'detaile-topics-list-change');
});

$("#btn-change3").click(function(e){
    e.preventDefault();
    $("html, body").animate({scrollTop: 0}, 400);
    $(this).attr('class', 'detaile-topics-list-change');
});

$("#btn-change4").click(function(e){
    e.preventDefault();
    $("html, body").animate({scrollTop: 0}, 400);
    $(this).attr('class', 'detaile-topics-list-change');
});

$("#btn-change5").click(function(e){
    e.preventDefault();
    $("html, body").animate({scrollTop: 0}, 400);
    $(this).attr('class', 'detaile-topics-list-change');
});
