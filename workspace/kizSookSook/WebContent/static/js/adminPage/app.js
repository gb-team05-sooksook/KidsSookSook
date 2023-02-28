function app() {
  return {
    user: {
      loadMember: (function () {
        function excute(members) {
          var members = JSON.parse(members);
          let dom = '';

          members.forEach((member, i) => {
            dom += `
            <tr name='member'>
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
          state.load().$myInfoTable.find("tr[name='member']").remove();
          state.load().$myInfoTable.append(dom);
          $checkboxes = $('.tableCheckbox');
        }

        return { excute: excute };
      })(),

      reloadByUserType: (function () {
        function excute() {
          var memberObj = state.load().member;
          var userType = memberObj.$userType.attr('userType');
          var uri;
          console.log(userType);

          if (userType == 'institution') {
            memberObj.$userType.attr('userType', 'member');
            uri = pageContext + '/memberInfo.admin?userType=' + `${userType}`;
          } else {
            memberObj.$userType.attr('userType', 'institution');
            uri = pageContext + '/memberInfo.admin?userType=' + `${userType}`;
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
          type: 'get', // 메소드(get, post, put 등)
          data: data,
          success: function (data) {
            app().user.loadMember.excute(data);
          },
          error: function (err) {},
        });
      }

      return { excute: excute };
    })(),
    searchService: (function () {
      /**
       * ajaxService를 실행시켜 검색하는 메소드
       *
       * @param {*} $search input ajax 객체
       * @param {*} url ajax url 경로
       * @param {*} callback 콜백함수
       */

      function excute($search, url, callback) {
        $search.on('submit', function (e) {
          e.preventDefault();
          var keyword = $("input[name='userIdentification']").val();
          var data = {
            keyword: keyword,
          };

          console.log(keyword);

          app().ajaxService.excute(url, data);
        });
      }

      return { excute: excute };
    })(),
    selectChecked : (function() {
      function excute(){
        var checked = $(".tableCheckbox").filter(":checked");
        console.log(checked);
      }

      return {excute : excute};
    })(),
  };
}

// app().ajaxService.excute(
//   url,
//   { type: "userIdentification", keyword: "inputValue" },
//   app().user.loadMember.excute
// );
