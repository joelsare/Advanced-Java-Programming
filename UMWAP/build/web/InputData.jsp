<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : InputData
    Created on : Dec 1, 2020, 12:41:00 PM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <h1>Inputting Data!</h1>
        <sql:query var="search" dataSource="jdbc/DataSourceExample">
            SELECT * FROM users where username like '${param.username}'
        </sql:query>

        <c:choose>
            <c:when test="${search.rowCount > 0}">
                <title>Invalid Username</title>
                That username is already taken. Please enter a new one <a href="NewUser.jsp">here</a>.
            </c:when>
            <c:otherwise>
                <sql:update var="var" dataSource="jdbc/DataSourceExample">
                    INSERT INTO users (username, password)
                    VALUES ('${param.username}', '${param.password}')
                </sql:update>
                    <title>Success!</title>
                Account created! Please log in <a href="RegisteredUser.jsp">here</a>.
            </c:otherwise>
        </c:choose>
    </body>
</html>
