<%@page import="mypack.DBManager"%>
<%
    String oldpass=request.getParameter("oldpass").trim();
    String newpass=request.getParameter("newpass").trim();
    String cpass=request.getParameter("cpass").trim();
    
    String q="update login set password='"+newpass+"' where userid='"+session.getAttribute("aid")+"' and password='"+oldpass+"'";
    String msg="";
    if(newpass.equals(cpass))
    {
    DBManager db=new DBManager();
    msg=(db.executeNonQuery(q)==true)?"password is changed":"old password mismatched";
    }else
    {
        msg="password not confirmed";
    }
%>
<script>
    alert('<%=msg%>');
    window.location.href='../changepassword.jsp';
</script>
    