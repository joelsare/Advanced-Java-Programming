<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : UpdateInfo
    Created on : Dec 4, 2020, 9:27:00 AM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Updated!</title>
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <sql:update var="result" dataSource="jdbc/DataSourceExample">
            UPDATE users
            SET password = '${param.newpassword}'
            WHERE username = '${user.username}'
        </sql:update>
        <p>Updated password, click <a href="Home.jsp">here</a> to go back home.</p>
    </body>
</html>
