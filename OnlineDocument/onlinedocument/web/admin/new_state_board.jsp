
<%@page import="java.util.Date"%>
<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<center>
    <%
        if (request.getParameter("submit") != null) {
            String boardname = request.getParameter("boardname");
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");
            dbcon.DbConnection ob = new dbcon.DbConnection();
            Date dt=new Date();
            String d=(dt.getYear()+1900)+"-"+(dt.getMonth()+1)+"-"+dt.getDate();
            String sql = "insert into stateboard (boardname,userid,password,createdate) values('"
                    + boardname + "','" + userid + "','" + password + "','"+d+"')";
            int re = ob.DML(sql);
            if (re > 0) {
    %>
    <div style="width: 100%; height: 40px; background: #8bc34a; color: white; font-size: 20px">
        Save Success
    </div>
    <%
            }
        }
    %>




    <h1>New State Board Entry Form</h1>
    <form method="post">
        <table>
            <tr><td><label class="label">Board Name</label></td>
                <td>
                    <input type="text" class="txt" name="boardname"/>
                </td>

            </tr>
            <tr><td><label class="label">User Id</label></td>
                <td>
                    <input type="text" class="txt" name="userid"/>
                </td>

            </tr>
            <tr><td><label class="label">Password</label></td>
                <td>
                    <input type="password" class="txt" name="password"/>
                </td>

            </tr>
            <tr><td><label class="label">Confirm Password</label></td>
                <td>
                    <input type="password" class="txt" name="cpassword"/>
                </td>

            </tr>
            <tr><td><label class="label"></label></td>
                <td>
                    <input type="submit" class="btn" name="submit" value=" Save "/>
                </td>

            </tr>
        </table>
    </form>
</center>

<%@include file="footer.jsp" %>