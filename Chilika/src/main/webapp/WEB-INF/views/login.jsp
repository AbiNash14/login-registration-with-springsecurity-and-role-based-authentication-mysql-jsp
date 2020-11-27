<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h3>Chilika</h3>


	<form method="POST" action="/login">
		User Name : 
			<input type="text" name="username" value="user" />
			<br><br> Password : <input type="password" name="password" value="password" /><br> <br> 
			<input type="submit" name="submit" />
	</form>
</body>
</html>