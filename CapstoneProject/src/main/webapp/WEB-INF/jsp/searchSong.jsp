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
	<h1 style="color: blue">Product Found:</h1>
	<form:form action="find" method="post" modelAttribute="hello21">
		<table>
			<tr>
				<td><b>Id:</b> ${hello22.id}<form:hidden path="id" name="id" />
				</td>
			</tr>
			<tr>
				<td><b>Product name:</b> ${hello22.name}<form:hidden
						path="name" name="name" /></td>
			</tr>
			<tr>
				<td><b>Genre:</b> ${hello22.genre}<form:hidden path="genre"
						name="genre" /></td>
			</tr>
			<tr>
				<td><b>Condition:</b> ${hello22.thecondition}<form:hidden
						path="thecondition" name="thecondition" /></td>
			</tr>
			<tr>
				<td><b>Price:</b> ${hello22.price}<form:hidden path="price"
						name="price" /></td>
			</tr>
			<tr>
				<td><b>Category:</b> ${hello22.category}<form:hidden
						path="category" name="category" /></td>
			</tr>
			<tr>
				<td><b>Description</b> ${hello22.description}<form:hidden
						path="descriprioh" name="description" /></td>
			</tr>
		</table>
	</form:form>
	<a type="button" href="/welcome">Home</a>
</body>