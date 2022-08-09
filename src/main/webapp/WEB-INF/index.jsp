<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Order Pizza</title>
	</head>
	<body>
	   	<h1>Hello There</h1>
	   
	 <!--   <h2>Order your pizza here:</h2> -->
<!-- 	   	<form action="/submit" method="post">
	   		<p>
	   			Crust Selection:
	   			<input type="text" name="crust"  />
	   		</p>
	   		<p>
	   			Cheese Selection:
	   			<input type="text" name="cheese"  />
	   		</p>
	   		<p>
	   			Sauce Selection:
	   			<input type="text" name="sauce"  />
	   		</p>
	   		<p>
	   			Topping Selection:
	   			<input type="text" name="topping"  />
	   		</p>
	   		<button>Order Pizza</button>
	   	</form> -->
	   	
		<h3>Login</h3>
	    <form action='/login' method='POST'>
			<label>Email:</label>
		    <input type="text" name='email'>
			<label>Password:</label>
		    <input type='password' name='password'>
		    <input type='submit' value='login'>
	    </form>
	</body>
</html>