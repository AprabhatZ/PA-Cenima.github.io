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


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String uname = request.getParameter("name");
	String uemail = request.getParameter("email");
	String upwd = request.getParameter("pass");
	String umobile = request.getParameter("contact");
	String enupwd = CaesarCipher.encrypt(upwd,"prabhat");
			
	System.out.println(uname);
    System.out.println(uemail);
    
	RequestDispatcher dispatcher =null;
	Connection con = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieTicket?useSSL-false","root","Pr@bhat123");
		PreparedStatement pst =con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");
		PreparedStatement verify =con.prepareStatement("select * from users where uemail= ?");
		verify.setString(1, uemail);
		ResultSet rs = verify.executeQuery();
		if(rs.next()){
			dispatcher = request.getRequestDispatcher("register2.jsp");
			request.setAttribute("status","duplicate");
			System.out.println(uname);
		}else {

			pst.setString(1, uemail);
			pst.setString(1,uname);
			pst.setString(2,enupwd);
			pst.setString(3,uemail);
			pst.setString(4,umobile);
			
			int rowCount = pst.executeUpdate();
			if(rowCount>0){
				request.setAttribute("status","success");
				dispatcher =request.getRequestDispatcher("register2.jsp");
			}else {
				request.setAttribute("status","failed");
				
			}
			
			
		}
		
		
		dispatcher.forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}
	}

}
