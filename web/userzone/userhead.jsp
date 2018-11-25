        
            <%@page import="mypack.DBManager"%>
            <div id="umenu">
                    
                            <div id="r1">
<div id="trap"><div id="menu">
 <ul>
     <a href="welcomeuser.jsp"><li>Home</li></a>
            <a href="feedback.jsp"><li>Feedback</li></a>
            <a href="ticket.jsp"><li>Raise Ticket</li></a>
            
            <a href="complain.jsp"><li>Complain</li></a>
	    <a href="changepassword.jsp"><li>Change Password</li></a>
            <a href="logout.jsp"><li>Logout</li></a>
 </ul>
		
</div></div></div>
                    
                    
                </div>
<div id="uhead">
    <div id="ulogo">
        <img src="../images/k.png" alt="" height="90%" width="90%" style="margin-left: 10px;margin-top: 10px;"/>
    </div>
  <!--  <div id="utitle"></div> -->
                
            </div>
           

<div id="udetails">
                <div id="ld">
                    <%
                        DBManager db=new DBManager();
                        
                    %>
                    <p style="
    margin-top: 9px;
">Date:23/07/2018</p>
                </div>
                <div id="rd">
                    <p style="margin-top: 9px;">Welcome <%=session.getAttribute("uname") %>!!</p>
                </div>
            </div>
                
            
            