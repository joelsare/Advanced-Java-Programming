<%@ page import="java.sql.*" %>
<html>
  <head>
    <title>DB Example</title>
  </head>
  <body>
    <h1>DB Example</h1>
<%
    String connectionURL = "jdbc:derby://localhost:1527/sample;user=app;password=app";
// Change the connection string according to your db, ip, username and password

    Connection conn = null;
    Statement stmt = null;
    ResultSet rset = null;

      try {
            // Load the Driver class.
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        // If you are using any other database then load the right driver here.

        //Create the connection using the static getConnection method
        conn = DriverManager.getConnection (connectionURL);

        stmt = conn.createStatement();
        rset = stmt.executeQuery("select * from CUSTOMER");
        if (rset.next()) {
%>
      <table width="100%" border="1">
        <tr align="left">
          <th>Customer Num</th><th>Name</th><th>email</th>
      </tr>
<%
        do {
%>
      <tr>
        <td><%= rset.getString("CUSTOMER_ID") %></td>
        <td><%= rset.getString("NAME") %></td>
        <td><%= rset.getString("EMAIL") %></td>
      </tr>
<%
        } while (rset.next());
%>
    </table>
<%
      } else {
%>
    No results from query
<%
      }
    } catch (SQLException e) {
%>
    <%= e.getMessage() %>
<%
      e.printStackTrace();
    } finally {
      if (rset != null) { rset.close(); }
      if (stmt != null) { stmt.close(); }
      if (conn != null) { conn.close(); }
//      if (context != null) { context.close(); }
    }
%>
  </body>
</html>
