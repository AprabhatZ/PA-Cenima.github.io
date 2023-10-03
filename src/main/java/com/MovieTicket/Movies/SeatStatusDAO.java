package com.MovieTicket.Movies;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SeatStatusDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/movieTicket";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Pr@bhat123";

    public String getSeatStatus(String seatName) {
        String status = "available"; // Default to 'available' if not found
        
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT status FROM seats WHERE seat_name=?")) {

            preparedStatement.setString(1,seatName);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                status = resultSet.getString("status");
                System.out.println(status);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
}

