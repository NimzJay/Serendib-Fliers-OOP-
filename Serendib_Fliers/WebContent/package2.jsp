<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sigiriya | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div class="slideshow" style="max-width: 100%; max-height: 500px;">
    <img class="mySlides" src="pic/sigiri1.jpg">
    <img class="mySlides" src="pic/sigiri2.jpg">
    <img class="mySlides" src="pic/sigiri3.jpg">
    <img class="mySlides" src="pic/sigiri4.jpg">
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
<div class="high">
<p style="color: dimgrey; font-size: 30px"><b>SIGIRIYA TOUR HIGHLIGHTS</b></p>
<p style="color: dimgrey; font-size: 20px"><b>Meeting & Tour Starting Point - </b>  Bandaranaike International Airport, Negombo
Sigiriya Rock Fortress & Dambulla Cave Temple</p>
</div>
   <p align="center"><a href="Booking.jsp" class="abt"> Book Now>> </a></p>
<div class="box">
<p style="color: blue; font-size: 30px;">Itinerary</p>
<p style="color:dimgrey; front-size:20px;">Leave for Sigiriya through Kurunegala. Sigiriya (Lion's rock) is an ancient rock fortress and palace ruin, We start and climbing the rock. You can see Lion Paw, Mirror Wall, Frescoes and ruins with pond at summit of the rock. After we are back from the top of the rock we drive to the Elephant riding place. You can decide to take a ride on a Elephant through the Jungle.

On the way back we visit Dambulla. In Dambulla we visit one of the the biggest vegetables market in Sri Lanka. Siteseeing the city and proceed to the Dambulla Caves. Dating back to the 1st century BC, this is the most impressive cave temple in Asia. It has five caves under a vast overhanging rock, carved with a drip line to keep the interiors dry. In 1938 the architecture was embellished with arched colonnades and gabled entrances. Inside the caves, the ceilings are painted with intricate patterns of religious images following the contours of the rock.

After this visit we proceed back to the hotel.</p>
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