<%@page import="mypack.DBManager"%>
<%
    String id=request.getParameter("id");
    String q="delete from feedback where id='"+id+"'";
    DBManager db=new DBManager();
    String msg=(db.executeNonQuery(q)==true)?"Feedback Deleted":"there went some problem in deleteing feed";
    out.print(db.getAlert(msg,"../feedbackmgmt.jsp"));
%>
