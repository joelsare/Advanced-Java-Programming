<%@ page isErrorPage="true" import="java.io.PrintWriter" %>

<html>
  <head>
    <title>Error</title>
  </head>
  <body>

    <h1>Error</h1>
    There was an error somewhere.
    <p>Here is the stack trace
    <p><% exception.printStackTrace(new PrintWriter(out)); %>
<%@ include file="/WEB-INF/footer.jspf" %>
  </body>
</html>