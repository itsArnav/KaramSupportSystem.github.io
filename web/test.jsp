<%-- 
    Document   : test
    Created on : Jul 17, 2018, 10:49:09 AM
    Author     : acer
--%>

<%@page import="mypack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
        <%
            DBManager db=new DBManager();
            out.print(db.getAlert("hello", "index.jsp"));
            
        %>
        </h1>
    </body>
</html>
