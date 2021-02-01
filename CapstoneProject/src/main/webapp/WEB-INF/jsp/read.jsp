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

	<h1>Welcome to Music CD Shop</h1>
		<h4>Search for Product by Name:</h4>
		<a href="/search1" >Search </a><br/>
		<h4>Search for Product by Description:</h4>
		<a href="/search2" >Search </a><br/>
		<h4>Search for Song by Name:</h4>
		<a href="/search3" >Search </a><br/>
		<h4>Search for Song by Genre:</h4>
		<a href="/search4" >Search </a><br/>
		<h4>Search for Song by Price:</h4>
		<a href="/search5" >Search </a><br/>
		
		
		
		<h1>Our Music Catalog: </h1>
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
			<li>${products.img}</li>
			<br />
			<li><a href="/create2/${products.id}">Add to Cart</a><br />
			<br />
			<br /></li>
		</c:forEach>
	</ul>

	<a href="/create" >Create Product (Admin only) </a><br/>
	<a href="/editemp" >Update Product (Admin only)</a><br/>
	<a href="/delete" >Delete A Product  (Admin only)</a><br/>
	
	

</body>
</html>