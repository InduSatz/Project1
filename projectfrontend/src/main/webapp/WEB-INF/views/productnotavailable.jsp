<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>${productNA.productname } and the requested quantity is no longer available.

</h3>
<a href="<c:url value='/cart/getcart'></c:url>">Click here to go to cart</a>

</body>
</html>