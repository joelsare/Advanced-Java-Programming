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
        <link href="bar.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <h1>Registered User!</h1>
        <sql:query var="searchresult" scope="request" dataSource="jdbc/DataSourceExample">
            SELECT * FROM users where username like '${param.username}'
            and password like '${param.password}'
        </sql:query>

        <c:choose>
            <c:when test="${searchresult.rowCount >= 1}" >
                <title>Welcome Back!</title>
                <jsp:useBean id="user" class="com.apress.User" scope="session"/>
                <jsp:setProperty name="user" property="username" value="${param.username}"/>
                <jsp:setProperty name="user" property="password" value="${param.password}"/>

                Welcome back! Click <a href="Home.jsp">here</a> to enter home.
            </c:when>
            <c:when test="${searchresult.rowCount == 0}" >
                <title>Error!</title>
                Data not found.
                <form>
                    <input type="button" value="Try again" onclick="history.back()">
                </form>
            </c:when>
        </c:choose>
    </body>
</html>
