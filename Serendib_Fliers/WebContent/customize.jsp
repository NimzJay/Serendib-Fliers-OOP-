<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customize | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div>
<p align="center" style="font-size: xx-large; letter-spacing: 4px">CUSTOMIZE YOUR OWN TOUR</p><hr>
<form class="register"  name="Insertpackage" action="insertpackage" method="POST">
    <table class="form" style="border-color:white; color: dimgray" align="center">
        <tr>
            <td>User Name: </td>
            <td><input id="Text1" type="text" name="username" required/></td>
        </tr>
        <tr>
            <td>NIC Number: </td>
            <td><input placeholder="943838558v" id="Text1" type="text" name="id" required/></td>
        </tr>
        
        <tr>
            <td>E-mail: </td>
            <td cellspacing="0"><input type="text" name="email" required/></td>
        </tr>
		<tr>
            <td>Contact Number: </td>
            <td><input placeholder="0700000000" type="text" name="contactNo1" required/></td>
        </tr>
		
		<tr>
			<td>Country:</td>
			<td><input id="Text1" type="text" name="country" required/></td>
		</tr>
        
        <tr>
			<td>Arrival Date:</td>
			<td><input placeholder ="DD/MM/YYYY" type="date" name="date" required/></td>
		</tr>
        
        <tr>
			<td>Pickup Palce:</td>
			<td><input id="Text1" type="text" name="pickup" required/></td>
		</tr>
        
        		<tr>
			<td>Number Of Adults:</td>
			<td><input id="Text1" type="text" name="adults" required/></td>
		</tr>
        
        		<tr>
			<td>Number Of Children:</td>
			<td><input id="Text1" type="text" name="children" required/></td>
		</tr>
		
		<tr>
			<td>Tour Duraton:</td>
			<td><input id="Text1" type="text" name="duration" required/></td>
		</tr>
		
		<tr>
			<td>Perferred Accommodation:</td>
			<td><input placeholder ="Villa/Boutique/Delux/Fit for My Budget" type="text" name="accommodation" required/></td>
		</tr>
        
        <tr>
			<td>Approx.Per Person Budget:</td>
			<td><input id="Text1" type="text" name="budget" required/></td>
		</tr>
		
        <tr>
            <td>Additional Note: </td>
            <td><textarea  name="additional" cols="50" rows="6" required></textarea> &nbsp;</td>
    <tr>

            <td>
                <input type="reset" value="RESET" name="reset"></td><td>
                <input type="submit" value="SUBMIT" name="sent">
            </td>

        </tr>

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