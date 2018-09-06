<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="header.jsp"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">;
		Product Details<br>
		<div class="panel-info">
			<div class="panel panel-heading">Product Details</div>
			<div class="panel panel-body">
			<img src="<c:url value='/resources/images/${productObj.id}.png'></c:url>">
			<b>Product Name:</b>${productObj.productname }<br>
			<b>Product Desc:</b>${productObj.productdesc }<br>
			<b>Price:</b>${productObj.price }<br>
			<b>Quantity:</b>${productObj.quantity }<br>
			<b>Category:</b>${productObj.category.categoryname }<br>
			<button class="btn btn-lg"><span class="glyphicon glyphicon-shopping-cart" ></span></button>
			</div>
		</div>
	</div>
	<a href="<c:url value='/all/getallproducts'></c:url>">Browse all products</a>
</body>
</html>