<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'></c:url>">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default" id="nav_bar">
			<div class="navbar-header">
			<a href="" class="navbar-brand"><img src="resources/images/22.png" alt="BEAUTY BUTTERFLY BLISS" height="30px" width="60px"></a>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbardemo" aria-expanded="false">
   
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
			</div>
			<div class="collapse navbar-collapse" id="navbardemo">
			<ul class="nav navbar-nav">
				<li><a href='<c:url value='/home'></c:url>' class="fontSize">HOME</a></li>
				<li><a href="<c:url value='/aboutus'></c:url>" >ABOUT US</a></li>
				<li><a href="<c:url value='/all/getallproducts'></c:url>">BROWSE ALL PRODUCTS</a>
				<li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">SELECT BY CATEGORY<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<c:forEach items="${categories }" var="category">
				<li><a href="<c:url value='/all/searchByCategory?searchCondition=${category.categoryname }'></c:url>">${category.categoryname }</a>
				</li>
				
				</c:forEach>
				<li>
				<a href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>">All</a>
				</li>
				</ul>
			   </li>
			  
			   <security:authorize access="hasRole('ROLE_ADMIN')">
			   <li><a href="<c:url value='/admin/getproductform'></c:url>">Add Product</a></li>
			   </security:authorize>
			   
			   <security:authorize access="hasRole('ROLE_USER')">
			   <li><a href="<c:url value='/cart/getcart'></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>(${cartSize} )</a></li>
			   </security:authorize>
			   
			   <c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a href="<c:url value='/all/registrationform'></c:url>">SIGN UP</a></li>
				<li><a href="<c:url value='/login'></c:url>">SIGN IN</a></li>
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li><a href="#">Welcome ${pageContext.request.userPrincipal.name }</a></li>
				<li><a href="<c:url value='/cart/purchasedetails'></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
				<li><a href="<c:url value='/j_spring_security_logout'></c:url>">Sign out</a></li>
			    </c:if>
			</ul>
			</div>
		</nav>
	</div>

</body>
</html>