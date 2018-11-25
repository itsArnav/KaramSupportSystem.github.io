
<%
if(session.getAttribute("uid")==null)
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
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User zone</title>
        
        <link href="../css/userstyle.css" rel="stylesheet" type="text/css"/>
        
        <style>
        //home feedback complain changepwd logout       
        </style>
    </head>
    <body>
        <form action="usercode/feedbackcode.jsp" method="post">
        <div id="outer">
      
        <%@include file="userhead.jsp"%>
        
        
        <div id="container">
             <p style="font-size:45px;margin-top: 15px;font-family: norikee demo;color: black">Feedback Form </p>
       
              <div style="border: 1px solid;margin: 0px auto;height: 131px;width: 372px;/* margin-top: 50px; */padding: 40px;border-radius: 10px;font-family: bigshot one;font-size: 20px;margin-top: -22px;color: #245f65;text-shadow: 1px 1px #67aab2;box-shadow: 2px 2px 25px #3b8087;">
           
            <center>
                    
        
       
                    
                    <table style="margin: 0px auto;">
                        
                        <tr>
                            <td>Enter Feedback</td>
                            <td><textarea name="feedback" required="" style="width:200px;height:80px;resize:none;font-family:Bahnschrift Light; "></textarea></td>
                        </tr>
                         <tr>
                    
                    <td colspan="2"><input type="submit" value="Post Feedback" required="" id="" style="background: #0066A2;color: white;border-style: outset;border-color: #0066A2;height: 35px;width: 150px;font: bold 15px arial, sans-serif;text-shadow:none;margin-top: 15px;margin-left: 92px;"></td>
                </tr>
       
                        
                    </table>
                           
                </center>
        
        </div></div>
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
       <%@include file="userfooter.jsp" %> 
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