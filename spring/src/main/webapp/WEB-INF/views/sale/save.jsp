<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-30
  Time: 오후 1:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
  #category{

    margin-left: 18px;
  }
</style>
<head>
    <title>상품등록</title>
</head>
<body>

<h2>상품등록</h2>

<form method="post" enctype="multipart/form-data">
  <table>
    <tr>

      카테고리 <select id="category">
        <option value="1">상의</option>
        <option value="2">하의</option>
        <option value="3">잡화</option>

      </select>
    </tr>
    <tr>
      <td>상품명</td>
      <td><input type="text" name="pname"></td>
    </tr>
    <tr>
      <td>판매금액</td>
      <td><input type="number" name="price"></td>
    </tr>
    <tr>
      <td>상품이미지</td>
      <td><input type="file" name="image"></td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="상품등록"></td>
    </tr>
  </table>
</form>

</body>
</html>
