<%-- 
    Document   : Home.jsp
    Created on : Dec 1, 2020, 2:12:05 PM
    Author     : joel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <h1>Home Page!</h1>
        <c:choose>
            <c:when test="${user.username == ''}" >
                <p>You are not signed in!</p>
                <p>Create an account <a href="NewUser.jsp">here</a>.</p>
                <p>Sign in <a href="RegisteredUser.jsp">here</a>.</p>
            </c:when>
            <c:otherwise>
                <p>You are signed in! Your username is ${user.username}</p>
                <p><a href="Signout.jsp">Click here to sign out.</a></p>
                <p><a href="Changepassword.jsp">Click here  to change password.</a></p>
            </c:otherwise>

        </c:choose>
    </body>
</html>
