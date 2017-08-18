<%-- 
    Document   : login
    Created on : Jun 27, 2017, 9:30:42 AM
    Author     : jayprakash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <center>
        <div style="background-color: appworkspace; width: 400px; height: 300px; margin-top: 100px;
             padding: 50px">
        <h1>Login Form</h1>
        User ID <input type="text" name="userid" class="txt">
        <br><br>
        Password <input type="password" name="password" class="txt">
        <br><br>
        <input type="submit" value="Login" name="submit" class="btn"/>
        </div>
    </center>
    </body>
</html>
