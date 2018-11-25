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
        <title>Login</title>
        <link rel="stylesheet" href="css/generalstyle.css" />
        <link href="http://fonts.googleapis.com/css?family=Noticia+Text|Shadows+Into+Light+Two|Raleway|Kaushan+Script|Droid+Serif" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="ism/css/my-slider.css"/>
<script src="ism/js/ism-2.2.min.js"></script>
       
    </head>
    <body>
        <form action="generalcode/logincode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                    <div id="container">
                        <%@include file="generalmaster/left.jsp"%>
                        <div id="main">
                            
             <div style="    height: 460px;
    width: 456px;
    border: 4px solid #900c3e;
    padding: 50px;
    padding-top: 0px;
    margin-top: 50px;
    border-radius: 5px;
    padding-right: 25px;
    margin-left: 100px;">
                 
                 <img src="images/k.png" alt="" style="margin-top:5px;margin-left: 80px;"/>
    
<form>
<table border="0" width="100%" cellspacing="8px">
    <tr style=" font-family:Britannic Bold;text-shadow:1.2px 1.2px #900c3e"><td colspan="6"><font size="4" color="#e31e24"><b><u><h1>Login Form:</h1></u><b></font></td></tr>
    <tr><td><font face="Britannic Bold" size="4" color="#3D617A"><b><u>User ID:</u><b></font></td></tr>
   <td><input type="text" required="true" size="30px" name="userid" style="
    width: 235px;
"></td>
<tr>
<td></td>
</tr>
<tr>
    <td><font face="Britannic Bold" size="4" color="#3D617A"><b><u>Password:</u><b></font></td></tr>
                <tr><td><input type="password" size="30px" required="true" name="password" style="
    width: 237px;
"></td>
                </tr>

    
                </tr>
                 <tr>
                                    <td colspan="2" align="center"><input type="submit" value="login" name="submit" style="    background: #c70039;
    color: white;
    border-style: outset;
    border-color: #571845;
    height: 25px;
    width: 242px;
    font: bold 15px arial,Tempus Sans ITC;
    border-radius: 2px;
    text-shadow: none;
    margin-left: -169;
    margin-top: 15px;
    margin-left: -185px;"></td>
                                    
                                </tr>
                                
                                <tr>
                                    <td>
                                        <p style="margin-left:4px;color:#3D617A; ">don't have an account??<a href='registration.jsp'>Sign Up!</a></p>
                                    </td>
                                </tr>
                </table>
                </form>
                    </div>
                            
                    </div>
                        
                       
            </div>
                        <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
            
    </body>
</html>




























