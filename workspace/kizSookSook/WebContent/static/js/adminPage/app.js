function app() {
  return {
    user: {
      loadMember: (function () {
        function excute(members) {
          var members = JSON.parse(members);
          let dom = "";

          members.forEach((member, i) => {
            dom += `
            <tr>
              <td style="width: 6%">
                <form>
                  <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                </form>
              </td>
              <td>${member.userId}</td>
              <td>${member.userIdentification}</td>
              <td>${member.userRegisterDate}</td>
              <td>${member.userEmail}</td>
              <td>${member.userAddress}</td>
              <td>${member.userPhoneNumber}</td>
              <td>${member.memberGender}</td>
            </tr>`;
          });

          console.log(dom);
          state.load().$myInfoTable.empty().append(dom);
        }

        return { excute: excute };
      })(),

      reloadByUserType: (function () {
        function excute() {
          var memberObj = state.load().member;
          var userType = memberObj.$userType.attr("userType");
          var uri;
          console.log(userType);

          if (userType == "institution") {
            memberObj.$userType.attr("userType", "member");
            uri = pageContext + "/memberInfo.admin?userType=" + `${userType}`;
          } else {
            memberObj.$userType.attr("userType", "institution");
            uri = pageContext + "/memberInfo.admin?userType=" + `${userType}`;
          }

          return uri;
        }

        return { excute: excute };
      })(),
    },
    ajaxService: (function () {
      function excute(url, data, callback) {
        $.ajax({
          url: url, //request 보낼 서버의 경로
          type: "post", // 메소드(get, post, put 등)
          data: data, //보낼 데이터
          success: function (data) {
            //서버로부터 정상적으로 응답이 왔을 때 실행
            callback(data);
          },
          error: function (err) {
            //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
          },
        });
      }

      return { excute: excute };
    })(),
  };
}

// app().ajaxService.excute(
//   url,
//   { type: "userIdentification", keyword: "inputValue" },
//   app().user.loadMember.excute
// );
