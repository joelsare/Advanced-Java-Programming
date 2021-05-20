<%-- 
    Document   : index
    Created on : Dec 1, 2020, 12:29:57 PM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <h1>Welcome to Joel's User Management Web Application!</h1>
        <form action="NewUser.jsp">
            <input type="submit" value="New User Registration">
        </form>
        <br>
        <form action="RegisteredUser.jsp">
            <input type="submit" value="Sign In">
        </form>
    </body>
</html>
