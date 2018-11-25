
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
        <form action="usercode/raiseticket.jsp" method="post">
        <div id="outer">

        
        <%@include file="userhead.jsp"%>
        
        
        <div id="container">
                <center>
                    
                    <p style="font-size:45px;margin-top: 35px;color:black">Raise Ticket 
                    </p>
                             
                    
                      <div style="border: 1px solid;margin: 0px auto;height: 200px;width: 420px;/* margin-top: 50px; */padding: 40px;border-radius: 10px;font-family:artifika;font-size: 15px;margin-top: -22px;color:black;text-shadow: 1px 1px #67aab2;box-shadow: 2px 2px 25px #3b8087;">
            <table>
                <tr>
                    <td>Problem</td>
                    <td><textarea type="text" name="problemdesc" required="" style="
    width: 233px;
    resize: none;
    font-family: artifika;
"></textarea></td>
                </tr>
                <tr>
                    <td>Your Department</td>
                    <td>
<select name="indepartment"  required="true" style="width:240px;">
    <option>
        Development
    </option>
    <option>HR</option>
    <option>Management</option>
</select>
</td>
                </tr>
                <tr>
                    <td>Concerned department</td>
                    <td>
<select name="concerndepartment"  required="true" style="width:240px;">
    <option>
        Development
    </option>
    <option>HR</option>
    <option>Management</option>
</select>
</td>
                </tr>
                
                <tr>
                    
                    <td colspan="2"><input type="submit" value="Raise" required="" id="" style="background: #0066A2;color: white;border-style: outset;border-color: #0066A2;height: 35px;width: 150px;font: bold 15px arial, sans-serif;text-shadow:none;margin-top: 15px;margin-left: 116px;"></td>
                </tr>
                
            </table>
            </div>
               
                    
                    
                    
                    
                    
                    
                    
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
        </div>
        </form>
    </body>
</html>
<%
}
%>