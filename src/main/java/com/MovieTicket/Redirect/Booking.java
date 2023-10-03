package com.MovieTicket.Redirect;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Booking
 */
@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean isLoggedIn = (request.getSession().getAttribute("name") != null);
		 if (isLoggedIn) {
	            // If the user is logged in, redirect to the movie booking page
	            response.sendRedirect("try.jsp");
	        } else {
	            // If the user is not logged in, redirect to the login page
	            response.sendRedirect("login2.jsp");
	        }
	}
}
