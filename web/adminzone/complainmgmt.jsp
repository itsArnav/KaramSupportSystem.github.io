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
        <form action="admincode/delenqcode.jsp" method="post">
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
              <p style="font-size:45px;margin-top: 35px;color:black;font-family:norikee demo;text-align: center;"> 
                        Complain Management
                    </p>
                    <br>
                    <table style="margin:0px auto;width:90%;text-align: left;">
                        <tr>
                            <th>SNo.</th>
   <th>Name</th>
   <th>User ID</th>
   
   <th>Subject</th>
   <th>Complains</th>
   <th>Date</th>
   <th>Delete</th>
   
                        </tr>
                        <%
                        String q="select * from complain";
                        ResultSet rs=db.getRecord(q);
                        int n=1;
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=n%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                           
                            <td><a href="admincode/delcomp.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                        </tr>    
                        <%
                        n++;}
                        %>
                    </table>
               
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