package com.MovieTicket.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String enupwd = CaesarCipher.encrypt(upwd,"prabhat");
		HttpSession session = request.getSession();
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			if("admin@gmail.com".equals(uemail)&& "admin".equals(upwd)) 
						{
							session.setAttribute("name","admin");
							session.setAttribute("admin","admin");
							response.sendRedirect("index.jsp");	
//							dispatcher = request.getRequestDispatcher("index.jsp");
//							dispatcher.forward(request, response);
						}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieTicket?useSSL-false","root","Pr@bhat123");
				PreparedStatement pst =con.prepareStatement("select * from users where uemail= ? and upwd = ?");
				pst.setString(1, uemail);
				pst.setString(2, enupwd);
				ResultSet rs = pst.executeQuery();
			
				if(rs.next()){
					session.setAttribute("name",rs.getString("uname"));
					response.sendRedirect("index.jsp");					
				}

				else{
					request.setAttribute("status","failed");
					response.sendRedirect("login2.jsp");
				}
				
					
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	  
	
	}