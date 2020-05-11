<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A_Home | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
 <p align="center" style="font-size: xx-large; letter-spacing: 4px">Welcome ADMIN</p><hr>
     <table class="form" align = "center" cellpadding="10" cellspacing="5" border = "1">
        <tr>
        	<td><a href = "View.jsp">Guide Information</a></td>
        	<td><a href = "adminViewUser.jsp">Customer Information</a></td>
        </tr>
	</table>
<form class="logout" action="logout" method="POST">
<table class="logout" style="border-color:dimgray; padding:4px" align="center">
	<tr>
		<td><input type="submit" value="LOGOUT"></td>
	</tr>
</table>
</form>
</body>
</html>