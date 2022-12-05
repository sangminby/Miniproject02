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
              <a href="/logout"> 로그아웃 </a><br>
            </c:if>

          </ul>
        </div>

      </header>


      <!-- Section -->
      <section>

        <header class="major">
          <h2>TOP</h2>
        </header>

        <div class="features">

          <div class="container">

            <div class="row">

              <c:forEach var="sale" items="${list}">

                <div class="col-md-4">

                  <div class="card"  style="width: 18rem;">

                    <img src="/image/${sale.image}" width="200px" class="card-img-top">

                    <div class="card-body">
                      <h5 class="card-title">${sale.pname}</h5>
                      <p class="card-text"></p>
                    </div>

                    <ul class="list-group list-group-flush">
                      <li class="list-group-item">상품가격 : ${sale.price}</li>
                      <li class="list-group-item">상품번호 : ${sale.pnumber}</li>
                      <li class="list-group-item">카테고리 : ${sale.category}</li>
                    </ul>

                    <div class="card-body">
                      <a href="/sale/read?pnumber=${sale.pnumber}" class="card-link">상세보기</a>
                    </div>

                  </div>

                </div>

              </c:forEach>

            </div>

          </div>

        </div>

      </section>

      <a href="/sale/save" style="margin-left: 1000px">상품 등록</a>

    </div>

  </div>



  <!-- Sidebar -->
  <div id="sidebar">

    <div class="inner">

      <!-- Search -->
      <section id="search" class="alt">

        <form>

          <select name="searchType">
            <option value="pname">상품명</option>
            <option value="price">금액</option>
          </select>

          <input type="text" name="keyWord" placeholder="Search" />

        </form>

      </section>


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