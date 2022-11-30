<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-30
  Time: 오후 4:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>회원가입</title>
</head>
<body>

  <h1>회원가입</h1>
  <hr>

  <form action="/member/register" method="post">

    <table>

      <tr>
        <td>아이디</td>
        <td><input type="text" name="uid"> </td>
      </tr>

      <tr>
        <td>비밀번호</td>
        <td><input type="password" name="pw"></td>
      </tr>

      <tr>
        <td>이름</td>
        <td><input type="text" name="uname"></td>
      </tr>

      <tr>
        <td>주소</td>
        <td>

          <input type="text" id="sample4_postcode" placeholder="우편번호">
          <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
          <input type="text" name="uaddress" id="sample4_roadAddress" placeholder="도로명주소">
          <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
          <span id="guide" style="color:#999;display:none"></span>
          <input type="text" name="uaddress2" id="sample4_detailAddress" placeholder="상세주소">
          <input type="text" id="sample4_extraAddress" placeholder="참고항목">

          <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
          <script>

            function sample4_execDaumPostcode() {
              new daum.Postcode({
                oncomplete: function(data) {

                  var roadAddr = data.roadAddress;
                  var extraRoadAddr = '';

                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                  }

                  if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                  }

                  if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                  }

                  document.getElementById('sample4_postcode').value = data.zonecode;
                  document.getElementById("sample4_roadAddress").value = roadAddr;
                  document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

                  if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                  } else {
                    document.getElementById("sample4_extraAddress").value = '';
                  }

                  var guideTextBox = document.getElementById("guide");

                  if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                  } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';

                  } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                  }
                }
              }).open();
            }

          </script>

        </td>
      </tr>

      <tr>
        <td></td>
        <td><input type="submit" value="회원가입"> </td>
      </tr>

    </table>

  </form>

</body>
</html>