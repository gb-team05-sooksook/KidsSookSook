/** @format */

function app() {
  return {
    user: {
      loadMember: (function () {
        function excute(members, stage) {
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
          stage.find("tr[name='member']").remove();
          stage.append(dom);
          $checkboxes = $('.tableCheckbox');
        }

        return { excute: excute };
      })(),

      reloadByUserType: (function () {
        function excute() {
          var memberObj = state.load().member;
          var userType = memberObj.$userType.attr('userType');
          var uri;

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
      loadMemberModal: (function () {
        function excute(members, stage) {
          var members = JSON.parse(members);

          console.log(members);

          var dom;
          members.forEach((member, i) => {
            dom += `
      <tr name='member'>
        <td><input type='text' name='userId' value='${member.userId}' readonly /></td>
        <td>${member.userIdentification}</td>
        <td>${member.userRegisterDate}</td>
        <td><input type='text' name='userEmail' value='${member.userEmail}'/></td>
        <td><input type='text' name='userAddress' value='${member.userAddress}'/></td>
        <td><input type='text' name='userPhoneNumber' value='${member.userPhoneNumber}'/></td>
        <td><input type='text' name='memberNickname' value='${member.memberNickname}'/></td>
        <td><input type='text' name='memberGender' value='${member.memberGender}'/></td>
      </tr>`;
          });
          stage.find("tr[name='member']").remove();
          stage.append(dom);
        }

        return { excute: excute };
      })(),
    },
    payment: {
      loadPayment: (function () {
        function excute(payments, stage) {
          var payments = JSON.parse(payments);
          let dom = '';

          payments.forEach((payment, i) => {
            dom += `
            <tr name='payment'>
              <td style="width: 6%">
                <form>
                  <input class="tableCheckbox" type="checkbox" name="deleteCheck" value="" />
                </form>
              </td>
              <td>${payment.paymentId}</td>
              <td>${payment.userIdentification}</td>
              <td>${payment.fieldTripId}</td>
              <td>${payment.paymentAmount}</td>
              <td>${payment.paymentDate}</td>
            </tr>`;
          });
          stage.find("tr[name='payment']").remove();
          stage.append(dom);
          $checkboxes = $('.tableCheckbox');
        }

        return { excute: excute };
      })(),
    },
    ajaxService: (function () {
      function excute(url, data, callback) {
        $.ajax({
          url: url, //request 보낼 서버의 경로
          type: 'post', // 메소드(get, post, put 등)
          data: data,
          success: function (result) {
            callback(result);
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
      function excute($search, url, stage, callback) {
        $search.on('submit', function (e) {
          e.preventDefault();
          var keyword = $("input[name='userIdentification']").val();
          var data = {
            keyword: keyword,
          };

          app().ajaxService.excute(url, data, (result) => {
            callback(result, stage);
          });
        });
      }

      return { excute: excute };
    })(),
    selectChecked: (function () {
      /**
       *
       * @returns 선택된 열의 id값을 담은 JSON
       */
      function excute() {
        var checked = $('.tableCheckbox').filter(':checked').parent().parent().next();
        var userIds = new Array();

        console.log(checked);

        checked.each((i, e) => {
          userIds.push($(e).text());
        });

        // json 으로 변환해야 자바가 받을수 있음
        userIds = JSON.stringify(userIds);

        return { checkedIds: userIds };
      }

      return { excute: excute };
    })(),
  };
}
