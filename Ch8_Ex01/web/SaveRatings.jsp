<%@ page import="java.sql.*, com.apress.jdbc.*" %>
<html>
    <head>
        <title>Easy Street - Save Ratings</title>
    </head>
    <body>
        <h1>Save Ratings</h1>
        <%
                    Connection conn = null;
                    PreparedStatement stmt = null;
                    try {
                        conn = JdbcManager.getConnection();
                        String sqlcmd = "insert into stock (tickerSymbol, analyst, rating) "
                                + "values (?,?,?)";
                        stmt = conn.prepareStatement(sqlcmd);
                        String analystName = request.getParameter("AnalystName");
                        stmt.setString(2, analystName);
                        String[] stockNames = request.getParameterValues("stockNames");

                        for (int i = 0; i < stockNames.length; i++) {
                            stmt.setString(1, stockNames[i]);
                            String rating = request.getParameter(stockNames[i]);
                            if (rating.equals("No Rating")) {
                                stmt.setNull(3, java.sql.Types.VARCHAR);
                            } else {
                                stmt.setString(3, request.getParameter(stockNames[i]));
                            }
                            stmt.addBatch();
                        }
                        int results[] = stmt.executeBatch();
                        for (int i = 0; i < results.length; i++) {
                            if (results[i] == 1) {
        %>
        <p>Rating of &quot;<%=request.getParameter(stockNames[i])%>&quot;
            for <%= stockNames[i]%> was inserted successfully</p>
            <%
                    } else {
            %>
        <p>Rating for <%= stockNames[i]%> was not inserted successfully</p>
        <%
                    }
                }
            } catch (SQLException e) {
        %>
        <%= e.getMessage()%>
        <%
                        e.printStackTrace();
                    } finally {
                        JdbcManager.close(stmt);
                        JdbcManager.close(conn);
                    }
        %>
    </body>
</html>