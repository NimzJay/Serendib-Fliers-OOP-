<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gallery | Serendib Fliers</title>
<link rel="icon" type="image/png" href="pic/favicon.png">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="gallery.css">
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
<br>
<div class="container">
    <br>
    <p align ="center" style="letter-spacing: 4px; font-size: xx-large; font-family: Calibri">SCENIC SRI LANKA BY SERENDIB FLIERS</p>
</div>
<br><br><br>
<div class="tab button" style="display:flex; justify-content:center;">
    <button class="tablinks" onclick="openTours(event, 'CULTURE')">CULTURE</button>
    <button class="tablinks" onclick="openTours(event, 'WILD_LIFE')">WILD LIFE</button>
    <button class="tablinks" onclick="openTours(event, 'BEACHES')">BEACHES</button>
    <button class="tablinks" onclick="openTours(event, 'LIFE_STYLE')">LIFE STYLE</button>
    <button class="tablinks" onclick="openTours(event, 'ADVENTURES')">ADVENTURES</button>
    <button class="tablinks" onclick="openTours(event, 'OTHERS')">OTHERS</button>
</div>

<div id="CULTURE" class="tabcontent">
	<table class="T">
        <tr>
            <td><img src="pic/srilankan_culture_1.jpg" ></td>
            <td><img src="pic/srilankan_culture_2.jpg" ></td>
            <td><img src="pic/srilankan_culture_3.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/srilankan_culture_4.jpg" ></td>
            <td><img src="pic/srilankan_culture_5.jpg" ></td>
            <td><img src="pic/srilankan_culture_6.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/srilankan_culture_7.jpg" ></td>
            <td><img src="pic/srilankan_culture_8.jpg" ></td>
            <td><img src="pic/srilankan_culture_9.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/srilankan_culture_10.jpg" ></td>
            <td><img src="pic/srilankan_culture_11.jpg" ></td>
            <td><img src="pic/srilankan_culture_12.jpg" ></td>
        </tr>
    </table>


</div>

<div id="WILD_LIFE" class="tabcontent">
    <table class="T">
        <tr>
            <td><img src="pic/wildlife_srilanka_1.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_2.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_3.jpg " ></td>
        </tr>

        <tr>
            <td><img src="pic/wildlife_srilanka_4.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_5.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_6.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/wildlife_srilanka_7.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_8.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_9.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/wildlife_srilanka_10.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_11.jpg" ></td>
            <td><img src="pic/wildlife_srilanka_12.jpg" ></td>
        </tr>
    </table>
</div>

<div id="BEACHES" class="tabcontent">
    <table class="T">
        <tr>
            <td><img src="pic/beaches_srilanka_1.jpg" ></td>
            <td><img src="pic/beaches_srilanka_2.jpg" ></td>
            <td><img src="pic/beaches_srilanka_3.jpg " ></td>
        </tr>

        <tr>
            <td><img src="pic/beaches_srilanka_4.jpg" ></td>
            <td><img src="pic/beaches_srilanka_5.jpg" ></td>
            <td><img src="pic/beaches_srilanka_6.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/beaches_srilanka_7.jpg" ></td>
            <td><img src="pic/beaches_srilanka_8.jpg" ></td>
            <td><img src="pic/beaches_srilanka_9.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/beaches_srilanka_10.jpg" ></td>
            <td><img src="pic/beaches_srilanka_11.jpg" ></td>
            <td><img src="pic/beaches_srilanka_12.jpg" ></td>
        </tr>
    </table>
</div>

<div id="LIFE_STYLE" class="tabcontent">
    <table class="T">
        <tr>
            <td><img src="pic/srilankan_lifestyle_1.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_2.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_3.jpg " ></td>
        </tr>

        <tr>
            <td><img src="pic/srilankan_lifestyle_4.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_5.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_6.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/srilankan_lifestyle_7.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_8.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_9.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/srilankan_lifestyle_10.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_11.jpg" ></td>
            <td><img src="pic/srilankan_lifestyle_12.jpg" ></td>
        </tr>
    </table>
</div>

<div id="ADVENTURES" class="tabcontent">
    <table class="T">
        <tr>
            <td><img src="pic/adventures_srilanka_1.jpg" ></td>
            <td><img src="pic/adventures_srilanka_2.jpg" ></td>
            <td><img src="pic/adventures_srilanka_3.jpg " ></td>
        </tr>

        <tr>
            <td><img src="pic/adventures_srilanka_4.jpg" ></td>
            <td><img src="pic/adventures_srilanka_5.jpg" ></td>
            <td><img src="pic/adventures_srilanka_6.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/adventures_srilanka_7.jpg" ></td>
            <td><img src="pic/adventures_srilanka_8.jpg" ></td>
            <td><img src="pic/adventures_srilanka_9.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/adventures_srilanka_10.jpg" ></td>
            <td><img src="pic/adventures_srilanka_11.jpg" ></td>
            <td><img src="pic/adventures_srilanka_12.jpg" ></td>
        </tr>
    </table>
</div>

<div id="OTHERS" class="tabcontent">
    <table class="T">
        <tr>
            <td><img src="pic/visit_srilanka_1.jpg"  ></td>
            <td><img src="pic/visit_srilanka_2.jpg" ></td>
            <td><img src="pic/visit_srilanka_3.jpg " ></td>
        </tr>

        <tr>
            <td><img src="pic/visit_srilanka_4.jpg" ></td>
            <td><img src="pic/visit_srilanka_5.jpg" ></td>
            <td><img src="pic/visit_srilanka_6.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/visit_srilanka_7.jpg" ></td>
            <td><img src="pic/visit_srilanka_8.jpg" ></td>
            <td><img src="pic/visit_srilanka_9.jpg" ></td>
        </tr>

        <tr>
            <td><img src="pic/visit_srilanka_10.jpg" ></td>
            <td><img src="pic/visit_srilanka_11.jpg" ></td>
            <td><img src="pic/visit_srilanka_12.jpg" ></td>
        </tr>
    </table>
</div>

<script type="text/javascript">
    function openTours(evt, tourName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(tourName).style.display = "block";
        evt.currentTarget.className += " active";
    }
</script>
<br><br><br><br><br><br><br><br><br><br>
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