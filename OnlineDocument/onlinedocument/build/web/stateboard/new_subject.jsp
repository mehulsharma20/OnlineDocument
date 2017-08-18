<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<center>
    <%
            if(request.getParameter("Submit")!=null)
            {
                String name=request.getParameter("name");
                String marks=request.getParameter("marks");
                int mm=Integer.parseInt(marks);
                
                String sql="insert into Subject(name,mm) values('"
                        +name+"','"+mm+"')";
                out.println(sql);
                dbcon.DbConnection db=new dbcon.DbConnection();
                int re;
                re=db.DML(sql);
                if(re>0){
                    
                }
            }
    %>        
<h1>New User Entry Form</h1>
<form>
<table>
    <tr><td><label class="label">Subject Name</label></td>
        <td>
            <input type="text" class="txt" autofocus name="name"/>
        </td></tr>
    <tr><td><label class="label">Max. Marks</label></td>
        <td>
            <input type="text" class="txt" autofocus name="marks"/>
        </td></tr>
    <tr><td><label class="label"></label></td>
        <td>
            <input type="submit" class="txt" name="Submit" value="SAVE"/>
        </td></tr>
    
</table>
</form>
</center>

<%@include file="footer.jsp" %>