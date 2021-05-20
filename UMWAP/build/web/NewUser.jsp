<%-- 
    Document   : NewUser
    Created on : Dec 1, 2020, 12:33:11 PM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome, New User!</title>
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <h1>New User!</h1><br><br><br><br><br><br><br>
        <form action="InputData.jsp" method="post">
            <input type="text" name="username" placeholder="username" minlength="2" required><br>
            <input type="password" name="password" placeholder="password" minlength="2" required><br>
            <input type="submit" value="Sign me up!">
        </form>
        <p>
            Already have an account? Log in <a href="RegisteredUser.jsp">here.</a>
        </p>
    </body>
</html>
