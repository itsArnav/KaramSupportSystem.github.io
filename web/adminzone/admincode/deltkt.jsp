
<%@page import="mypack.DBManager"%>
<%
    String id=request.getParameter("id");
    String q="delete from ticket where ticketid='"+id+"'";
    DBManager db=new DBManager();
    String msg=(db.executeNonQuery(q)==true)?"Ticket Deleted":"there went some problem in deleteing ticket";
    out.print(db.getAlert(msg,"../tktmgmt.jsp"));
%>
