<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : StatementExample
    Created on : Oct 23, 2020, 12:45:12 PM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Statement Example Using SQL Tags</h1>
    <sql:update var="var" dataSource="jdbc/DataSourceExample">
        INSERT INTO stock_tbl (symbol, name)
        VALUES ('${param.symbol}', '${param.name}')
    </sql:update>
        Data successfully inserted into database
    </body>
</html>
