<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<center>
    <%
            if(request.getParameter("Submit")!=null)
            {
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                String usertype=request.getParameter("usertype");
                String name=request.getParameter("name");
                String address=request.getParameter("address");
                String city=request.getParameter("city");
                String state=request.getParameter("state");
                String country=request.getParameter("country");
                String email=request.getParameter("email");
                String sql="insert into system_user(userid,password,usertype,name,address,city,state,country,email) values('"+username+"','"+password+"','"+usertype+"','"+name+"','"+address+"','"+city+"','"+state+"','"+country+"','"+email+"')";
                //out.println(sql);
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
    <tr><td><label class="label">Username</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="username"/>
        </td></tr>
    <tr><td><label class="label">Password</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="password"/>
        </td></tr>
    <td><label class="label">Board Type</label></td>
        <td>
            <select class="txt" name="usertype"><option>Select Board</option><option>University</option><option>CBSE</option><option>ICSE</option><option>State Board</option></select>
        </td><br>
    <tr><td><label class="label">Name</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="name"/>
        </td></tr>
    <tr><td><label class="label">Address</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="address"/>
        </td></tr>
    <tr><td><label class="label">City</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="city"/>
        </td></tr>
    <tr><td><label class="label">State</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="State"/>
        </td></tr>
    <tr><td><label class="label">Country</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="country"/>
        </td></tr>
    <tr><td><label class="label">E-mail</label></td>
        <td>
            <input type="text" class="txt" placeholder="Username" autofocus name="email"/>
        </td></tr>
    <tr><td><label class="label"></label></td>
        <td>
            <input type="submit" class="txt" name="Submit" value="SAVE"/>
        </td></tr>
        
        
    
    
</table>
</form>
</center>

<%@include file="footer.jsp" %>