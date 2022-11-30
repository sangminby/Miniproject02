+<%--
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

<form method="post">

  <table>

    <tr>

      <td>상품명</td>
      <td><input type="number" name="deptno" value="${dept.deptno}" readonly></td>

    </tr>

    <tr>

      <td>부서이름</td>
      <td><input type="text" name="dname" value="${dept.dname}"></td>

    </tr>

    <tr>

      <td>부서위치</td>
      <td><input type="text" name="loc" value="${dept.loc}"></td>

    </tr>

    <tr>

      <td></td>
      <td><input type="submit" value="등록"></td>

    </tr>

  </table>

</form>

</body>
</html>