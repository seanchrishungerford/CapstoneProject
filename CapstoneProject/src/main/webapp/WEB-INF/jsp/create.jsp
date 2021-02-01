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
	<h1 style="color: blue">Product Created:</h1>

	<form:form action="find" method="post" modelAttribute="hello2">
		<table>
			<tr>
				<td><b>Id:</b> ${hello2.id}<form:hidden path="id" name="id" />
				</td>
			</tr>
			<tr>
				<td><b>Product name:</b> ${hello2.name}<form:hidden path="name"
						name="name" /></td>
			</tr>
			<tr>
				<td><b>Genre:</b> ${hello2.genre}<form:hidden path="genre"
						name="genre" /></td>
			</tr>
			<tr>
				<td><b>Product Condition:</b> ${hello2.thecondition}<form:hidden
						path="thecondition" name="thecondition" /></td>
			</tr>
			<tr>
				<td><b>Price:</b> ${hello2.price}<form:hidden path="price"
						name="prodPrice" /></td>
			</tr>
			<tr>
				<td><b>Category:</b> ${hello2.category}<form:hidden
						path="category" name="category" /></td>
			</tr>

			<tr>
				<td><b>Description:</b> ${hello2.description}<form:hidden
						path="description" name="description" /></td>
			</tr>
			<tr>
				<td><b>Image:</b> ${hello2.img}<form:hidden path="img"
						name="img" /></td>
			</tr>
			<tr>
				<td><a type="button" href="/welcome">Home</a></td>

			</tr>


		</table>

	</form:form>
</body>
</html>