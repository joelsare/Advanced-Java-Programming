<%-- 
    Document   : AnswerAQuestion
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
        <h1>Answer question here</h1>   
        
      <form action="AnswerPage.jsp" method="POST">
      <input type="text" id="answer" name="answer" />
      <input type="submit" value="Submit" />
                    
    </form>
    </body>
</html>
