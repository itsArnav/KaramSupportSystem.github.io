<%@page import="mypack.DBManager"%>
<%
    String id=request.getParameter("id");
    String q="delete from enquiry where eqid='"+id+"'";
    DBManager db=new DBManager();
    String msg=(db.executeNonQuery(q)==true)?"Enquiry Deleted":"there went some problem in deleteing enquiry";
    out.print(db.getAlert(msg,"../enquirymgmt.jsp"));
%>
