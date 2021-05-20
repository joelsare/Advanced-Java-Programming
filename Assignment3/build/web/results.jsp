<%-- 
    Document   : results
    Created on : Sep 24, 2020, 11:28:12 AM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored ="false" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="form" class="com.apres.Storage" scope="session">
            <jsp:setProperty name = "form" property = "username" value = "${param.username}"/>
            <jsp:setProperty name = "form" property = "email" value = "${param.email}"/>
            <jsp:setProperty name = "form" property = "phone" value = "${param.phone}"/>
            <jsp:setProperty name = "form" property = "calculus" value = "${param.calculus}"/>
            <jsp:setProperty name = "form" property = "pottery" value = "${param.pottery}"/>
            <jsp:setProperty name = "form" property = "chemistry" value = "${param.chemistry}"/>
        </jsp:useBean>

        <h1>Results!</h1>

        username : ${form.username} <br>
        email : ${form.email} <br>
        phone : ${form.phone} <br>
        calculus : ${form.calculus} <br>
        pottery : ${form.pottery} <br>
        chemistry : ${form.chemistry} <br>



        <form method="post" action="index.jsp">
            <input type = "submit" value = "Go back" />
        </form>
    </body>
</html>
