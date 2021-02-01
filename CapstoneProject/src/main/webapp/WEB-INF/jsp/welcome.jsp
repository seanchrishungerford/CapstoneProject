<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<h1 style="color: blue">Welcome</h1>
	<ul>
		<c:forEach items="${product}" var="products">
			<b>Id:</b>
			<li>${products.id}</li>
			<b>Name:</b>
			<li>${products.name}</li>
			<b>Genre:</b>
			<li>${products.genre}</li>
			<b>Condition:</b>
			<li>${products.thecondition}</li>
			<b>Price:</b>
			<li>${products.price}</li>
			<b>Category:</b>
			<li>${products.category}</li>
			<br />
			<li>${products.description}</li>
			<br />
			<img src="${products.img} alt="noimg" />
			<br /> 
		</c:forEach>

	</ul>
	<form:form modelAttribute="fn11">
	</form:form>
	<a href="/create" >Create Product (Admin only) </a><br/>
	<a href="/editemp" >Update Product (Admin only)</a><br/>
	<a href="/delete" >Delete A Product  (Admin only)</a><br/>
	

	
</body>
</html>