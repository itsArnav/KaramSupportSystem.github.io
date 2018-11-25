<%@page import="mypack.DBManager"%>
<%
    String empid=session.getAttribute("uid")+"";   
    String empname=session.getAttribute("uname")+"";
    String problemdesc=request.getParameter("problemdesc");
    String indepartment=request.getParameter("indepartment");
    String concerndepartment=request.getParameter("concerndepartment");
    DBManager db=new DBManager();
    String raisedate=db.getCurrentDate();
    //String status="pending";
   String q="insert into ticket(empid,empname,problemdesc,indepartment,concerndepartment,raisedate) values('"+empid+"','"+empname+"','"+problemdesc+"','"+indepartment+"','"+concerndepartment+"','"+raisedate+"')";
    String msg=(db.executeNonQuery(q)==true)?"Ticket Raised":"There was some problem in Raising ticket";
    out.print(db.getAlert(msg, "../ticket.jsp"));
    
%>