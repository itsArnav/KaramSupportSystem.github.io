
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
        <div id="outer">

        
        <%@include file="userhead.jsp"%>
        
        
        <div id="container">
                <center>
                    
                    <p style="font-size:45px;margin-top: 35px;color:black"> User Home Page 
                    </p>
                    <a href="postquestion.jsp"><input type="button"  value="Discuss Queries"  id="" style="margin-top: -95px;background: #0066A2;color: white;border-style: outset;border-color: #0066A2;height: 38px;width: 144px;font: bold 15px arial, sans-serif;text-shadow:none;border-radius: 7px;box-shadow: 4px 4px 3px #8d6981;float: right;margin-right: 6px;"> 
                    </a>                    
                </center>
         
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
       <%@include file="userfooter.jsp" %> 
 <!--       
           
            <div id="container">
                <center>
                    
                        User Home Page
                    
                </center>
            
            
            
        </div> -->
    </body>
</html>
<%
}
%>