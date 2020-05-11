<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="java.io.IOException"%>
<%
	//session.getAttribute("pkgid");
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
<title>Customize | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div class="slideshow" style="max-width: 100%; max-height: 500px;">
  <img class="mySlides" src="pic/vv.jpg">
    <img class="mySlides" src="pic/cc.jpg">
    <img class="mySlides" src="pic/img11.jpg">
    <img class="mySlides" src="pic/nn.jpg">
    <img class="mySlides" src="pic/elepha.jpg">
    <img class="mySlides" src="pic/3.jpg">
    <img class="mySlides" src="pic/ll.jpg">
    <img class="mySlides" src="pic/sigiriya.jpg">
</div>
<script type="text/javascript">
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++){
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length){myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel,5000);
    }
</script>
<div class="header">
        <a href="Signin.jsp" class="right"> SIGN IN </a>
        <a href="Packages.jsp" class="right"> PACKAGES </a>
        <a href="Gallery.jsp" class="right"> GALLERY </a>
        <a href="AboutUs.jsp" class="right"> ABOUT US </a>
        <a href="index.jsp" class="right"> HOME </a>
</div>

<div>
<p align="center" style="font-size: xx-large; letter-spacing: 4px">CUSTOMIZE TOUR</p><hr>
<form class="register"  name="Insertpackage" action="updatePackage" method="POST">
    <table class="form" style="border-color:white; color: dimgray" align="center">
    	<%
		try{

			String sql = "SELECT * FROM customize WHERE pkgId= (SELECT MAX(pkgId) FROM customize)";				
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {	
		%>
        <tr>
            <td>User Name: </td>
            <td><input id="Text1" type="text" name="username" value="<%=rs.getString("name") %>" required/></td>
        </tr>
        <tr>
            <td>NIC Number: </td>
            <td><input id="Text1" type="text" name="id" value="<%=rs.getString("id") %>" required/></td>
        </tr>
        
        <tr>
            <td>E-mail: </td>
            <td cellspacing="0"><input type="text" name="email" value="<%=rs.getString("email") %>" required/></td>
        </tr>
		<tr>
            <td>Contact Number: </td>
            <td><input type="text" name="contactNo1" value="<%=rs.getString("cnumber") %>" required/></td>
        </tr>
		
		<tr>
			<td>Country:</td>
			<td><input id="Text1" type="text" name="country" value="<%=rs.getString("country") %>" required/></td>
		</tr>
        
        <tr>
			<td>Arrival Date:</td>
			<td><input type="date" name="date" value="<%=rs.getString("date") %>" required/></td>
		</tr>
        
        <tr>
			<td>Pickup Palce:</td>
			<td><input id="Text1" type="text" name="pickup" value="<%=rs.getString("pickup") %>" required/></td>
		</tr>
        
        		<tr>
			<td>Number Of Adults:</td>
			<td><input id="Text1" type="text" name="adults" value="<%=rs.getString("adults") %>" required/></td>
		</tr>
        
        		<tr>
			<td>Number Of Children:</td>
			<td><input id="Text1" type="text" name="children" value="<%=rs.getString("children") %>" required/></td>
		</tr>
		
		<tr>
			<td>Tour Duraton:</td>
			<td><input id="Text1" type="text" name="duration" value="<%=rs.getString("duration") %>" required/></td>
		</tr>
		
		<tr>
			<td>Perferred Accommodation:</td>
			<td><input type="text" name="accommodation" value="<%=rs.getString("accommodation") %>" required/></td>
		</tr>
        
        <tr>
			<td>Approx.Per Person Budget:</td>
			<td><input id="Text1" type="text" name="budget" value="<%=rs.getString("budget") %>" required/></td>
		</tr>
		
        <tr>
            <td>Additional Note: </td>
            <td><textarea  name="additional" cols="50" rows="6" value="<%=rs.getString("note") %>"></textarea> &nbsp;</td>
    <tr>

            <td>
                <input type="reset" value="RESET" name="reset"></td><td>
                <input type="submit" value="SENT" name="sent">
            </td>

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
<footer>
    <a href="index.jsp" class="footer"> HOME </a>
    <a href="AboutUs.jsp" class="footer"> ABOUT US </a>
    <a href="Gallery.jsp" class="footer"> GALLERY </a>
    <a href="Packages.jsp" class="footer"> PACKAGES </a>
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