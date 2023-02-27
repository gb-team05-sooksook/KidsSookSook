function app() {
  return {
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
            <td>${i + 1}</td>
            <td>${member.memberIdentification}</td>
            <td>${member.memberRegisterDate}</td>
            <td>${member.memberEmail}</td>
            <td>${member.memberAddress}</td>
            <td>${member.memberPhoneNumber}</td>
            <td>${member.memberGender}</td>
          </tr>`;
        });

        state.load().$myTable.append(text);
      }

      return { excute: excute };
    })(),
  };
}
