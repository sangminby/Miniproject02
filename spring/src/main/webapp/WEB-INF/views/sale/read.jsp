<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-30
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품상세</title>

</head>
<body>


<table>
    <tr>
        <td>상품명</td>
        <td>상세이미지</td>

    </tr>

    <c:forEach var="sale" items="${list}" varStatus="stat">
    <tr>

        <td><a href="/todo/read?pnumber=${sale.pnumber}"></a>${sale.pname}</td>
        <td><img src="/image/${sale.image}" id="img"></td>


    </tr>
    </c:forEach>

    <a href="/sale/delete?pnumber=${sale.pnumber}">삭제</a>


<%--

<div id="whole">

    <div id="hidden">

        <div id="img">
            <img src="/image" ${sale.image}>
        </div>

        <div id="select">
            수량 <input type="number">

        </div>

        <div id="detail">


        </div>

    </div>

</div>
--%>


</body>
</html>
