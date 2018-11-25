<%@page import="mypack.DBManager"%>
<%
    String id=request.getParameter("id");
    String q="delete from complain where id='"+id+"'";
    DBManager db=new DBManager();
    String msg=(db.executeNonQuery(q)==true)?"Complain Deleted":"there went some problem in deleteing complain";
    out.print(db.getAlert(msg,"../complainmgmt.jsp"));
%>
