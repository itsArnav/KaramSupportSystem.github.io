        
            <%@page import="mypack.DBManager"%>
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
                    <p style="margin-top: 9px;">Welcome <%=session.getAttribute("aid") %>!!</p>
                </div>
            </div>
            <div id="umenu"></div>
            
            