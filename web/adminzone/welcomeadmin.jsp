<%
if(session.getAttribute("aid")==null)
{
    response.sendRedirect("../login.jsp");
}
else
{
%>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        <link rel="icon" type="image/ico" href="../images/ku.png" />
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin zone</title>
        
        <link href="../css/adminstyle.css" rel="stylesheet" type="text/css"/>
        
        <style>
        //notification feedback mgmt complain mgmt changepwd logout       
        </style>
    </head>
    <body>
        <form action="admincode/notificationcode.jsp" method="post">
        <div id="outer">
        <div id="r1">
<div id="trap"><div id="menu">
 <ul>
     <li><a href="welcomeadmin.jsp">Notification</a></li>
     <li><a href="feedbackmgmt.jsp">Feedback Mgmt</a></li>
            <li><a href="enquirymgmt.jsp">Enquiry Mgmt</a></li>
            
            <li><a href="complainmgmt.jsp">Complain Mgmt</a></li>
            <li><a href="changepassword.jsp">Change Pwd</a></li>
            <li><a href="../userzone/logout.jsp">Logout</a></li>
 </ul>
		
</div></div></div>
        
        <%@include file="adminhead.jsp"%>
        
        
        <div id="container">
                <center>
                    
                    <p style="font-size:45px;margin-top: 35px;color:black;font-family:norikee demo;text-align: center;"> 
                        Notification Form
                    </p>
                                       
                    <center>
            <table cellspacing="20px">
                <tr>
                    <td colspan="4" style="font-size: 25px;text-align: center">
                        Enter notification text
                    </td>
                </tr>
                <tr>
                    <td>
    <textarea name="notice" requried="" style="
    height:100px;
    width:300px;
    resize:NONE;
    MARGIN-LEFT: 33px;
    box-shadow: -1px -1px 15px black;
    ">                            
                        </textarea>
                            
                        </textarea>
                    </td>
                </tr>
            </table>
                <table>
                <tr>
                    <td COLSPAN="2">&nbsp;</td>
                   <td colspan="2"><input type="submit" value="Add NOtification" required="" id="" style="    margin:0px auto;background: #0066A2;color: white;border-style: outset;border-color: #0066A2;height: 35px;width: 150px;font: bold 15px arial, sans-serif;text-shadow:none;margin-top: -2px;margin-left: 7px;"></td>
                </tr>
                
            </table>
                      </center>
            <br>
            <div  style="border-radius:20px;border:1px solid black;width:600px;overflow: auto;margin: 0px auto;box-shadow: 2px 2px 25px black;">
            <table style="margin: 0px auto; "cellspacing="40px">
                <tr>
                    <th>SNo.</th>
                    <th>Notification</th>
                    <th>Date</th>
                    <th>Delete</th>
                </tr>
                <%
               String q="select * from notice";
               ResultSet rs=db.getRecord(q);
               int n=1;
               while(rs.next())
               {
                %>
                <tr>
                    <td><%=n%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><a href="admincode/delnotice.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                    
                </tr>
  <% n++; } %>              
            </table>
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