<%@page import="mypack.DBManager"%>
<%
    String password=request.getParameter("password");
    String confirmpassword=request.getParameter("confirmpassword");
    if(password.equals(confirmpassword))
    {
        //out.println("<script>alert('password matched');</script>");
        String capcode=request.getParameter("capcode");
        String captchacode=request.getParameter("captchacode");
        if(capcode.equals(captchacode))
        {
        String empid=request.getParameter("empid");
        String empname=request.getParameter("empname");
        String gender=request.getParameter("gender");
        String fathername=request.getParameter("fathername");
        String address1=request.getParameter("address1");
        String address2=request.getParameter("address2");
        int zipcode=Integer.parseInt(request.getParameter("zipcode"));
        String doj=request.getParameter("doj");
        String department=request.getParameter("department");
        String designation=request.getParameter("designation");
        String contactno=request.getParameter("contactno");
        String emailaddress=request.getParameter("emailaddress");
        
        String adharno=request.getParameter("adharno");
        String panno=request.getParameter("panno");
        String status="false";
       
        
        DBManager db=new DBManager();
        String query1="insert into empinfo values('"+empid+"','"+empname+"','"+gender+"','"+fathername+"','"+address1+"','"+address2+"','"+zipcode+"','"+doj+"','"+department+"','"+designation+"','"+contactno+"','"+emailaddress+"','"+adharno+"','"+panno+"','"+password+"','"+status+"')";
        String query2="insert into login values('"+empid+"','"+password+"','user')";
        
        if(db.executeNonQuery(query1)==true)
        {
            if(db.executeNonQuery(query2)==true)
            {
            out.println("<script>alert('registration sucessfull!!');window.location.href='../index.jsp';</script>");
            }
            else
            {
                out.println("<script>alert('login details not saved!!');window.location.href='../registration.jsp';</script>");
            
            }
        }
        }
        else
        {
         out.println("<script>alert('invalid captcha');window.location.href='../registration.jsp';</script>");
        }
    }
    else
    {
        out.println("<script>alert('Password doesnt match.');window.location.href='../registration.jsp';</script>");
    }
%>