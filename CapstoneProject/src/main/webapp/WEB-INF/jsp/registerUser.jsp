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
	<h1 style="color: blue">Registration</h1>
	<form:form modelAttribute="fn8">
		Email:<form:input type="text" path="email" />
		<br />
		Name:<form:input type="text" path="name" />
		<br />
		Password:<form:input type="text" path="password" />
		<br />
		Phone:<form:input type="text" path="phone" />
		<br />
		Username:<form:input type="text" path="username" />
		<br />
		<input type="submit" value="Submit">
		<br />
	</form:form>

</body>
</html>