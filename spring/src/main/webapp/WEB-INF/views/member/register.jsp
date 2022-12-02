<!DOCTYPE HTML>
<!--
Editorial by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

  <title>다있소</title>

  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
  <link rel="stylesheet" href="/css/main.css" />

</head>
<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

  <!-- Main -->
  <div id="main">
    <div class="inner">

      <!-- Header -->
      <header id="header">

        <a href="/index.jsp" class="logo"><strong>다있소</strong> ShoppingMall</a>

        <div class="align-right">
          <ul>

            <c:if test="${loginInfo eq null}">
              <a href="/login">로그인</a><br>
              <a href="/member/register">회원가입</a>
            </c:if>

            <c:if test="${loginInfo ne null}">
              ${loginInfo.uname}님 환영합니다.<br>
              <a href="/sale/list">상품 구경하기</a><br>
              <a href="/logout"> 로그아웃 </a><br>
            </c:if>

          </ul>
        </div>

      </header>

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

    </div>

  </div>


  <!-- Sidebar -->
  <div id="sidebar">

    <div class="inner">

      <!-- Menu -->
      <nav id="menu">

        <header class="major">
          <h2>Menu</h2>
        </header>

        <ul>
          <li><a href="/index">HOMEPAGE</a></li>
          <li><a href="/sale/list">ALLLIST</a></li>
          <li><a href="/sale/list1">TOP</a></li>
          <li><a href="/sale/list2">BOTTOM</a></li>
          <li><a href="/sale/list3">ACC</a></li>
        </ul>

      </nav>


      <!-- Section -->
      <section>

        <header class="major">
          <h2>INFO</h2>
        </header>
        <p>회사명 : 하이미디어 </p>
        <p>브랜드명 : 다있소</p>
        <p>주소 : 서울시 강동구 천호동 동원빌딩</p>


        <ul class="contact">
          <li class="icon solid fa-envelope"><a href="#">himidea@naver.com</a></li>
          <li class="icon solid fa-phone">010-1234-5678</li>
        </ul>

      </section>


    </div>

  </div>

</div>

<!-- Scripts -->
<script src="/js/jquery.min.js"></script>
<script src="/js/browser.min.js"></script>
<script src="/js/breakpoints.min.js"></script>
<script src="/js/util.js"></script>
<script src="/js/main.js"></script>

</body>
</html>