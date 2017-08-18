<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<center>
       
<h1>New User Entry Form</h1>
<form>
<table>
    <tr><td><label class="label">City</label></td>
        <td>
            <input type="text" class="txt" autofocus name="city"/>
        </td></tr>
    <td><label class="label">School</label></td>
        <td>
            <select class="txt" name="school"><option>-Select-</option></select>
        </td><br>
    <tr><td><label class="label"></label></td>
        <td>
            <input type="submit" class="txt" name="Submit" value="SEARCH"/>
        </td></tr>
    
</table>
    </form>
    <table width="100%">
        <tr><th>ROLL NO</th><th>FIRST NAME</th><th>LAST NAME</th><th>STREAM</th></tr>
     <%
            if(request.getParameter("Submit")!=null)
            {
                String city=request.getParameter("city");
                String college=request.getParameter("school");
                
                
                String sql="select rollno,firstname,lastname,stream from Student where city='"+city+"' and name='"+college+"'";
                out.println(sql);
                dbcon.DbConnection db=new dbcon.DbConnection();
                ResultSet rs;
                rs=db.DQL(sql);
                out.println(sql);
                
                while(rs.next()){
                    %>
        
        <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td></tr>
        
        <%
                }
            }
    %>    
    </table>

</center>

<%@include file="footer.jsp" %>