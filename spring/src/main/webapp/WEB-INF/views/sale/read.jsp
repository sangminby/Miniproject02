<%--

<body>


<table>
    <tr>
        <td>상품명</td>
        <td>카테고리</td>
        <td>상품명</td>
        <td>상세이미지</td>
    </tr>

    <c:forEach var="sale" items="${list}" varStatus="stat">
    <tr>

        <td>${sale.pnumber}</td>
        <td>${sale.category}</td>
        <td><a href="/sale/read?pnumber=${sale.pnumber}"></a>${sale.pname}</td>
        <td><img src="/image/${sale.image}" id="img"></td>


    </tr>
    </c:forEach>

    <a href="/sale/modify?pnumber=${sale.pnumber}">수정</a> <a href="/sale/delete?pnumber=${sale.pnumber}">삭제</a>



</div>
--%>

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


                <section>

                <div class="row">

                    <div class="col-6"><img src="/image" ${sale.image} width="300px"></div>


                    <div class="card" col-6>
                        <div class="card-header">
                            <h2><a href="/sale/read?pnumber=${sale.pnumber}"></a>${sale.pname}</h2>
                        </div>
                        <div class="card-body">
                            <p class="card-text">수량 <input type="number" style="width: 60px"></p>
                            <a href="#" >구매하기</a>
                        </div>
                    </div>
                </div>

                </section>


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



    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>
