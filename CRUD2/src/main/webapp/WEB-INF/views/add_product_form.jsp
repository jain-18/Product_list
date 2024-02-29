<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 26-12-2023
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="base.jsp"%>
</head>
<body>
<form action="handle-product" method="post" class="container-sm p-9 mt-5 col-md-6">
    <h1 class="text-center">Fill the Product Detail</h1>
    <div class="mb-3 mt-5">
        <label for="exampleInputEmail1" class="form-label">Name of the Product</label>
        <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter product name" >
    </div>

    <div class="mt-4">
        <label class="form-label">Product Description</label>
        <div class="form-floating">
          <textarea name="descriptive" class="form-control" placeholder="Product Description" style="height: 100px" ></textarea>
        </div>
    </div>

    <div class="mb-3 mt-4">
        <label for="exampleInputPassword1" class="form-label">Price</label>
        <input name="price" type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Product Price">
        <!-- Display error message if it exists in the request attribute -->
        <c:if test="${not empty requestScope.priceError}">
            <div class="text-danger">
                    ${requestScope.priceError}
            </div>
        </c:if>
    </div>

    <div class="container text-center mt-5">
        <a href="${pageContext.request.contextPath}/"><button type="button" class="btn btn-secondary">back</button></a>
        <button type="submit" class="btn btn-primary">Add</button>

    </div>
</form>
</body>
</html>
