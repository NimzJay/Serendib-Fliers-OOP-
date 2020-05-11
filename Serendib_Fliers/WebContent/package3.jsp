<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Galle | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div class="slideshow" style="max-width: 100%; max-height: 500px;">
    <img class="mySlides" src="pic/galle1.jpg">
    <img class="mySlides" src="pic/galle2.jpg">
    <img class="mySlides" src="pic/galle3.jpg">
    <img class="mySlides" src="pic/galle4.jpg">
    <img class="mySlides" src="pic/galle6.jpg">
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

<div class="high">
<p style="color: dimgrey; font-size: 30px"><b>GALLE TOUR HIGHLIGHTS</b></p>
<p style="color: dimgrey; font-size: 20px"><b>Meeting & Tour Starting Point - </b> Bandaranaike International Airport, </br>Negombo
Kosgoda Turtle Hatchery, Galle Dutch Fort, Hikkaduwa Beach, Madu River Boat Ride</p>
</div>
   <p align="center"><a href="Booking.jsp" class="abt"> Book Now>> </a></p>
<div class="box">
<p style="color: blue; font-size: 30px; text-shadow: 2px 2px;">Itinerary</p>
<p style="color:dimgrey; front-size:20px;">Leave for Galle the first stop is at Kosgoda turtle farm. Then we continue to Galle Dutch Fort. Galle Dutch Fort is the best example of a fortified city built by Europeans in south and southeast Asia, showing the interaction between European architectural styles and south Asian traditions. The Galle fort is a world heritage site and the largest remaining fortress in Asia built by European occupiers.

When we arrived in Galle we sight seeing the city, visit the Dutch fort, the Galle Museum, a old Dutch church and the British church , We proceed and see the stick Fishermen sit on sticks while fishing in the traditional way. We proceed to Hikkaduwa. Hikkaduwa is a small town on the south coast of Sri Lanka. It is located in the Southern Province, about 20 km north-west of Galle. We go with a glassbottom boat and watch the corals, if you like it you can go snorkeling, after that we will have a boatrip at the Maduganga River in balapltiya with his famous 68 islands.

After the river trip we will proceed via Beruwela and Colombo back to the hotel.</p>
<p style="color:dimgrey; front-size:25px; text-align:center">---TOUR ENDS---
</p>

</div>
<style>
#include {
	margin: 50px;
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 52%;
}

#include td, #include th {
    border: 0px solid #ddd;
    padding: 8px;
}

#include tr:nth-child(even){background-color: #f2f2f2;}

#include tr:hover {background-color: #ddd;}

#include th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
<table id="include">
<tr>
<td><b>INCLUDES</b></td>
<td><b>EXCLUDES</b></td>
</tr>
<tr>
<td>Transportation by air-conditioned vehicle 
from pick up to drop off at airport/hotel.</td>
<td>Entrance tickets.</td>
</tr>
<tr>
<td>English speaking driver guide.</td>
<td>Foods & drinks.</td>
</tr>
<tr>
<td>Portage & service charge.</td>
<td></td>
</tr>
</table>
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