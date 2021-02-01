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
	<h1 style="color: blue">Create Product</h1>
	<form:form modelAttribute="fn2">
		Product Name:<form:input type="text" path="name" />
		<br />
		Genre:<form:input type="tet" path="genre" />
		<br />
		Condition:<form:input type="text" path="thecondition" />
		<br />
		Price:<form:input type="text" path="price" />
		<br />
		Category:<input list="category" name="category">
		<datalist id="category">
			<option value="Song" selected="selected">
			<option value="Album">
			<option value="Instrument">
		</datalist>
		<br />
		Description:<form:input type="text" path="description" />
		<br />
		<br />
		Image:<form:input type="text" path="img" />
		<br />
		<input type="submit" value="Submit">
		<br />
	</form:form>

</body>
</html>