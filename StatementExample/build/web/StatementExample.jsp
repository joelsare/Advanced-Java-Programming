<%@ page import="java.sql.*, com.apress.jdbc.*" %>
<html>
  <head>
    <title>Statement Example</title>
  </head>
  <body>
    <h1>Statement Example</h1>
<%
    Connection conn = null;
    PreparedStatement stmt = null;
    try {
      conn = JdbcManager.getConnection();
      String sqlcheck = "select * from stock_tbl";
      String sym = request.getParameter("symbol");
      String nam = request.getParameter("name");
      String oldnam = "";
      boolean updated = false;
      stmt = conn.prepareStatement(sqlcheck,ResultSet.TYPE_SCROLL_INSENSITIVE,
                                  ResultSet.CONCUR_UPDATABLE);
      
      ResultSet rset = stmt.executeQuery();
      while (rset.next())
      {
          if(rset.getString("SYMBOL").equals(sym))
          {
              oldnam = rset.getString("NAME");
              rset.updateString("Name", nam);
              rset.updateRow();
              updated = true;
          }
      }
      rset.beforeFirst();
      if (updated) {
          //String keyId = rset.getString("SYMBOL");
          //rset.updateString(1, nam);
          //rset.updateRow();
%>

<p>OLD ROW: <%=sym%> <%=oldnam%></p>

<p>NEW ROW: <%=sym%> <%=nam%> </p>

<%
      } else {
        String sqlcmd = "insert into stock_tbl (symbol, name) values (?,?)";
        stmt = conn.prepareStatement(sqlcmd);
        stmt.setString(1, sym);
        stmt.setString(2, nam);
        int r = stmt.executeUpdate();
        if (r == 1) 
        {
%>

<p>Symbol <%=sym%>
    was inserted into database.</p>

<%      } else {
%>

<p>Symbol <%=sym%>
    was not inserted into database.</p>

<%
      }
}
    } catch (SQLException e) {
%>
    <%= e.getMessage() %>

<%
      e.printStackTrace();
    } finally {
      JdbcManager.close(stmt);
      JdbcManager.close(conn);
    }
%>
  </body>
</html>