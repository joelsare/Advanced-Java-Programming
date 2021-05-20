<%-- 
    Document   : Changepassword
    Created on : Dec 4, 2020, 9:23:21 AM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="bar.css" type="text/css" rel="stylesheet" />

    </head>
    <body>
        <form action ="UpdateInfo.jsp" method="post">
            <input type="text" name ="newpassword" placeholder="new password"><br>
            <input type="submit" value="Update password">
        </form>
    </body>
</html>
