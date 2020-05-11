<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C_Home | Serendib Fliers</title>
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
        <a href="Booking.jsp" class="right"> BOOK</a>
        <a href="Packages.jsp" class="right"> PACKAGES </a>
        <a href="Gallery.jsp" class="right"> GALLERY </a>
        <a href="AboutUs.jsp" class="right"> ABOUT US </a>
        <a href="clientUI.jsp" class="right"> HOME </a>
        <img src="pic/logo.png" width="60%" height="40%">
</div>
<div class="abt">
    <p align="center" style="color: dimgray; font-size: large">Sri Lankan Tours with</p>
    <p align="center" style="letter-spacing: 4px; font-size: xx-large; margin-top: -20px ">SERENDIB FLIERS</p>
    <p align="center" style="color: dimgray;">
    Serendib Fliers has been the leader in the Sri Lankan tourism and travel
    industry for over 5 years, organizing Sri Lankan tour guides for
    couples and groups on holidays or honeymoon, for individual adventurers
    and nature lovers, as well as for special interest and
    incentives holiday groups and convention delegates.
    </p>
    <p align="center"><a href="AboutUs.jsp" class="abt"> Read More </a></p>
    <br>

    <p align="center" style="letter-spacing: 2px; font-size: xx-large ">WHY BOOK WITH US?</p>

    <table align="center">
        <tr>
            <td>- &nbsp;  Tailor made Tour Guides.</td>
        </tr>
        <tr>
            <td><hr style="width: 100%; color: #cccccc"></td>
        </tr>
        <tr>
            <td>-  &nbsp; Over 5 years of Industrial Experience.</td>
        </tr>
        <tr>
            <td><hr style="width: 100%; color: #cccccc"></td>
        </tr>
        <tr>
            <td>-&nbsp;  Over 5 years of Industrial Experience.</td>
        </tr>
        <tr>
            <td><hr style="width: 100%; color: #cccccc"></td>
        </tr>
        <tr>
            <td>- &nbsp;  Public Liability Insurance of 3 Million.</td>
        </tr>
        <tr>
            <td><hr style="width: 100%; color: #cccccc"></td>
        </tr> <br><br>
        <tr>
            <td>- &nbsp;  Value for Money.</td>
        </tr>
    </table>
    <br><br><br><br><br><br><br><br><br><br><br>
</div>
<div class="abt2">
    <p align="center" style="letter-spacing: 4px; font-size: xx-large; margin-top: 40px ">TOURS</p>
    <p align="center" style="color: gray;">
        Touring Sri Lanka is an easy task when you leave all the arrangements to the
        Serendib Fliers. Our Tour Guides have an impressive knowledge of all
        aspects of this incredible country.
    </p>
    <p align="center"><a href="Packages.jsp" class="abt"> View All Packages </a></p>
    <br>
    <img src="pic/kan.jpg" width="100%"><br><br>
    <img src="pic/bird.jpg" width="51%" height="200">
    <img src="pic/b.jpg" width="46%" height="200">
</div>
<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<footer>
    <a href="clientUI.jsp" class="footer"> HOME </a>
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