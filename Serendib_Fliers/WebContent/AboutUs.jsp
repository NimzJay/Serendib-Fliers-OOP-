<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us | Serendib Fliers</title>
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
        <img src="pic/logo.png" width="60%" height="40%">
</div>
<div class="content">
    <p style="text-align: center; letter-spacing: 2px; font-size: xx-large ">About Serandib Fliers </p>
    <br>
    <p align="center" style="color: dimgray">
        Serandib Fliers is a Sri Lanken owned and operated company that has been helping visiters to discove<br>
        and enjoy Sri Lanka for over five years.Our expertise is unparalleled and our knowledge of Sri Lanka<br>
        unequalled.We take care of all details for your visit,whether you are a solo traveller ,a couple on <br>
        holiday or honeymoon, a group of friends or convention delegates,or visiters seeking activity or wellness<br>
        holidays.whatever your interest ,whether sheer pleasure,extreme sport ,trekking or bicycling ,wild life,<br>
        ancient or colonial culture,scenic tours,tropical cuisine . We can organise every kind of accommodation,<br>
        from jungle cabanas and contemportary luxury hotels. Serendib Fliers believes in a better future and thus<br>
        invests heavily on subtainability and eco-friendly practices.We are a team of trusted, energetic travel<br>
        specialists who create customized excursions to Sri Lanka. Our packages are totally based around your <br>
        interests and calendar they are stand-out encounters that are as novel as you may be.Our mastery, knowledge,<br>
        and individual connections enable us to configure travels that are rough and audacious, urban and ultra-complex,<br>
        or the ideal mix of both.
    </p>
<br><br><br><br><br>
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