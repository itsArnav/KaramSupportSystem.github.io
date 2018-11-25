
<%
if(session.getAttribute("aid")==null)
{
    response.sendRedirect("../login.jsp");
}
else
{
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/ico" href="../images/ku.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin zone</title>
        
        
        <link href="../css/changepassword.css" rel="stylesheet" type="text/css"/>
        <style>
     
        </style>
    </head>
    <body>
        <form action="admincode/changepasswordcode.jsp" method="post">
        <div id="outer">
        <div id="r1">
<div id="trap"><div id="menu" style="">
 <ul>
     <a href="welcomeadmin.jsp"><li>Notification</li></a>
            <a href="feedbackmgmt.jsp"><li>Feedback Mgmt</li></a>
            <a href="complainmgmt.jsp"><li>Complain Mgmt</li></a>
	    <li><a href="enquirymgmt.jsp" style="text-decoration: none;;color: white;">Enquiry Mgmt</a></li>
            <a href="../userzone/logout.jsp"><li>Logout</li></a>
 </ul>
		
</div></div></div>
        
        <%@include file="adminhead.jsp"%>
        <div id="container2">
                <center>
        <p style="font-size:45px;margin-top: 75px;font-family: norikee demo;color: black">Change Password </p>
        
        <div style="border: 1px solid;margin: 0px auto;height: 131px;width: 372px;/* margin-top: 50px; */padding: 40px;border-radius: 10px;font-family: bigshot one;font-size: 20px;margin-top: -22px;color: #245f65;text-shadow: 1px 1px #67aab2;box-shadow: 2px 2px 25px #3b8087;">
            <table>
                <tbody><tr>
                    <td>Enter Old Password</td>
                    <td><input type="password" name="oldpass" required=""></td>
                </tr>
                <tr>
                    <td>Enter New Password</td>
                    <td><input type="password" name="newpass" required=""></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" name="cpass" required=""></td>
                </tr>
                <tr>
                    
                    <td colspan="2"><input type="submit" value="Change Password" required="" id="" style="background: #0066A2;color: white;border-style: outset;border-color: #0066A2;height: 35px;width: 150px;font: bold 15px arial, sans-serif;text-shadow:none;margin-top: 15px;margin-left: 116px;"></td>
                </tr>
                
            </tbody></table>
            </div>
                
        </div>
        </div>
          <div id="menu1">
            <img src="../images/k - Copy.png" alt="" style="float:left;"/>
    <ul style="float:right;">
	<li><a href="../index.jsp">Home</a></li>
	<li><a href="../enquiry.jsp">Enquiry</a></li>
	<li><a href="#">NEWS</a></li>
        <li><a href="../loginform.jsp">Login</a></li>
	<li style="border:none;"><a href="../registration.jsp">Register</a></li>
	

	
	</ul>
</div>
       <%@include file="adminfooter.jsp" %>
 <!--       
           
            <div id="container">
                <center>
                    
                        User Home Page
                    
                </center>
            
            
            
        </div> -->
        </form>
        </body>
</html>
<%
}
%>