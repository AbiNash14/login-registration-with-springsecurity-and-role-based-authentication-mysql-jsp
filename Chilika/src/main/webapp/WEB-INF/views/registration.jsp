<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

 

 

 

<style>

 

body,html{
 
background-image: url('https://www.10wallpaper.com/wallpaper/1366x768/1504/Breakfast_Island_Chilika_Lake-Windows_10_HD_Wallpaper_1366x768.jpg');
display:flex;
hight:150px;
background-repeat:no-repeat;
background-size:cover;
position:relative;
 


}
   
h1{
 font-family: Sans-serif; 
 font-size: 30px;     
 font-style: normal; 
 font-weight: bold; 
 color: white;
 text-align: center; 
 text-decoration: underline;
  text-shadow: 2px 2px 8px #FF0000;
}

 

table{
 font-family: verdana; 
 color:black; 
 font-size: 16px; 
 font-style: times;
 font-weight: bold;
 //background:  #efefef;  
 border-collapse: collapse; 
 //border: 4px solid #000000;
 border-style: solid;
 border-color: White;
 //box-shadow: 5px 10px #888888;
 
 

 

 } 
table.inner{
 border: 10px
}

 

input[type=text]{
 width: 70%;
 padding: 6px 12px;
 margin: 5px 0;
 box-sizing: border-box;
}



 

button[type=submit]{
 width: 25%;
 padding: 8px 12px;
 margin: 5px 0;
 box-sizing: border-box;
}

 

</style>

 

 

 

</head>
<body>

 

 

<form name='registeration' action="<c:url value='/register' />" method='get' id="completeform">
<h1>Registration  Form </h1>
<table align="center" cellpadding = "10">
<!---------------------  Name ------------------------------------------>
<tr>
<td>Full Name</td>
<td><input type="text" name="fullname" maxlength="30" placeholder="Enter your name" id="uname">
</td>
</tr>

 <!---------------------  Email ------------------------------------------>
 
<tr>
<td>Email</td>
<td><input type="text" name="email"  placeholder="Enter your email" id="email">
</td>
</tr> 

 


 <!---------------------  Password ------------------------------------------>
<tr>
<td>Password</td>
<td><input type="password" name="Password"  placeholder="Enter your password" id="pass">
</td>
</tr> 

 

<!----------------------- Submit and Reset ------------------------------->
<tr>
<td colspan="2" align="center">

 

 <button type="submit" class="btn btn-success" onclick="allocate()">Submit</button>

 
 

 

</td>
</tr>
</table>
</form>
</body>
</html>