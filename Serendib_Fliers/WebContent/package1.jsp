<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Colombo | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="pic/111.jpg">
<div class="slideshow" style="max-width: 100%; max-height: 500px;">
    <img class="mySlides" src="pic/colombo1.jpg">
    <img class="mySlides" src="pic/colombo2.jpg">
    <img class="mySlides" src="pic/colombo3.jpg">
    <img class="mySlides" src="pic/colombo4.jpg">
    <img class="mySlides" src="pic/colombo5.jpg">
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
<p style="color: dimgrey; font-size: 30px"><b>COLOMBO DAY TOUR HIGHLIGHTS</b></p>
<p style="color: dimgrey; font-size: 20px"><b>Bandaranaike International Airport, Negombo
Galle Face Green, Petah Bazaar, Town Hall, Viharamahadevi Park, 
BMICH, Colombo National Museum, Independence square, Jami Ul Alfar Jumma Mosque, Gangarama & Seema Malaka Temple and more..</p>
</div>
   <p align="center"><a href="Booking.jsp" class="abt"> Book Now>> </a></p>
<div class="box">
<p style="color: blue; font-size: 30px; ">Itinerary</p>
<p style="color:dimgrey; front-size:20px;">We will pick you up at the hotel in the morning or afternoon. Tour will begin from the Fort area of Colombo which has been named fort because of it being a fort during the times of Portuguese and Dutch. Later we will take you to Colombo National Museum to see some of the great specimens of arts crafts and archeology of Colombo.

You will drive thru the commercial areas and drive past Pettah, a colorful Oriental bazaar with a mix of people, ancient vehicles, bargains, mosques and temples. You have a chance to see a Hindu Temple, Buddhist Temple and the Jami Ul Alfar Jumma Mosque of Colombo.

Continue your tour of Colombo through the Wolfendhal Dutch Church, Hulfts dorp Law Courts as you drive along the residential area of Cinnamon Gardens, and also visit the Independence Square and Bandaranayake Memorial International Conference Hall. Your tour will end here and we will bring you back to your respective hotel.</p>
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
<td>An english-speaking tour guide with intimate knowledge of the city</td>
<td>Entrance tickets.</td>
</tr>
<tr>
<td>Private transportation for the duration of the tour.</td>
<td>Foods & drinks.</td>
</tr>
<tr>
<td>Pick-up and Drop-off in CMB Airport / Colombo / Negombo.</td>
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