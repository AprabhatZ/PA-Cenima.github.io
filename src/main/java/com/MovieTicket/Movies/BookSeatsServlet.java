package com.MovieTicket.Movies;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookSeatsServlet")
public class BookSeatsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] selectedSeats = request.getParameter("selectedSeats").split(",");
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	String booked ="booked";
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieTicket","root","Pr@bhat123");
            for (String seatName : selectedSeats) {
                String updateQuery = "INSERT INTO seats (seat_name,status, price) VALUES(?,?,400.00)";
                PreparedStatement preparedStatement = conn.prepareStatement(updateQuery);
                preparedStatement.setString(1,seatName);
                preparedStatement.setString(2,booked);
                preparedStatement.executeUpdate();
            }
            conn.close();
            String dataToPass = request.getParameter("name");

            // Set the data as a request attribute
            request.setAttribute("name", dataToPass);
            request.getRequestDispatcher("try.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Handle database errors
        }
    }
}
