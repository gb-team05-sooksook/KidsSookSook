let stageArr = new Array(
    "stage-list/trip-history.html",
    "stage-list/cash-history.html",
    "stage-list/my-info.html",
    "stage-list/my-review.html",
    "stage-list/my-qna.html",
    "stage-list/unregister.html"
);

const $stage = $(".stage");
let isModalActive = false;

let modalDisableService = (function () {
    function disable($dom) {
        console.log($dom);

        $dom.animate(
            {
                top: "45px",
                opacity: 0,
            },
            500
        );

        isModalActive = false;
    }

    return { disable: disable };
})();

let modalActivateService = (function () {
    function activate($dom) {
        console.log($dom);

        $dom.animate(
            {
                top: "35px",
                opacity: 1,
            },
            500
        );

        isModalActive = true;
    }

    return { activate: activate };
})();

let categoryModalService = (function () {
    function load() {
        var $theme = $(".theme-name");
        var $themeName = $("#theme-selecter");
        var $modal = $theme.closest("div.selecter-options");

        $themeName.on("click", () => {
            if (isModalActive) {
                modalDisableService.disable($modal);
            } else modalActivateService.activate($modal);
        });

        $theme.each(function (i, e) {
            $(e).on("click", function () {
                var $value = $(this).text();

                $("#themeName").text($value);

                modalDisableService.disable($modal);

                $("input[name='theme']").val($value);
            });
        });
    }

    return { load: load };
})();

$.get(stageArr[0], function (data) {
    $stage.append($(data).fadeIn());

    categoryModalService.load();
});

$(".item-name").each((i, e) => {
    var index = i;

    $(e).on("click", function (e) {
        e.preventDefault();

        $stage.load(stageArr[index], () => {
            categoryModalService.load();
        });
    });
});
