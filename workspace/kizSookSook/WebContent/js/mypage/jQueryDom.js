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
            sideMenu: {
                menuItem: $("a.menu-item .item-name"),
            },
            modalObj: {
                themeName: $(".theme-name"),
                themeSelecter: $("#theme-selecter"),
                modal: $(".theme-name").closest("div.selecter-options"),
                inputName: $("input[name='theme']"),
                theme: $("#themeName"),
            },
            unregister: {
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
                checkLabel: $(".reason-list-checkbox"),
            },
            myInfo: {
                errorText: $("p.info-form-warning"),
                input: $(".my-info-form .form-input input"),
                address: $("#postCodeInput"),
                addressDetail: $("#postCodeDetail"),
            },
        };
    }

    return { load: load };
})();

let functionsObj = {
    side: {
        fontService: (function () {
            function excute() {
                var menu = jqueryDomObj.load().sideMenu.menuItem;

                menu.each((i, e) => {
                    $(e).mouseover(function () {
                        $(this).css("font-weight", 500);
                    });

                    $(e).mouseout(function () {
                        $(this).css("font-weight", "inherit");
                    });
                });
            }

            return { excute: excute };
        })(),
    },
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
                    500,
                    function () {
                        $(this).css("display", "none");
                    }
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
                    500,
                    function () {
                        $(this).css("display", "block");
                    }
                );

                $dom.css("display", "block");

                globalObj.isModalActive = true;
            }

            return { excute: excute };
        })(),
    },

    unregister: {
        checkService: (function () {
            var $radioPrev = globalObj.radioPrev;

            var $checkLabel = jqueryDomObj.load().unregister.checkLabel;

            function excute() {
                var $radio = jqueryDomObj.load().unregister.radio;
                var $svgPrev;

                $radio.each((i, e) => {
                    $(e).css(jqueryDomObj.load().unregister.uncheckedCSS);
                });

                console.log($checkLabel[0]);

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
    myInfo: {
        inputCheckService: (function () {
            function excute() {
                var $inputs = jqueryDomObj.load().myInfo.input;
                var reg;
                $inputs.each((i, e) => {
                    if (i > 4) {
                        return;
                    }

                    $(e).on("blur", function () {
                        switch (i) {
                            case 0:
                                reg =
                                    /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,12}$/;
                                functionsObj.myInfo.check.excute(i, e, reg);
                                break;
                            case 1:
                                reg =
                                    /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
                                functionsObj.myInfo.check.excute(i, e, reg);
                                break;
                            case 2:
                                reg = /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}/;
                                functionsObj.myInfo.check.excute(i, e, reg);
                                break;
                            case 3:
                                reg =
                                    /^(?=.*[0-9])(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%^&*()._-]{6,16}$/;
                                functionsObj.myInfo.check.excute(i, e, reg);
                                break;
                            case 4:
                                functionsObj.myInfo.check.excute(i, e);
                                break;
                            default:
                                break;
                        }
                    });
                });
            }

            return { excute: excute };
        })(),

        check: (function () {
            function excute(i, e, reg) {
                if (reg) {
                    var check = reg.test($(e).val());
                } else {
                    var input = jqueryDomObj.load().myInfo.input;
                    pwPrev = $(input[i - 1]).val();
                    var check = pwPrev == $(input[i]).val();
                }
                var $texts = jqueryDomObj.load().myInfo.errorText;

                if (check) {
                    $($texts[i]).css("display", "none");
                } else {
                    $($texts[i]).css("display", "block");
                }
            }

            return { excute: excute };
        })(),

        openAdress: (function () {
            function excute() {
                console.log("openAdress");
                $("#postCodeBtn").on("click", function () {
                    console.log("postcode onclick");

                    functionsObj.myInfo.loadPostCode.excute();
                });
            }

            return { excute: excute };
        })(),
        loadPostCode: (function () {
            function excute() {
                new daum.Postcode({
                    oncomplete: function (data) {
                        console.log(data.address);

                        if (!data.address) {
                            console.log("주소 입력 실패");
                            return;
                        }

                        jqueryDomObj
                            .load()
                            .myInfo.address.attr("value", data.address);
                        document.querySelector("#postCodeDetail").focus(); //상세입력 포커싱
                    },
                }).open();

            }

            return { excute: excute };
        })(),
        // loadAdressAPI: function () {
        //     $.getScript(
        //         "//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js",
        //         function () {
        //             console.log("실행완료!");
        //         }
        //     );
        // },
    },
};

// return { load: load };
