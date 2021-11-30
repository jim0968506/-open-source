<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Page</title>
</head>
<body style="background-color:#84C1FF;">

	<h1>訂單頁面</h1>
	<h1>你好~會員:${Account.userName }</h1>
	<table cellpadding="2" cellspacing="2" border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Buy</th>
		</tr>
		<c:forEach var="product" items="${products }">
			<tr>
				<td>${product.id }</td>
				<td>${product.name }</td>
				<td><img src="${pageContext.request.contextPath }/${product.photo }" width="200" height="150"></td>
				<td>${product.price }</td>
				<td align="center">
					<a href="${pageContext.request.contextPath }/cart/buy/${product.id}">加入購物車</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath }/product">回到商品介紹</a>

</body>
</html>
