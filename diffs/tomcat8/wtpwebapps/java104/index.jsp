<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />

</head>
<body>
<h3>购物车中的信息</h3>
<table>
<tr>
	<td>商品编号</td><td>商品名称</td><td>购买数量</td><td>购买价格</td><td>小计</td>
</tr>
<c:forEach var="goods" items="${sessionScope.shopcart.cart}">
	<tr>
		<td>${goods.id}</td>
		<td>${goods.name}</td>
		<td>${goods.quantity}</td>
		<td>${goods.price}</td>
		<td>${goods.price*goods.quantity}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>