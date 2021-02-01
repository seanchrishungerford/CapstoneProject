<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Tasks</title>
</head>
<body>
	<h1 style="color: blue">All Products:</h1>

	<form:form action="find" method="post" modelAttribute="hello">
		<table>
			<tr>
				<td><b>Id:</b> ${hello.id}<form:hidden path="id" name="id" />
				</td>
			</tr>
			<tr>
				<td><b>Product name:</b> ${hello.name}<form:hidden path="name"
						name="prodName" /></td>
			</tr>
			<tr>
				<td><b>Genre:</b> ${hello.genre}<form:hidden
						path="genre" name="genre" /></td>
			</tr>
			<tr>
				<td><b>Condition:</b> ${hello.thecondition}<form:hidden
						path="thecondition" name="thecondition" /></td>
			</tr>
			<tr>
				<td><b>Price:</b> ${hello.price}<form:hidden path="price"
						name="price" /></td>
			</tr>
			<tr>
				<td><b>Category:</b> ${hello.category}<form:hidden
						path="category" name="category" /></td>
			</tr>
			<tr>
				<td><b>Description:</b> ${hello.description}<form:hidden
						path="category" name="category" /></td>
			</tr>
						<tr>
				<td><b>Image:</b> ${hello.img}<form:hidden
						path="img" name="img" /></td>
			</tr>
			<tr>
				<td><a data-confirm="Are you sure?" data-method="delete"
					href="/${hello.id}" rel="nofollow">Delete</a></td>

			</tr>
			<tr>
				<td><a type="button" href="/welcome">Home</a></td>

			</tr>

		</table>

	</form:form>
</body>
</html>