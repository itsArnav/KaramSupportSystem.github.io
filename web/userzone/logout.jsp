<%-- 
    Document   : logout
    Created on : Jul 23, 2018, 10:34:26 AM
    Author     : acer
--%>
<%
    session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
             function logout()
             {
                 window.history.forward();
                 window.setTimeout("window.location.href='../loginform.jsp'",500);
             }
        </script>
        <style>
                        body
{
    background-image:url('../images/userbg.jpg');
    background-attachment:fixed;
    
}
        </style>
    </head>
    <body onload="logout()">
        
        
    </body>
</html>
