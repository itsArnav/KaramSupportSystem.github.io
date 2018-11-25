
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
    String empid=request.getParameter("userid");
    String password=request.getParameter("password");
    DBManager db=new DBManager();
    String query="select usertype from login where userid='"+empid+"' and password='"+password+"'";
     ResultSet rs=db.getRecord(query);
     if(rs.next()==true)
     {
         String usertype=rs.getString("usertype");
         if(usertype.equals("user"))
         {
         //out.print("<script>alert('welcome to user zone');</script>");
         session.setAttribute("uid",empid);
         
         String q="select empname from empinfo where empid='"+empid+"'";
         ResultSet rsname= db.getRecord(q);
         String name="";
         if(rsname.next())
         {
         name=rsname.getString(1);
         }
         
         session.setAttribute("uname", name);
         
         response.sendRedirect("../userzone/welcomeuser.jsp");
         }
         else if(usertype.equals("admin"))
         {
        // out.print("<script>alert('welcome to admin zone');</script>");
         session.setAttribute("aid",empid);
         response.sendRedirect("../adminzone/welcomeadmin.jsp");
         }
         
     }
     else
         {
         out.print("<script>alert('invalid user');window.location.href='../loginform.jsp'</script>");
         }
%>
