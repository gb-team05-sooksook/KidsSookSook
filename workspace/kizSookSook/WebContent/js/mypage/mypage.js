let stageArr = new Array(
    'stage-list/trip-history.html',
    'stage-list/cash-history.html',
    'stage-list/my-info.html',
    'stage-list/my-review.html',
    'stage-list/my-qna.html',
    'stage-list/unregister.html'
);

const $stage = $('.stage');

let categoryModalService = (function () {
    function load() {
        $('.theme-name').each(function (i, e) {
            $(e).on('click', function () {
                console.log($(this).text());

                $('#themeName').text($(this).text());
            });
        });
    }

    return { load: load };
})();

$.get(stageArr[0], function (data) {
    $stage.append($(data).fadeIn());

    categoryModalService.load();
});

$('.item-name').each((i, e) => {
    var index = i;

    $(e).on('click', function (e) {
        e.preventDefault();

        $stage.load(stageArr[index], () => {
            categoryModalService.load();
        });
    });
});
