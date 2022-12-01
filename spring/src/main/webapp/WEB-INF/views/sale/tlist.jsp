<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-24
  Time: 오후 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

  <title>Title</title>

  <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">

  <link href="/css/bootstrap/offcanvas.css" rel="stylesheet">

</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">

  <a class="navbar-brand mr-auto mr-lg-0" href="/index">다있소</a>

  <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">

    <ul class="navbar-nav mr-auto">

      <li class="nav-item active">
        <a class="nav-link" href="/sale/list">전체 <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item active">
        <a class="nav-link" href="/sale/tlist">상의</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="#">하의</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="#">잡화</a>
      </li>

      <li class="nav-item dropdown">



        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>

      </li>

    </ul>

    <form class="form-inline my-2 my-lg-0">

      ${loginInfo.uname}
      <a class="btn btn-success" href="/logout">로그아웃</a>

    </form>

  </div>

</nav>

<%--<div class="nav-scroller bg-white box-shadow">
  <nav class="nav nav-underline">
    <a class="nav-link active" href="#">Dashboard</a>
    <a class="nav-link" href="#"> Friends <span class="badge badge-pill bg-light align-text-bottom">27</span></a>
    <a class="nav-link" href="#">Explore</a>
    <a class="nav-link" href="#">Suggestions</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
  </nav>
</div>--%>

<main role="main" class="container">

  <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-primary rounded box-shadow">

    <img class="mr-3" src="https://icons.getbootstrap.com/assets/img/icons-hero.png" alt="" width="48" height="48">

    <div class="lh-100">

      <h6 class="mb-0 text-white lh-100">전체 리스트</h6>
      <small>상의 하의 잡화</small>

    </div>

  </div>

  <div class="my-3 p-3 bg-white rounded box-shadow">

    <h6 class="border-bottom border-gray pb-2 mb-0">상의 리스트</h6>

    <div class="m-3 p-1 border" >

      <form>

        <table>

          <tr>
            <td class="p-2">검색</td>
            <td class="p-2">

              <select class="form-control"  name="searchType">
                <option value="pname">상품명</option>
                <option value="price">금액</option>
              </select>

            </td>

            <td class="p-2">
              <input type="text" class="form-control" name="keyWord">
            </td>

            <td class="p-2">
              <input type="submit" class="btn btn-info" value="검색">
            </td>

          </tr>

        </table>

      </form>

    </div>

    <table class="table table-striped table-bordered text-center">

      <thead class="thead-dark">

      <tr>

        <th>상품번호</th>
        <th></th>
        <th>상품명</th>
        <th>판매금액</th>

      </tr>

      </thead>

      <c:forEach var="sale" items="${tlist}">

        <tr>

          <td>${sale.pnumber}</td>
          <td><a href="/sale/read?pnumber=${sale.pnumber}"><img src="/image/${sale.image}" id="img"></a></td>
          <td><a href="/sale/read?pnumber=${sale.pnumber}">${sale.pname}</a></td>
          <td>${sale.price}</td>

        </tr>

      </c:forEach>

    </table>


    <small class="d-block text-right mt-3">
      <a class="btn btn-success" href="/sale/save">상품 등록</a> <a class="btn btn-primary" href="/index">홈으로</a>
    </small>

  </div>

</main>


<%--<script>--%>
<%--  function deleteDept(no){--%>
<%--    if(confirm("삭제하시겠습니까?")){--%>
<%--      location.href = '/dept/delete?deptno='+no;--%>
<%--    }--%>
<%--  }--%>
<%--</script>--%>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/assets/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="js/assets/vendor/popper.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script src="js/assets/js/vendor/holder.min.js"></script>
<script src="js/bootstrap/offcanvas.js"></script>

</body>
</html>
