<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<center>
    <%
            if(request.getParameter("Submit")!=null)
            {
                String name=request.getParameter("name");
                String city=request.getParameter("city");
                String state=request.getParameter("state");
                String address=request.getParameter("address");
                
                String sql="insert into School(name,state,city,address) values('"
                        +name+"','"+state+"','"+city+"','"+address+"')";
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
    <tr><td><label class="label">School Name</label></td>
        <td>
            <input type="text" class="txt" autofocus name="name"/>
        </td></tr>
    <tr><td><label class="label">State</label></td>
        <td>
            <input type="text" class="txt" autofocus name="state"/>
        </td></tr>
    <tr><td><label class="label">City</label></td>
        <td>
            <input type="text" class="txt" autofocus name="city"/>
        </td></tr>
    <tr><td><label class="label">Address</label></td>
        <td>
            <input type="text" class="txt" autofocus name="address"/>
        </td></tr>
    <tr><td><label class="label"></label></td>
        <td>
            <input type="submit" class="txt" name="Submit" value="SAVE"/>
        </td></tr>
    
</table>
</form>
</center>

<%@include file="footer.jsp" %>