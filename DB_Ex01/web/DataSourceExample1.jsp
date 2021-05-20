<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*" %>
<html>
    <head>
        <title>DataSource Example</title>
    </head>
    <body>
        <h1>DataSource Example</h1>
        <%

                    InitialContext context = new InitialContext();
                    DataSource dataSource =
                            (DataSource) context.lookup("java:comp/env/jdbc/DataSourceExample");
                          //  (DataSource) context.lookup("jdbc/DataSourceExample");
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rset = null;

                    try {
                        conn = dataSource.getConnection();
                        // After getting the Connection

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
                <td><%= rset.getString("CUSTOMER_ID")%></td>
                <td><%= rset.getString("NAME")%></td>
                <td><%= rset.getString("EMAIL")%></td>
            </tr>
            <%
                                        } while (rset.next());
            %>
        </table>
        <%
                                } else {
        %>
        No results from query
        <%          }
                            } catch (SQLException e) {
                                while (e != null) {

        %>
        The error code is : <%=  e.getErrorCode()%> ;  <%= e.getMessage()%>
        <%
                            e = e.getNextException();
                        }                 
                    } finally {
                        if (rset != null) {
                            try {
                                rset.close();
                            } catch (SQLException e2) {
                                // Usually this is ignored
                            }
                        }
                        if (stmt != null) {
                            try {
                                stmt.close();
                            } catch (SQLException e2) {
                                // Usually this is ignored
                            }
                        }
                        if (conn != null) {
                            try {
                                conn.close();
                            } catch (SQLException e2) {
                                // Usually this is ignored
                            }
                        }
                        if (context != null) {

                            try {
                                context.close();
                            } catch (NamingException e2) {
                                // Usually this is ignored
                            }
                        }
                    }
        %>
    </body>
</html>
