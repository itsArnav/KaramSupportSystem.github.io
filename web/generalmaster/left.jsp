<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<div id="left">
    <div style="margin-left: 10px;text-align: center;">
    <br>
    <p style="font-family: orange juice;font-size: 40px;margin-top: 20px;    color: #ffc300e0;"><b>Notifications</b></p>
    <hr color="#ffc300;" size="2.5%" width="80%" style="margin-top: -18px;">
    <br>
    <marquee direction="up" style="height:600px;text-align: center;    font-family: artifika;
    font-weight: bold;
    color: #6f0011fa;">
    <%
       DBManager db=new DBManager();
       String q="select * from notice";
       db.getRecord(q);
       ResultSet rs=db.getRecord(q);
    while(rs.next())
    {
    %>
    <p style="font-size: 14pt;color:pink;font-family:Arial"><%=rs.getString(2)%></p>
    
    <p style="font-size: 9pt;color:#929292">Date<%=rs.getString(3)%></p>
    <hr color="#27282a" size="2.5%" width="90%">
    <%}%>
    </marquee>
    </div>
</div>