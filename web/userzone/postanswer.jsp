
<%@page import="java.sql.ResultSet"%>
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
        <form action="usercode/postanswercode.jsp" method="post">
        <div id="outer">
      
        
        <%@include file="userhead.jsp"%>
        <div id="container3">
                <center>
        <p style="font-size:45px;margin-top: 15px;font-family: norikee demo;">Post Answer </p>
        <input type="hidden" value="<%=request.getParameter("qid")%>" name="qid"/>
      <div style="border: 1px solid;overflow: auto;height: 300px;width: 1115px;/* margin-top: 50px; */padding: 40px;border-radius: 10px;font-family:CevicheOne-Regular;font-size: 20px;margin-top: -22px;color: #245f65;text-shadow: 1px 1px #67aab2;box-shadow: 2px 2px 25px #3b8087;">
           
          <table cellspacing="10px">
                <tbody>
                    <tr>
                    <td>Question</td>
                    <td style="font-size: 14pt;font-weight: bold;"><%=request.getParameter("qtext")%></td>
                    </tr>
                <tr>
                    <td>Post Answer</td>
                    <td><textarea style="width:240px;height:50px;resize:none;" name="answer" required></textarea></td>
                </tr>   
                
                <td colspan="2"><input type="submit" value="Post" required="" id="" style="margin-top:-5px; background: #0066A2;color: white;border-style: outset;border-color: #0066A2;height: 38px;width: 100px;font: bold 15px arial, sans-serif;text-shadow:none"></td>
                    
                    
                    
              
                
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