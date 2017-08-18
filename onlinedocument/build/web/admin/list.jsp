<%-- 
    Document   : list
    Created on : Jun 28, 2017, 5:35:13 AM
    Author     : Subham
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <%
            String sql="Select * from system_user";
            dbcon.DbConnection db=new dbcon.DbConnection();
            ResultSet rs;
            rs=db.DQL(sql);
            while(rs.next()){
                out.println(rs.getString(1));
                out.println(rs.getString(2));
                out.println(rs.getString(3));
                out.println(rs.getString(4));
                out.println(rs.getString(5));
                out.println(rs.getString(6));
                out.println(rs.getString(7));
                out.println(rs.getString(8));
                out.println(rs.getString(9));
                %>
                <br>
        <%
            }
        %>
    </center>
    </body>
</html>
