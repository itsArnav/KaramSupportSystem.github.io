<%@page import="mypack.DBManager"%>
<%
    String notice=request.getParameter("notice");
    DBManager db=new DBManager();
    String dt=db.getCurrentDate();
    String query="insert into notice(noticetext,dt)values('"+notice+"','"+dt+"')";
    String msg=(db.executeNonQuery(query)==true)?"notification Added":"There went some problem";
    out.print(db.getAlert(msg,"../welcomeadmin.jsp"));
%>