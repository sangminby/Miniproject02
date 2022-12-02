<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-30
  Time: 오후 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>

  <h1>상품 수정</h1>
  <hr>

  <form action="/sale/modify" method="post">

    <table>

        <tr>

            카테고리 <select name="category">
            <option value="1">상의</option>
            <option value="2">하의</option>
            <option value="3">잡화</option>

        </select>
        </tr>

      <tr>
        <td>상품번호</td>
        <td><input type="number" name="pnumber" value="${sale.pnumber}" readonly></td>
      </tr>

      <tr>
        <td>상품명</td>
        <td><input type="text" name="pname" value="${sale.pname}"></td>
      </tr>

      <tr>
        <td>판매금액</td>
        <td><input type="number" name="price" value="${sale.price}"></td>
      </tr>

      <tr>
        <td>상품이미지</td>
        <td><input type="file" name="image" value="${sale.image}"></td>
      </tr>

      <tr>
        <td></td>
        <td><input type="submit" value="수정"></td>
      </tr>

    </table>

  </form>

</body>
</html>