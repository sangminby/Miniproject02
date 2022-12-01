<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-11
  Time: 오전 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

  <title>다있소</title>

  <style>

    td{
      padding: 10px;
      text-align: center;
    }

  </style>

</head>
<body>

<h1>${title}</h1>

<a href="/sale/list">전체</a>
<a href="/sale/list1">상의</a>
<a href="/sale/list2">하의</a>
<a href="/sale/list3">잡화</a>

<table>

  <tr>

    <th>상품번호</th>
    <th>카테고리</th>
    <th></th>
    <th>상품명</th>
    <th>판매금액</th>

  </tr>

  <c:forEach var="sale" items="${list}">

    <tr>

      <td>${sale.pnumber}</td>
      <td>${sale.category}</td>
      <td><a href="/sale/read?pnumber=${sale.pnumber}"><img src="/image/${sale.image}" id="img"></a></td>
      <td><a href="/sale/read?pnumber=${sale.pnumber}">${sale.pname}</a></td>
      <td>${sale.price}</td>

    </tr>

  </c:forEach>

</table>

<a href="/sale/save">상품 등록</a> <a href="/index">홈으로</a>
<hr>

<div style="margin-top: 10px">

  <form>

    검색
    <select name="searchType">
      <option value="pname">상품명</option>
      <option value="price">금액</option>
    </select>

    <input type="text" name="keyWord">
    <input type="submit" name="검색">

  </form>

</div>

</body>
</html>
