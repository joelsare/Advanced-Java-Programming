<%-- 
    Document   : Ask_a_question
    Created on : Sep 10, 2020, 11:09:09 AM
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
        <h1>Ask question here</h1>   
        
      <form action="QuestionPage.jsp" method="POST">
      <input type="text" id="firstname" name="firstname" />
      <input type="submit" value="Submit" />
      
      
      <br><a href="welcome.jsp"> go back home </a>
              
    </form>
    </body>
</html>
