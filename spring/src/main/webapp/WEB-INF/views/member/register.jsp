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

          <input type="text" name="uaddress" id="sample5_address" placeholder="주소">
          <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
          <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>

          <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
          <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 API KEY를 사용하세요&libraries=services"></script>
          <script>
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                      center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
                      level: 5 // 지도의 확대 레벨
                    };

            //지도를 미리 생성
            var map = new daum.maps.Map(mapContainer, mapOption);
            //주소-좌표 변환 객체를 생성
            var geocoder = new daum.maps.services.Geocoder();
            //마커를 미리 생성
            var marker = new daum.maps.Marker({
              position: new daum.maps.LatLng(37.537187, 127.005476),
              map: map
            });


            function sample5_execDaumPostcode() {
              new daum.Postcode({
                oncomplete: function(data) {
                  var addr = data.address; // 최종 주소 변수

                  // 주소 정보를 해당 필드에 넣는다.
                  document.getElementById("sample5_address").value = addr;
                  // 주소로 상세 정보를 검색
                  geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                      var result = results[0]; //첫번째 결과의 값을 활용

                      // 해당 주소에 대한 좌표를 받아서
                      var coords = new daum.maps.LatLng(result.y, result.x);
                      // 지도를 보여준다.
                      mapContainer.style.display = "block";
                      map.relayout();
                      // 지도 중심을 변경한다.
                      map.setCenter(coords);
                      // 마커를 결과값으로 받은 위치로 옮긴다.
                      marker.setPosition(coords)
                    }
                  });
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