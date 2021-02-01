<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
</head>
<body>
	<h1 style="color: blue">Edit Product</h1>
	<form:form action="/editemp" method="post" modelAttribute="hello10">
		Id:<form:input type="text" path= "id" /><br/>
		Name:<form:input type="text" path= "name" />
		<br />
		Genre:<form:input type="text" path="genre" />
		<br />
		Condition:<form:input type="text" path="thecondition" />
		<br />
		Price:<form:input type="text" path="price" />
		<br />
		Category:<input list="category" name="category">
		<br />
		Image:<input list="img" name="img">
		<datalist id="category">
			<option value="Song" selected="selected">
			<option value="Album">
			<option value="Instrument">
		</datalist>
		<br />
		
		Description:<form:input type="text" path="description" />
		<br />
		<input type="submit" value="Submit">
	</form:form>
	<a type="button" href="/welcome">Home</a>
</body>
</html>