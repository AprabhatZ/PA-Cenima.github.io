package com.MovieTicket.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class GetUserData {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/movieTicket?useSSL-false";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Pr@bhat123";
    
   

    public static Connection getConnection() throws SQLException {
    	
        return DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
    }

    public static List<UserData> getAlluserData() {
        List<UserData> userList = new ArrayList<>();
        
       
        try ( 
        	Connection connection = getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM users")) {
            while (resultSet.next()) {
                UserData userData = new UserData();
                userData.setuname(resultSet.getString("uname"));
                userData.setuemail(resultSet.getString("uemail"));
                userData.setcontact(resultSet.getString("umobile"));
                userData.setupwd(resultSet.getString("upwd"));
                userList.add(userData);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }


}
