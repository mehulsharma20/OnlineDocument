/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

import java.sql.*;

public class DBConnection {
    private final String driver="com.mysql.jdbc.Driver";
    private final String url="jdbc:mysql://localhost:3306/onlinedocument";
    private final String userid="root";
    private final String password="";
    
    /**
     * This method use to inset, update and delete
     * @param sql as a query
     * @return  int value number of row update
     */
    public int DML(String sql)
    {
        int re=0;
        try {
            Class.forName(driver);
            Connection cn=DriverManager.getConnection(url,userid,password);
            Statement st=cn.createStatement();
            re=st.executeUpdate(sql);
        } catch (Exception e) {
            
        }
        return re;
    }
    public ResultSet DQL(String sql)
    {
        ResultSet rs=null;
        try {
            Class.forName(driver);
            Connection cn=DriverManager.getConnection(url,userid,password);
            Statement st=cn.createStatement();
            rs=st.executeQuery(sql);
        } catch (Exception e) {
            
        }
        return rs;
    }
}
