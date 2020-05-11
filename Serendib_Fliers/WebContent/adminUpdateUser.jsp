<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="java.io.IOException"%>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
	}catch(Exception ex){
		ex.printStackTrace();
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update User | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div>
<%
		String uid = request.getParameter("user");
		System.out.println("Form: "+uid);
	try{
		
		String sql = ("SELECT * FROM user WHERE username = '"+uid+"'");				
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery(sql);	
		while(rs.next()) {	
%> 
	<p align="center" style="font-size: xx-large; letter-spacing: 4px">Update User Info</p><hr>
    <form class="register" action="adminUpdateUser" method="POST" name="admin">
        <table class="form" style="border-color:black; color: black" align="center">
            <caption align="center" style="color:black; font-size: large ">
            </caption>
             <tr>
            <td>First name: </td>
            <td><input id="Text1" type="text" name="userFname" value="<%=rs.getString("userFname") %>" required/></td>
        </tr>
        <tr>
            <td>Last name: </td>
            <td><input id="Text1" type="text" name="userLname" value="<%=rs.getString("userLname") %>" required/></td>
        </tr>
        <tr>
            <td>Username: </td>
            <td><input id="Text1" type="text" name="username" value="<%=rs.getString("username") %>" required/></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><input id="pass" type="password" name="password" value="<%=rs.getString("password") %>" required/></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td><textarea class="address" name="address" cols="50" rows="6" value="<%=rs.getString("address") %>" required></textarea> &nbsp;</td>
        </tr>
        <tr>
            <td>Contact Number: </td>
            <td><input placeholder="0700000000" type="text" name="contactNo1" value="<%=rs.getInt("contactNo1") %>" required/></td>

        </tr>
        <tr>
            <td><pre>                </pre></td>
            <td><input placeholder="0112000000" type="text" name="contactNo2" value="<%=rs.getInt("contactNo2") %>" required></td>
        </tr>
        <tr>
            <td>E-mail: </td>
            <td cellspacing="0"><input type="text" name="email" value="<%=rs.getString("email") %>" required/> &nbsp;</td>
        </tr>
        <tr>
            <td>NIC number: </td>
            <td><input id="Text1" type="text" name="nic" value="<%=rs.getString("NIC") %>" required/></td>
        </tr>
        <tr>
            <td>User Type: </td>
            <td><input id="Text1" type="text" name="type" value="<%=rs.getString("type") %>" required/></td>
        </tr>
            <tr></tr>

            <tr>
            	<td></td>
                <td>
                    <input type="submit" value="Update" name="insert"/>
                </td>
              
            </tr>

        </table>
        <%
			}
		}catch(Exception ex){
			System.out.println("Error: " + ex);
			ex.printStackTrace();
		}
%>
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