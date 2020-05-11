<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="java.io.IOException"%>
<%
	//session.getAttribute("bkID");
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
<title>Confirmation | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div>
	<p align="center" style="font-size: xx-large; letter-spacing: 4px">Confirm Booking and Payment</p><hr>
	<form class="register"  name="booking"  method="POST">
	<table class="form" style="border-color:white; color: dimgray" align="center">
		<%
		try{
			String user = request.getParameter("username"); 
			System.out.println(user);
			//"SELECT * FROM booking WHERE bookingID = (SELECT MAX(bookingID) FROM booking) FULL OUTER JOIN guide ON booking.GuideId = guide.GuideId"
			String sql = "SELECT * FROM booking b INNER JOIN guide g ON b.GuideId = g.GuideId WHERE b.bookingID = (SELECT MAX(b2.bookingID) FROM booking b2)";				
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {	
		%>
		<tr>
            <td>Booking ID: </td>
        	<td><%=rs.getString("bookingID") %></td>
        </tr>
		<tr>
            <td>Package: </td>
        	<td><%=rs.getString("pkgID") %></td>
        </tr>
        <tr>
            <td>Trip Date: </td>
        	<td><%=rs.getString("TDate") %></td>
        </tr>
        <tr>
            <td>Card number: </td>
        	<td><%=rs.getString("cardNo") %></td>
        </tr>
        <tr>
            <td>Guide Id: </td>
        	<td><%=rs.getString("GuideID") %></td>
        </tr>
        <tr>
            <td>Guide Name: </td>
        	<td><%=rs.getString("FirstName") %></td>
        </tr>
        <tr>
            <td>Guide Email: </td>
        	<td><%=rs.getString("Email") %></td>
        </tr>
        <tr>
            <td>Guide Contact No: </td>
        	<td><%=rs.getString("ContactNumber") %></td>
        </tr>
        <tr>
            <td>
            	<a class="reg" href="updateBooking.jsp">UPDATE BOOKING</a>
            </td>
            <td>
                <button class="btn" type="submit" formaction="deleteBooking">DELETE BOOKING</button>
            </td>
            <td>
                <a class="reg" href="clientUI.jsp">SUBMIT BOOKING</a>
            </td>
        </tr>
        <tr>
     		<p align="center" style="color:gray">Booking details and allocated Tour Guide's details will be sent to your email address.</p>
        </tr>
        <%
			}
		}catch(Exception ex){
			System.out.println("Error: " + ex);
			ex.printStackTrace();
		}
        %>
	</table>
</form>
</div>
<br><br><br><br><br>
<footer>
    <a href="index.jsp" class="footer"> HOME </a>
    <a href="AboutUs.jsp" class="footer"> ABOUT US </a>
    <a href="Gallery.jsp" class="footer"> GALLERY </a>
    <a href="Packages.jsp" class="footer"> PACKAGES </a>
    <a href="Booking.jsp" class="footer"> BOOK </a>
    <form class="logout" action="logout" method="POST">
    	<table class="logout" style="border-color:dimgray; padding:4px" align="center">
    		<tr>
    			<td><input type="submit" value="LOGOUT"></td>	
    		</tr>	
    	</table>
    </form>
    <br><br>
    <hr color="dimgrey" width="100%">
    <table align="center" style="width: 70%; text-align: left; padding: 0px; margin-top:0px ; margin-bottom:0px; border-bottom=">
        <tr>
            <td class="footer" style="color: white">SERENDIB TOURS PVT.LTD.</td>
            <td class="footer">Phone &nbsp;&nbsp; +94112999999</td>
            <td class="footer" style="color: white">FIND US ON SOCIAL MEDIA</td>
        </tr>
        <tr>
            <td class="footer"># 225, Havelock Town</td>
            <td class="footer">Phone &nbsp;&nbsp; +94767999999</td>
            <td class="footer"><a class="footer" href="">Google+</a></td>
        </tr>
        <tr>
            <td class="footer">Colombo 05.</td>
            <td class="footer">Fax &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +94112456783</td>
            <td class="footer"><a class="footer" href="">Facebook</a></td>
        </tr>
        <tr>
            <td class="footer">Sri Lanka</td>
            <td class="footer">Email &nbsp;&nbsp;&nbsp;&nbsp; inquiry@serendibfliers.com</td>
            <td class="footer"><a class="footer" href="">Instagram</a></td>
        </tr>
    </table>
    <hr color="dimgrey" width="100%"><br>
    <p class="footer">
        <img src="pic/logo.png" width="20%" height="10%"><br>
        Copyright 2018 @ SERENDIBFLIERS - All Rights Reserved<br><br>
        Website Designed and Developed by SLIIT_G4_162
    </p>
</footer>
</body>
</html>