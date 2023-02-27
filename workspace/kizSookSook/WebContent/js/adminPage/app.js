function app() {
  return {
    user: {
      loadMember: (function () {
        function excute(members) {
          var members = JSON.parse(members);
          let dom = '';

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
          state.load().$myTable.append(dom);
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
  };
}
