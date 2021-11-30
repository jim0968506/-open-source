<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart Page</title>
</head>
<body style="background-color:#84C1FF;">

	<h1>我的訂單</h1>
	<h1>你好~會員:${Account.userName }</h1>
	<table cellpadding="2" cellspacing="2" border="1">
		<tr>
			<th>Option</th>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>
		</tr>
		<c:set var="total" value="0"></c:set>
		<c:forEach var="item" items="${sessionScope.cart }">
			<c:set var="total"
				value="${total + item.product.price * item.quantity }"></c:set>
			<tr>
				<td align="center"><a
					href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
					onclick="return confirm('確定移除這筆商品嗎')">移除</a></td>
				<td>${item.product.id }</td>
				<td>${item.product.name }</td>
				<td><img src="${pageContext.request.contextPath }/${item.product.photo }"
					width="150"></td>
				<td>${item.product.price }</td>
				<td>${item.quantity }</td>
				<td>${item.product.price * item.quantity }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right">目前總計</td>
			<td>${total }</td>
		</tr>
	</table>
	<br>
	<a href="${pageContext.request.contextPath }/productcart">回到購買頁面</a>


</body>
</html>
