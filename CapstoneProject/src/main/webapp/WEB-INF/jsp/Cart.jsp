<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<style>
li {
	display: inline-block;
	margin: 0 10px;
}
</style>
<body>
		<h1>Your Order: </h1>
	<form:form action="find" method="post" modelAttribute="hello1000">
		<table>
			<tr>
				<td><b>Id:</b> ${hello1000.id}<form:hidden path="id" name="id" />
				</td>
			</tr>
			<tr>
				<td><b>Name:</b> ${hello1000.name}<form:hidden
						path="name" name="name" /></td>
			</tr>
			<tr>
				<td><b>Quantity:</b> ${hello1000.quantity}<form:hidden path="quantity"
						name="quantity" /></td>
			</tr>
			<tr>
				<td><b>Price:</b> ${hello1000.price}<form:hidden
						path="price" name="price" /></td>
			</tr>
			<tr>
				<td><b>Username:</b> ${hello1000.username}<form:hidden path="username"
						name="username" /></td>
			</tr>
			<tr>
				<td><b>Status</b> ${hello1000.status}<form:hidden
						path="status" name="status" /></td>
			</tr>
		</table>
	</form:form>
	<a type="button" href="/welcome">Checkout</a>

</body>
</html>