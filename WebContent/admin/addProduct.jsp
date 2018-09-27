<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<h1>
			Welcome admin
		</h1>
		<nav>
			<ul>
				<li><a href="admin?page=index">Home</a></li>
				<li><a href="admin?page=addproduct">Add Product</a></li>
				<li><a href="#">Settings</a></li>
				<li><a href="#">Pages</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="signup-header">
	 	<h2>Add Product</h2>
	 </div>

	 <form method="post" action="admin">
	 
	 <input type="hidden" name="page" value="add_product">
     
	 	<div class="signup-group">
	 		<label>Name</label>
	 		<input type="text" name="name" placeholder="product name goes here"  required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Price</label>
	 		<input type="text" name="price" placeholder="product price" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Category</label>
	 		<input type="text" name="category" placeholder="product category" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<label>Featured</label>
	 		<input type="text" name="featured" placeholder="yes/no" required>
	 	</div>
	 	<div class="signup-group">
	 		 <label for="fileupload"> Select an image to upload</label>
	 		<input type="file" name="image" required><br>
	 	</div>
	 	<div class="signup-group">
			<input type="submit" value="Process">	 
		</div>
	 </form>
	
	 <footer style="position: absolute;left: 0;bottom: 0;width: 100%;">
		<div class="footer"> &copy; 2018 Copyright:
	      Tiazon.com
	    </div>
	</footer>
</body>
</html>