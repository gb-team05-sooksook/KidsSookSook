let arraysObj = {
    stageArr: new Array(
        "stage-list/trip-history.html",
        "stage-list/cash-history.html",
        "stage-list/my-info.html",
        "stage-list/my-review.html",
        "stage-list/my-qna.html",
        "stage-list/unregister.html"
    ),
};

let globalObj = {
    isModalActive: false,
    radioPrev: $($(".register-radio-inner")[0]),
};

let jqueryDomObj = (function () {
    function load() {
        return {
            $stage: $(".stage"),
            modalObj: {
                themeName: $(".theme-name"),
                themeSelecter: $("#theme-selecter"),
                modal: $(".theme-name").closest("div.selecter-options"),
                inputName: $("input[name='theme']"),
                theme: $("#themeName"),
            },
            unregister: {
                reasonList: $(".reason-list-checkbox"),
                radio: $(".register-radio-inner"),
                uncheckedCSS: {
                    border: "1px solid rgb(200, 202, 210)",
                    "background-color": "rgb(255, 255, 255)",
                },
                checkedCSS: {
                    border: "1px solid rgb(255, 255, 255)",
                    "background-color": "rgb(255, 212, 0)",
                },
                checkSvg: $("path.unregister-svg"),
            },
        };
    }

    return { load: load };
})();

let functionsObj = {
    modal: {
        service: (function () {
            function excute() {
                var $theme = jqueryDomObj.load().modalObj.themeName;
                var $themeSelecter = jqueryDomObj.load().modalObj.themeSelecter;
                var $modal = jqueryDomObj.load().modalObj.modal;

                $themeSelecter.on("click", () => {
                    if (globalObj.isModalActive) {
                        console.log("disable if 문 들어옴");
                        functionsObj.modal.disable.excute($modal);
                    } else {
                        console.log("activate if 문 들어옴");
                        functionsObj.modal.activate.excute($modal);
                    }
                });

                $theme.each(function (i, e) {
                    $(e).on("click", function () {
                        var $value = $(this).text();

                        jqueryDomObj.load().modalObj.theme.text($value);

                        functionsObj.modal.disable.excute($modal);

                        jqueryDomObj.load().modalObj.inputName.val($value);
                    });
                });
            }

            return { excute: excute };
        })(),

        disable: (function () {
            function excute($dom) {
                console.log("disable");

                $dom.animate(
                    {
                        top: "45px",
                        opacity: 0,
                    },
                    500
                );

                globalObj.isModalActive = false;
            }

            return { excute: excute };
        })(),

        activate: (function () {
            function excute($dom) {
                console.log("activate");

                $dom.animate(
                    {
                        top: "35px",
                        opacity: 1,
                    },
                    500
                );

                globalObj.isModalActive = true;
            }

            return { excute: excute };
        })(),
    },

    unregister: {
        checkService: (function () {
            var $radioPrev = globalObj.radioPrev;
            // var $checkSvgPrev = globalObj.checkSvg;

            var $reasonList = jqueryDomObj.load().unregister.reasonList;

            function excute() {
                var $radio = jqueryDomObj.load().unregister.radio;
                var $svgPrev;

                $radio.each((i, e) => {
                    $(e).css(jqueryDomObj.load().unregister.uncheckedCSS);
                });

                console.log($reasonList[0]);

                $radio.each((i, e) => {
                    $(e).on("click", function (e) {
                        e.preventDefault();

                        console.log($radioPrev);

                        if ($radioPrev == $(this)) {
                            return;
                        }

                        if ($svgPrev) {
                            $svgPrev.css("opacity", 0);
                        }
                        $radioPrev.css(
                            jqueryDomObj.load().unregister.uncheckedCSS
                        );

                        $(jqueryDomObj.load().unregister.checkSvg[i]).css(
                            "opacity",
                            1
                        );
                        $(this).css(jqueryDomObj.load().unregister.checkedCSS);

                        $radioPrev = $(this);
                        $svgPrev = $(
                            jqueryDomObj.load().unregister.checkSvg[i]
                        );
                    });
                });
            }

            return { excute: excute };
        })(),
        warningsService: (function () {
            var checked = false;

            function excute() {
                $(".unregister-svg-path").css("transition", "fill 0.1s linear");

                $(".unregister-agrement-check").on("click", function () {
                    var btn = document.querySelector(
                        "div.unregister-agrement-btn-wrapper button"
                    );

                    if (!checked) {
                        $(".unregister-svg-path").css(
                            "fill",
                            "rgb(255, 212, 0)"
                        );
                        btn.disabled = false;
                        checked = true;
                    } else {
                        btn.disabled = true;
                        $(".unregister-svg-path").css(
                            "fill",
                            "rgb(111 113 122)"
                        );
                        checked = false;
                    }
                });
            }

            return { excute: excute };
        })(),
    },
};

// return { load: load };
