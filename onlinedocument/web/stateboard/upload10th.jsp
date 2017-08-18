<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<center>
       
<h1>New User Entry Form</h1>
<form>
<table>
    <tr><th>Subject</th><th>Marks</th></tr>
    <tr>
        <td>
            <select class="txt" name="school"><option>-Select-</option></select>
        </td>
        <td>
            <input type="text" class="txt" autofocus name="city"/>
        </td></tr>
    <td>
        <tr>
        <td>
            <select class="txt" name="school"><option>-Select-</option></select>
        </td>
        <td>
            <input type="text" class="txt" autofocus name="city"/>
        </td></tr>
    <td>
        <tr>
        <td>
            <select class="txt" name="school"><option>-Select-</option></select>
        </td>
        <td>
            <input type="text" class="txt" autofocus name="city"/>
        </td></tr>
    <td>
        <tr>
        <td>
            <select class="txt" name="school"><option>-Select-</option></select>
        </td>
        <td>
            <input type="text" class="txt" autofocus name="city"/>
        </td></tr>
    
    
</table>
    <input type="submit" class="txt" name="Submit" value="SAVE"/>
</form>
</center>

<%@include file="footer.jsp" %>