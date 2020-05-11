<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert User | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div>
    <p align="center" style="font-size: xx-large; letter-spacing: 4px">Insert Guide Info</p><hr>
    <form class="register" action="adminInsertUser" method="POST" name="admin">
        <table class="form" style="border-color:black; color: black" align="center">
            <caption align="center" style="color:black; font-size: large ">
            </caption>
             <tr>
            <td>First name: </td>
            <td><input id="Text1" type="text" name="userFname" required/></td>
        </tr>
        <tr>
            <td>Last name: </td>
            <td><input id="Text1" type="text" name="userLname" required/></td>
        </tr>
        <tr>
            <td>Username: </td>
            <td><input id="Text1" type="text" name="username" required/></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><input id="pass" type="password" name="password" required/></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td><textarea class="address" name="address" cols="50" rows="6" required></textarea> &nbsp;</td>
        </tr>
        <tr>
            <td>Contact Number: </td>
            <td><input placeholder="0700000000" type="text" name="contactNo1" required/></td>

        </tr>
        <tr>
            <td><pre>                </pre></td>
            <td><input placeholder="0112000000" type="text" name="contactNo2" required></td>
        </tr>
        <tr>
            <td>E-mail: </td>
            <td cellspacing="0"><input type="text" name="email" required/> &nbsp;</td>
        </tr>
        <tr>
            <td>NIC number: </td>
            <td><input id="Text1" type="text" name="nic" required/></td>
        </tr>
        <tr>
            <td>User Type: </td>
            <td><input id="Text1" type="text" name="type" required/></td>
        </tr>
            <tr></tr>

            <tr>
            	<td></td>
                <td>
                    <input type="submit" value="Insert" name="insert"/>
                </td>
              
            </tr>

        </table>
    </form>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<form class="logout" action="logout" method="POST">
    	<table class="logout" style="border-color:dimgray; padding:4px" align="center">
    		<tr>
    			<td><input type="submit" value="LOGOUT"></td>	
    		</tr>	
    	</table>
</form>
</body>
</html>