<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your pizza order</title>
</head>
<body>
<%--    	<h1>Here is your pizza order:</h1>
   
   	<ul>  	 
   		<li><c:out value="${ crust }" /></li>
   		<li><c:out value="${ cheese }" /></li>
   		<li><c:out value="${ sauce }" /></li>
   		<li><c:out value="${ topping }" /></li>
   	</ul>
   	
   	<a href="/">Home</a> --%>
   	<p>Hi <c:out value="${email}"/></p>
   	
</body>
</html>