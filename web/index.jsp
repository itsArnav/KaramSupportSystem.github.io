<%-- 
    Document   : index
    Created on : Jul 16, 2018, 9:49:02 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        <link rel="icon" type="image/ico" href="images/ku.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="css/generalstyle.css" />
        <link href="http://fonts.googleapis.com/css?family=Noticia+Text|Shadows+Into+Light+Two|Raleway|Kaushan+Script|Droid+Serif" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="ism/css/my-slider.css"/>
<script src="ism/js/ism-2.2.min.js"></script>
       
    </head>
    <body>
        <form>
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                    <div id="container">
                        <%@include file="generalmaster/left.jsp"%>
                        <div id="main">
                           <div id="we">
                               <h1 style="font-style: normal;
    font-weight: 700;
    font-size: 40px;
    line-height: 1.43;
    font-family: orange juice, sans-serif;
    letter-spacing: 0em;
    text-align: inherit;
    color: #27282a; text-align: center;">WHO WE ARE!</h1>
                               <hr size="2px" color="#c70039" style="margin-top: -10px;">
                               <p style="font-family:Artifika;text-align: center;">
 

 About Us
KARAM manufacturing set-up is spread over a span of more than 20 acres and has an annual installed capacity of over 1,000,000 Harnesses and over 125,000 SRLs. All products at KARAM are completely manufactured in-house, be it starting with yarn and processing it to make premium quality of webbing and rope, or conversion of hot rolled coils, flats and extrusions of steel and aluminium alloys to produce fall arrest components. Various components of the products and the connectors are also subjected to Proof load testing, under strict quality parameters.
It is our endeavor to constantly meet the growing demands of the American scenario, be it the changes in the Standards for compliance, or the need by the user for better comfort and ergonomics of the product.</p>
                            <div id="vedio">
                                <video width="500px" height="350px"controls autoplay=""  __idm_id__="239341569" style="
    margin-left: 92px;
    margin-top: -40px;
">
                                   <source src="vedio/v.MP4" type="video/mp4">
                                   Your browser does not support the <code>video</code> tag.
                               </video>
   
                           </div>
                               
                           </div>
                            
                            
                 
                        </div>
                    </div>
                        <%@include file="generalmaster/foot.jsp" %>
                       
            </div>
        </form>
    </body>
</html>
