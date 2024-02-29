<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 26-12-2023
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="base.jsp"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <title></title>
</head>
<body >
    <div class="container mt-5">
        <div class="col-md-12 ">
            <h1 class="text-center">Welcome to Product App</h1>
            <table class="table col-md-6 mt-5">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody class="table-group-divider">
                <c:forEach items="${product}" var="p">
                    <tr>
                        <th scope="row">TECHONLY${p.id}</th>
                        <td>${p.name}</td>
                        <td>${p.descriptive}</td>
                        <td class="font-weight:bold"><b>&#x20b9; ${p.price}</b></td>
                        <td>
                            <a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger" style="font-size: 20px"></i></a>
                            <a href="update/${p.id}"><i class="fa-regular fa-pen-to-square mx-1" style="font-size: 20px"></i></a>
                        </td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>

            <div class="container text-center">
                <a href="add-product" class="btn btn-outline-success"> Add Product</a>
            </div>


        </div>
    </div>
</body>
</html>
