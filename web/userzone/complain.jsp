
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User zone</title>
        
        
        <link href="../css/changepassword.css" rel="stylesheet" type="text/css"/>
        <style>
     
        </style>
    </head>
    <body>
        <form action="usercode/complaincode.jsp" method="post">
        <div id="outer">
        
        
        <%@include file="userhead.jsp"%>
        <div id="container3">
                <center>
        <p style="font-size:45px;margin-top: 75px;font-family: norikee demo;">Complain Panel </p>
        
      <div style="border: 1px solid;margin: 0px auto;height: 240px;width: 372px;/* margin-top: 50px; */padding: 40px;border-radius: 10px;font-family: bigshot one;font-size: 20px;margin-top: -22px;color: #245f65;text-shadow: 1px 1px #67aab2;box-shadow: 2px 2px 25px #3b8087;">
            <table>
                <tbody>
                    <tr>
                    <td>Subject</td>
                    <td><textarea name="subject" required="" style="width:200px;height:50px; resize: none;"></textarea></td>
                </tr>
                    <tr>
                    <td>Complain</td>
                    <td><textarea name="complain" required="" style="width:200px;height:100px; resize: none;"></textarea></td>
                </tr>
                
                
                <tr>
                    
                    <td colspan="2"><input type="submit" value="Post complain" required="" id="" style="background: #0066A2;color: white;border-style: outset;border-color: #0066A2;height: 35px;width: 150px;font: bold 15px arial, sans-serif;text-shadow:none;margin-top: 15px;margin-left: 92px;"></td>
                </tr>
                
            </tbody></table>
            </div>
                
        </div>
        </div>
          <div id="menu1">
            <img src="../images/k - Copy.png" alt="" style="float:left;"/>
    <ul style="float:right;">
	<li><a href="../index.jsp">Home</a></li>
         <a href="feedback.jsp"><li>Feedback</li></a>
        <a href="ticket.jsp"><li>Raise Ticket</li></a>
	<li><a href="../enquiry.jsp">Enquiry</a></li>
	<li><a href="#">NEWS</a></li>
        <li><a href="../loginform.jsp">Login</a></li>
	
	

	
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