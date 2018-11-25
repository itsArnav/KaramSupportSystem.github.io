<%@page import="mypack.DBManager"%>
<%
    String subject=request.getParameter("subject");
    String complain=request.getParameter("complain");
    String name=session.getAttribute("uname")+"";
    String userid=session.getAttribute("uid")+"";
    DBManager db=new DBManager();
    String dt=db.getCurrentDate();
    String query="insert into complain(name,userid,subject,ctext,dt) values('"+name+"','"+userid+"','"+subject+"','"+complain+"','"+dt+"')";
    String msg=(db.executeNonQuery(query)==true)?"We will look after it soon. Thankyou":"There was some problem";
    out.print(db.getAlert(msg, "../complain.jsp"));
%>