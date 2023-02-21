$.get(arraysObj.stageArr[0], function (data) {
    jqueryDomObj.load().$stage.append($(data).fadeIn());

    functionsObj.modal.service.excute();
});

$(".item-name").each((i, e) => {
    var index = i;

    $(e).on("click", function (e) {
        e.preventDefault();

        jqueryDomObj.load().$stage.load(arraysObj.stageArr[index], () => {
            // categoryModalService.load();

            switch (index) {
                case 0:
                    console.log("케이스 0들어옴");
                    functionsObj.modal.service.excute();
                    break;
                case 1:
                    console.log("케이스 1들어옴");
                    functionsObj.modal.service.excute();
                    break;
                case 2:
                    console.log("케이스 2들어옴");
                    checkInputs();
                    break;
                case 3:
                    console.log("케이스 3들어옴");
                    functionsObj.modal.service.excute();
                    break;
                case 4:
                    console.log("케이스 4들어옴");
                    functionsObj.modal.service.excute();
                    break;
                case 5:
                    console.log("케이스 5들어옴");
                    functionsObj.unregister.checkService.excute();
                    functionsObj.unregister.warningsService.excute();
                    break;
                default:
                    alert("페이지 전환 오류!");
                    break;
            }
        });
    });
});
