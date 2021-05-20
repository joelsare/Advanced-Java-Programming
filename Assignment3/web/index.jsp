<%-- 
    Document   : index
    Created on : Sep 24, 2020, 11:15:22 AM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insert title here</title>
    </head>
    <body>
        <form method="post" action="results.jsp">
            Username: <input type="text" name="username" value="${form.username}" />   
            <br>            
            Email : <input type="text" name="email" value="${form.email}" />
            <br>
            Phone : <input type="text" name="phone" value="${form.phone}" />
            <br>
            <input type = "checkbox" name = "calculus" ${form.calculus}/> Calculus
            <input type = "checkbox" name = "pottery" ${form.pottery}/> Pottery
            <input type = "checkbox" name = "chemistry" ${form.chemistry} /> Chemistry
            <br>
            <input type = "submit" value = "Submit" />

        </form>
    </body>
</html>
