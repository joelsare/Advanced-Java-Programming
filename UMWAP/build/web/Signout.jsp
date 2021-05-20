<%-- 
    Document   : Signout
    Created on : Dec 4, 2020, 9:05:46 AM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Goodbye!</title>
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <jsp:setProperty name="user" property="username" value=""/>
        <jsp:setProperty name="user" property="password" value=""/>
        <p>You are now signed out!</p>
        <p>Click <a href="RegisteredUser.jsp">here</a> to go back to the sign in page.</p>
    </body>
</html>
