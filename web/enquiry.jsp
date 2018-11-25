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
        <title>Enquiry Page</title>
        <link href="css/generalstyle.css" rel="stylesheet"/>
        <link href="http://fonts.googleapis.com/css?family=Noticia+Text|Shadows+Into+Light+Two|Raleway|Kaushan+Script|Droid+Serif" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="ism/css/my-slider.css"/>
<script src="ism/js/ism-2.2.min.js"></script>
       
    </head>
    <body>
        <form action="generalcode/enquirycode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                    <div id="container">
                        <%@include file="generalmaster/left.jsp"%>
                        <div id="main">
                            
                            
                            <br>
                            <form>
                                <div style="    height: 400px;
    width: 456px;
    border: 4px solid #900c3e;
    padding: 50px;
    padding-top: 0px;
    margin-top: 0px;
    border-radius: 5px;
    padding-right: 25px;
    margin-left: 100px;
    ">    
                                    
                                    <img src="images/k.png" alt="" style="margin-left: 70px;margin-top: 20px"/>
                            <table>
                                
                                
                                <tr>
                                    <td colspan="2" align="center"><H2><font color="#900c3e" face="Artifika">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enquiry Form</font></H2></td>
                                    
                                </tr>
                                <tr>
                                    <th style="text-align: left"><font color="#571845" face="Artifika">Enter User Name:</font></th>
                                    <td><input type="text" name="name" required></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left"><font color="#571845" face="Artifika">Select Gender:</font></th>
                                    <td><input type="radio" name="gender" value="male"/><font color="black" face="Artifika">Male</font></td>
                                    <td><input type="radio" name="gender" value="female"  style="margin-left:-81px"/><font color="black" face="Artifika">Female</font></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left"><font color="#571845" face="Artifika">Enter contact number:</font></th>
                                    <td><input type="number" name="contactno" required</td>
                                    
                                </tr>
                                <tr>
                                    <th style="text-align: left"><font color="#571845" face="Artifika">Enter Email ID:</font></th>
                                    <td><input type="email" name="email" required/></td>
                                </tr>
                                <tr>
                                    <th style="text-align: left"><font color="#571845" face="Artifika">Enter Query:</font></th>
                                    <td><textarea name="enquiry" required style="resize: none;    resize: none;
    width: 168px;
    height: 35px;"></textarea></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center"><input type="submit" name="submit" style="background:#c70039;color: white;

border-style: outset;

border-color:#571845;

height: 25px;

width: 80px;

font: bold 15px arial,Tempus Sans ITC ;

border-radius:2px; 

text-shadow:none;margin-left: 54px;margin-top: 15px;"></td>
                                    
                                </tr>
                            </table>
                           
                                </div>
                                
            
                                
                                
                        </div>
                    </div>
                        <%@include file="generalmaster/foot.jsp" %>
                       
            </div>
        </form>
    </body>
</html>
