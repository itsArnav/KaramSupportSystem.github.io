<%@page import="mypack.DBManager"%>
<%
    String question=request.getParameter("question");
    String name=session.getAttribute("uname")+"";
    String userid=session.getAttribute("uid")+"";
    DBManager db=new DBManager();
    String dt=db.getCurrentDate();
    String q="insert into question(name,userid,qtext,dt)values('"+name+"','"+userid+"','"+question+"','"+dt+"')";
    String msg=(db.executeNonQuery(q)==true)?"Question Posted":"There was some problem in posting question";
    out.print(db.getAlert(msg, "../postquestion.jsp"));
    
%>