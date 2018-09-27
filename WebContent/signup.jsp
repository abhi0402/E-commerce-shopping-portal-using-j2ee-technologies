<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

<header>
		<h1>
			Tiazon
		</h1>
		<nav>
			<ul>
				<li><a href="Controller?page=index">Home</a></li>
				<c:choose>
					<c:when test="${session == null}">
						<li><a href="Controller?page=login">Login</a></li>
						<li><a href="Controller?page=sign-up">Sign-up</a></li>
					</c:when>
					<c:when test="${session != null}">
						<li><a href="Controller?page=logout" style="color: #F24638;">Logout</a></li>
						<li><a href="#">My Account</a></li>
					</c:when>
				</c:choose>
				<li><a href="Controller?page=showcart">cart(<c:out value="${x}"/>)</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="signup-header">
	 	<h2>Signup with Tiazon</h2>
	 </div>

	 <form method="post" action="Controller">
	 
	 <input type="hidden" name="page" value="sign-up-form">
	 
	 	<!-- Validations errors -->
	 	<font color="#F24638"><c:out value="${msg }"></c:out></font>
	 	
	 	
	 	<div class="signup-group">
	 		<label>Name</label>
	 		<input type="text" name="name" placeholder="Name goes here" value="<c:out value="${name }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Email</label>
	 		<input type="email" name="email" placeholder="Your email address" value="<c:out value="${email }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Username</label>
	 		<input type="text" name="username" placeholder="Username" value="<c:out value="${username }"></c:out>" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<label>Address</label>
	 		<input type="text" name="address" placeholder="your address goes here" value="<c:out value="${address }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Password</label>
	 		<input type="password" name="password_1" placeholder="Enter password" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Confirm Passowrd</label>
	 		<input type="password" name="password_2" placeholder="Re-enter password" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<button type="submit" name="register" class="signup-btn">Register</button>
	 	</div>
	 	<p>
	 		Already have an account? <a href="Controller?page=login" style="color:#F24638;">Login!</a>
	 	</p>
	 </form>
	<br><br><br>
	<footer>
		<div class="footer"> &copy; 2018 Copyright:
	      <a href="Controller?page=index"> Tiazon.com</a>
	    </div>
	</footer>

</body>
</html>