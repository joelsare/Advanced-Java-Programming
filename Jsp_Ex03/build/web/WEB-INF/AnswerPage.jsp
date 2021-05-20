<%-- 
    Document   : AnswerPage
    Created on : Sep 10, 2020, 12:08:28 PM
    Author     : joel
--%>

<%@page import="java.util.ArrayList, com.apres.faq.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="session" class="com.apress.faq.User">
      <jsp:setProperty name="user" property="*" />
    </jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Answer list</h1>
        <%
            user.addAnswer(request.getParameter("answer"));
            ArrayList arr = user.getAnsList();
    String firstname = request.getParameter("answer");
    for (int i = 0; i < arr.size(); i++)
    {
%>
    <br><%= arr.get(i)%>

<%
  }
%>
    <br>
    <br><a href="Ask_a_question.jsp"> ask another question </a>

    </body>
</html>
