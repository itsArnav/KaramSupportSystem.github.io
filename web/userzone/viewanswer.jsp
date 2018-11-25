
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
        <form action="usercode/complaincode.jsp" method="post">
        <div id="outer">
        
        
        <%@include file="userhead.jsp"%>
        <div id="container3">
                
        <p style="font-size:45px;margin-top: 75px;font-family: norikee demo;text-align: center">Answer Panel </p>
        
      <div style="border: 1px solid;margin: 0px auto;overflow: auto;height: 300px;width: 1115px;/* margin-top: 50px; */padding: 40px;border-radius: 10px;font-family: bigshot one;font-size: 15px;margin-top: -22px;color: #245f65;text-shadow: 1px 1px #67aab2;box-shadow: 2px 2px 25px #3b8087;">
            <table cellspacing=20px style="color:black;font-family: artifika;" >
                <tbody>
                    <tr>
                        <td colspan="4"  style="font-size: 15pt;color:black;">
                            <span style="color:darkorange ;text-shadow: 1px 1px #27282a"> Ques: </span><%=request.getParameter("qtext")%>
                        </td>
                    </tr>
                    <tr  >
                        <th>SNo.</th>
                        <th>Answer</th>
                        <th>Posted By</th>
                        <th>Date</th>
                    </tr>
                    <tr>
                            <%
                            String q="select * from answer where qid='"+request.getParameter("qid")+"'";
                            ResultSet rs=db.getRecord(q);
                            int n=1;
                            while(rs.next())
                            {
                            %>
                    <tr  style="color:navy;font-family: artifika;">
                        <td><%=n%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(3)+"("+rs.getString(4)+")"%></td>
                        <td><%=rs.getString(6)%></td>
                        <%
                            }
                        %>
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