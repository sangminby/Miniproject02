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

      </header>


      <!-- Banner -->
      <section id="banner">

        <div class="content">

          <header>

            <h1>WINTER OUTER<br />
              COLLECTION</h1>
            <p>한파에도 문제없어, 겨울상의</p>

          </header>

          <ul class="actions">
            <li><a href="/sale/list1" class="button big">Learn More</a></li>
          </ul>

        </div>

        <span class="image object">
          <img src="/image/jpg01.jpg" />
        </span>

      </section>

      <!-- Section -->
      <section>

        <header class="major">
          <h2>NEW ITEMS</h2>
        </header>

        <div class="features">

          <article>

            <%--<span class="icon fa-gem" img src="/image/블라우스.jpg"></span>--%>
            <img src="/image/블라우스.jpg" width=150px height="180px" style="margin-right: 20px">
            <div class="content">
              <h3>트윙클패드블라우스</h3>
              <p>입자마자 얼굴빛이 화사해지는 귀엽고 유니크한 깃털 블라우스♡ 소매의 플라워 단추를 톡- 달아서 사랑스럽게 마무리 해주었어요 *.* 여유로운핏+세미 크롭 기장으로 누구나 부담 없이 캐주얼하게- 특별한 연말룩으로 강추 드려요!</p>
            </div>

          </article>

          <article>

            <img src="/image/가디건.jpg" width=150px height="180px" style="margin-right: 20px">

            <div class="content">
              <h3>부클트위드가디건</h3>
              <p>보슬보슬~ 헤어리한 원사로 포근함 가득 담아 제작한 트위드 CD- 자켓인 듯 가디건인 듯 폭넓게 즐길 수 있는 Premium 아이템이에요! 데일리룩,하객룩, 다가오는 연말룩으로 자신있게 추천드릴게요♡</p>
            </div>

          </article>

          <article>

            <img src="/image/코트.jpg" width=150px height="180px" style="margin-right: 20px">

            <div class="content">
              <h3>가든래글런하프코트</h3>
              <p>클래식한 무드로 코디 활용도 높은 하프코트 : ) 루즈한 핏에 래글런 소매 라인으로 부해 보임 없이 체형을 커버해 주는 아이템이에요! 포근한 2온스의 누빔 안감으로 따뜻하게 입어져 강력 추천♡</p>
            </div>

          </article>

          <article>

            <img src="/image/니트.jpg" width=150px height="180px" style="margin-right: 20px">

            <div class="content">
              <h3>세일러오프숄더니트</h3>
              <p>큼직한 세일러 카라 넥으로 러블리한 오프숄더 니트- 포근한 APS 소재에 골지 짜임으로 편안하고 날씬해 보이는 아이템이에요 : ) 청순&여리한 무드로 데일리는 물론 연말룩으로도 강력 추천드려요♡</p>
            </div>

          </article>

        </div>

      </section>

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