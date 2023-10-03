package com.MovieTicket.Movies;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

public class GetMovieData {
	
	
	    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/movieTicket?useSSL-false";
	    private static final String DB_USER = "root";
	    private static final String DB_PASSWORD = "Pr@bhat123";
	    
	   

	    public static Connection getConnection() throws SQLException {
	        return DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
	    }

	    public static List<MovieData> getAllMovieData() {
	        List<MovieData> movieList = new ArrayList<>();

	        try (Connection connection = getConnection();
	             Statement statement = connection.createStatement();
	             ResultSet resultSet = statement.executeQuery("SELECT * FROM movies")) {

	            while (resultSet.next()) {
	                MovieData movieData = new MovieData();
	                movieData.setTitle(resultSet.getString("title"));
	                movieData.setGrade(resultSet.getString("grade"));
	                movieData.setImage(resultSet.getString("image"));
	                movieData.setDetail(resultSet.getString("detail"));
	                movieData.setAd(resultSet.getString("ad"));
	                movieList.add(movieData);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return movieList;
	    }


}
