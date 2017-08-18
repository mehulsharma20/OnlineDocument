package dbcon;
import java.sql.*;
public class DbConnection {
	/**
	 * This method use insert update and delete
	 * @param sql
	 * @return int
	 */
	public int DML(String sql)
	{
	int re=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
		Statement st=cn.createStatement();
		re=st.executeUpdate(sql);
	}
	catch(Exception ex){
		System.out.println("Error "+ex);
	}
	return re;
	}
	
	public ResultSet DQL(String sql)
	{
	ResultSet rs=null;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
		Statement st=cn.createStatement();
		rs=st.executeQuery(sql);
	}
	catch(Exception ex){
		System.out.println("Error "+ex);
		
	}
	return rs;
	}

}
