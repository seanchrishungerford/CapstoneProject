<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
</head>
<body>
	<h1 style="color: blue">Product(s) Found:</h1>
	<form:form action="find" method="post" modelAttribute="hello20">
		<table>
			<tr>
				<td><b>Id:</b> ${hello20.id}<form:hidden path="id" name="id" />
				</td>
			</tr>
			<tr>
				<td><b>Product name:</b> ${hello20.name}<form:hidden
						path="name" name="prodName" /></td>
			</tr>
			<tr>
				<td><b>Genre:</b> ${hello20.genre}<form:hidden path="genre"
						name="genre" /></td>
			</tr>
			<tr>
				<td><b>Condition:</b> ${hello20.thecondition}<form:hidden
						path="thecondition" name="thecondition" /></td>
			</tr>
			<tr>
				<td><b>Price:</b> ${hello20.price}<form:hidden path="price"
						name="price" /></td>
			</tr>
			<tr>
				<td><b>Category:</b> ${hello20.category}<form:hidden
						path="category" name="category" /></td>
			</tr>
			<tr>
				<td><b>Description</b> ${hello20.description}<form:hidden
						path="description" name="description" /></td>
			</tr>
			<tr>
				<td><b>Image</b> ${hello20.image}<form:hidden
						path="img" name="img" /></td>
			</tr>
		</table>
	</form:form>
	<a type="button" href="/welcome">Home</a>
</body>
</html>