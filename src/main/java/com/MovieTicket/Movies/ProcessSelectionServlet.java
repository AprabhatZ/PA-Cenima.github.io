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

@WebServlet("/processSelection")
public class ProcessSelectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the selected seat from the form
        String selectedSeat = request.getParameter("seat");

        // Update the seat status to "booked" in the database
        SeatStatusDAO seatStatusDAO = new SeatStatusDAO();
//        seatStatusDAO.updateSeatStatus(selectedSeat, "booked");

        // Redirect back to the seat selection page or any other desired page
        response.sendRedirect("seatSelection.jsp");
    }
}

