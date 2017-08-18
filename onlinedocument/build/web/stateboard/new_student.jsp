<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<center>
    <%
            if(request.getParameter("Submit")!=null)
            {
                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String fathername=request.getParameter("fathername");
                String mname=request.getParameter("mname");
                String dob=request.getParameter("dob");
                String stream=request.getParameter("stream");
                String city=request.getParameter("city");
                String school=request.getParameter("school");
                
                String sql="insert into Student(firstname,lastname,father,mother,dob,stream,city,college) values('"
                        +fname+"','"+lname+"','"+fathername+"','"+mname+"','"+dob+"','"+stream+"','"+city+"','"+school+"')";
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
    <tr><td><label class="label">First Name</label></td>
        <td>
            <input type="text" class="txt" autofocus name="fname"/>
        </td></tr>
    <tr><td><label class="label">Last Name</label></td>
        <td>
            <input type="text" class="txt" autofocus name="lname"/>
        </td></tr>
    <tr><td><label class="label">Father Name</label></td>
        <td>
            <input type="text" class="txt" autofocus name="fathername"/>
        </td></tr>
    <tr><td><label class="label">Mother Name</label></td>
        <td>
            <input type="text" class="txt" autofocus name="mname"/>
        </td></tr>
    <tr><td><label class="label">Date of Birth</label></td>
        <td>
            <input type="date" class="txt" autofocus name="dob"/>
        </td></tr>
    <td><label class="label">Stream</label></td>
        <td>
            <select class="txt" name="stream"><option>-Select-</option><option>Science</option><option>Commerce</option><option>Humanities</option></select>
        </td><br>
        
    <tr><td><label class="label">City</label></td>
        <td>
            <input type="text" class="txt"  autofocus name="city"/>
        </td></tr>
    <td><label class="label">School</label></td>
        <td>
            <select class="txt" name="school"><option>-Select-</option></select>
        </td><br>
    <tr><td><label class="label"></label></td>
        <td>
            <input type="submit" class="txt" name="Submit" value="SAVE"/>
        </td></tr>
        
        
    
    
</table>
</form>
</center>

<%@include file="footer.jsp" %>