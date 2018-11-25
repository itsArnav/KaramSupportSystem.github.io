

<%@page import="mypack.CaptchaGenerator"%>
<html>
<head>
<title>
Registration Form
</title>
    <link href="css/registration.css" rel="stylesheet" type="text/css"/>
    
    <style>
       
    </style>
<link rel="icon" type="image/ico" href="images/ku.png" />
</head>

<body style="background-image:url('images/bg2.jpg');
    background-attachment:fixed;">
    <div id="menu">
            <img src="images/k - Copy.png" alt="" style="float"/>
    <ul style="float:right;">
	<li><a href="index.jsp">Home</a></li>
	<li><a href="enquiry.jsp">Enquiry</a></li>
	
        <li><a href="loginform.jsp">Login</a></li>
	<li style="border:none;"><a href="otherpages/about.jsp">About Us</a></li>
	

	
	</ul>

<form action="generalcode/registrationcode.jsp" method="post">
    <table border="0" width="100%" cellspacing="10px" style="color:white;text-shadow:1.2px 1.2px black">
   <tr><td colspan="6"><font face="Britannic Bold" size="4" color="white"><b><u>Employee's Details:</u><b></font></td></tr>
   <tr>
    <td><font face="Constantia" color=" white">EmpID:</font></td>   
   <td><input type="text" required="true" size="30px" name="empid"/></td>
    <td><font face="Constantia" color=" white">Name:</font></td>
   <td><input type="text" required="true" size="30px" name="empname"/></td>


<tr>
<td colspan="6"></td>
</tr>
<tr>

<td colspan="1"><font face="Britannic Bold" size="4" color="white"><b><u>Gender:</u><b></font></td>

<td colspan="3">
<input type="radio" value="male" name="gender" value="Male" required="true"/>Male
<input type="radio" value="female" name="gender" value="Female" required="true"/>Female
</td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
    <tr><td colspan="6"><font face="Britannic Bold" size="4" color="white"><b><u>Father's Details:</u><b></font></td></tr>
<tr>
<td><font face="Constantia" color=" white">Name:</font></td>
<td><input type="text" required="true" size="30px" name="fathername"/></td></td>

</tr>
<td colspan="6"></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
<tr>
<td><font face="Britannic Bold" size="4" color="white"><b><u>Addresses:</u><b></font></td>
</tr>
<tr>
<td><font face="Constantia" color=" white" size="3">Postal Address:</font></td>
<td colspan="1" rowspan="2"><textarea style="resize: none" rows="" cols="30"  maxlength="200" name="address1" required>
</textarea></td>
<td><font face="Constantia" color=" white" size="3">Residential Address:</font></td>
<td colspan="1" rowspan="2"><textarea style="resize: none" rows="" cols="30"  maxlength="200" name="address2">
</textarea></td>
</tr>
<td colspan="6"></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
<tr>
    <tr><td colspan="6"><font face="Britannic Bold" size="4" color="white"><b><u>Other Details:</u><b></font></td></tr>
<tr>
<td><font face="Constantia" color=" white">Pin Code:</font></td>
<td><input type="number" required="true" size="30px" name="zipcode" style="width:240px;"/></td>

<td><font face="Constantia" color=" white">Date Of Joining:</font></td>
<td><input type="date" required="true" size="30px" name="doj" placeholder="dd/mm/yyyy(write in the given format)"/></td>
</tr>

 
<tr>
<td><font face="Constantia" color=" white">Department:</font></td>
<td>
<select name="department"  required="true" style="width:240px;">
    <option>
        Development
    </option>
    <option>HR</option>
    <option>Management</option>
</select>
</td>
<td><font face="Constantia" color=" white">Designation:</font></td>
<td><input type="text" required="true" size="30px" name="designation"/></td>
</tr>
<td colspan="6"></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
<tr>
    <td ><font face="Britannic Bold" size="4" color="white"><b><u>Contact No.:</u><b></font></td>
<td><input type="number" size="30px" required="true" name="contactno" style="width:240px;"/></td>
<td ><font face="Britannic Bold" size="4" color="white"><b><u>Email:</u><b></font></td>
<td><input type="email" size="30px" required="true" name="emailaddress"></td>

</tr>
<td colspan="6"></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
<tr><td colspan="6"><font face="Britannic Bold" size="4" color="white"><b><u>Identity Details:</u><b></font></td></tr>
<tr>
<td><font face="Constantia" color=" white">Adhar no:</font></td>
<td><input type="text" size="30px" required="true" name="adharno"></td>

<td><font face="Constantia" color=" white">PAN no:</font></td>
<td><input type="text" size="30px"  name="panno"/></td>
</tr>

<td colspan="6"></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
<tr>
<td ><font face="Britannic Bold" size="4" color="white"><b><u>Password:</u><b></font></td>
<td><input type="password" size="30px" required="true" name="password"></td>
</tr>
<tr>
<td><font face="Constantia" color=" white">confirm password:</font></td>
<td><input type="password" required="true" size="30px" name="confirmpassword"/></td>
</tr>
<td colspan="6"></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
<tr>
<td ><font face="Britannic Bold" size="4" color="white"><b><u>Captcha Code:</u><b></font></td>
            <td>
                <%
                    CaptchaGenerator cg=new CaptchaGenerator();
                    String capcode=cg.getCode();
                    
                %>
            <strike style="font-size: 20px"><i><h2><%=capcode%></h2></i></strike>
                <input type="hidden" name="capcode" value="<%=capcode%>"/>
            </td></tr>
            <tr>
            <td><font face="Constantia" color=" white">re-enter Captcha:</font></td>
            <td><input type="text" required="true" size="30px" name="captchacode" autocomplete="off"/></td>
</tr>

<tr>
    <td colspan="6">
<input type="submit" name="submit" value="Register" style="border:1px solid white; box-shadow: -2px -2px 35px black; background: #571845;color: white;height: 25px;width: 260px;font: bold 15px arial,Tempus Sans ITC;border-radius:2px;text-shadow:none;margin-left: -260px;/* float: left; */margin-left: 550px;font-family: artifika;margin-left: 386px;">
    </td>
</tr>


</table>
</form>

    <footer id="out3">
        <div id="r9">
<div class="g1">Your Visit<font align="left" color="darkgray" size="3px"><br/>Appointments<br/>Billing and Insurance<br/>Maps and directions</font></div>
<div class="g1">Health Solutions<font align="left" color="darkgray" size="3px"><br/>Appointments<br/>Billing and Insurance<br/>Find a doctor<br/>Maps and directions</font></div>

<div class="g1">CONTACT INFO<font align="left" color="darkgray" size="3px"><br/>Appointments<br/>Visit Us<br/>Google Maps<br/>Maps and directions</font></div>
</div>

    </footer>
        <div id="r10">
<div id="nich">
    
    <div class='dp'>
        <a href='https://www.facebook.com/www.karam.in/' target="_blank"> <img src="images/c2.png" alt="" height="40px" width="40px"/></a>
    </div>
    <div class='dp'>
        <a href='http://karam.in/' target="_blank"> <img src="images/c1.png" alt="" height="40px" width="40px"/></a>
    </div>
    <div class='dp'>
        <a href='https://twitter.com/karam_india?lang=en' target="_blank"> <img src="images/c3.png" alt="" height="34px" width="34px" style="
    margin-top: 4px;
    margin-left: 3px;
    "></a>
    </div>
    <div class='dp'>
        <a href='https://in.linkedin.com/company/karam' target="_blank"> <img src="images/c4.png" alt="" height="38px" width="38px" style="
    margin-top: 2px;
"></a>
    </div>
   
</div>
                       
             <div style="float: right;"><p style="
    margin-top: -34px;
    margin-right: 38px;
    color: #9a9898;
    font-size: 12px
">Karam Industries PVT LTD ©</p>
             <p style="
    margin-top: -15px;
    margin-right: 38px;
    color: #9a9898;
">Developed by- Arnav Gupta</p>
             </div>
</div>

</div>
</div>            
</body>		
</html>