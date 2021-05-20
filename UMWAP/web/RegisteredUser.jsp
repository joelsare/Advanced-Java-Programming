<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : RegisteredUser
    Created on : Dec 1, 2020, 12:35:01 PM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Back!</title>
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <h1>Registered User Sign in!</h1><br><br><br><br><br><br><br>
        <form action="ValidateInfo.jsp" session="page" method="post">
            <input type="text" name="username" placeholder="username"><br>
            <input type="password" name="password" placeholder="password"><br>
            <input type="submit" value="Sign in!">
        </form>
        <p>
            Don't have an account? Get registered <a href="NewUser.jsp">here.</a>
        </p>
    </body>
</html>
