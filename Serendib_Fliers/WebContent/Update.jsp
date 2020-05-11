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
<title>Update Guide | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div>
<%
		String gid = request.getParameter("id");
		System.out.println("Form: "+gid);
	try{
		
		String sql = ("SELECT * FROM guide WHERE GuideId = '"+gid+"'");				
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery(sql);	
		while(rs.next()) {	
%> 
    <p align="center" style="font-size: xx-large; letter-spacing: 4px">Update Guide Info</p><hr>
    <form class="register" action="UpdateGuideInfo" method="POST" name="admin">
        <table class="form" style="border-color:black; color: black" align="center">
            <caption align="center" style="color:black; font-size: large ">
            </caption>
             <tr>
                <td>GuideId: </td>
                <td><input type="text" name="id" value="<%=rs.getString("GuideId") %>" /></td>
            </tr>
            <tr>
                <td>First Name: </td>
                <td><input type="text" name="firstname" value="<%=rs.getString("FirstName") %>"/></td>
            </tr>
             <tr>
                <td>Last Name: </td>
                <td><input type="text" name="lastname" value="<%=rs.getString("LastName") %>"/></td>
            </tr>
            <tr>
                <td>Age: </td>
                <td><input type="text" name="age" value="<%=rs.getString("age") %>"/></td>
            </tr>
             <tr>
                <td>Email: </td>
                <td><input type="text" name="mail" value="<%=rs.getString("Email") %>"/></td>
            </tr>
             <tr>
                <td>Contact Number: </td>
                <td><input type="text" name="num" value="<%=rs.getString("ContactNumber") %>"/></td>
            </tr>
            <tr>
                <td>Availability: </td>
                <td><input type="text" name="avl" value="<%=rs.getString("availability") %>"/></td>
            </tr>
            <tr></tr>

            <tr>
            	<td></td>
                <td>
                    <input type="submit" value="Update Info" name="update"/>
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