package com.MovieTicket.Movies;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/MovieUpload")
public class MovieUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 	String title = request.getParameter("title");
		 	String grade = request.getParameter("grade");	        
		 	String ad = request.getParameter("ad");
	        String detail = request.getParameter("detail");
	        Part filePart = request.getPart("image");
	        System.out.println(title);
	        System.out.println(filePart);
	        System.out.println(grade);
	       
             

	RequestDispatcher dispatcher =null;
	Connection con = null;
	if (filePart != null) {
		
	}

		String imageFileName = filePart.getSubmittedFileName();
		String uploadPath = "C:/Users/Unique Shrestha/eclipse-workspace2/MovieTicket/src/main/webapp/images/"+imageFileName;
		System.out.println(imageFileName);
        System.out.println(filePart.getSize());
        System.out.println(filePart.getContentType());
         
         try {
        	 FileOutputStream fos = new FileOutputStream(uploadPath);
        	 InputStream inputStream = filePart.getInputStream();
        	 byte[] data = new byte[inputStream.available()];
        	 inputStream.read(data);
        	 fos.write(data);
        	 fos.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
         
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieTicket?useSSL-false","root","Pr@bhat123");
            String sql = "INSERT INTO movies (title, image, grade, ad, detail) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, title);
            pst.setString(2, imageFileName);
            pst.setString(3, grade);
            pst.setString(4, ad);
            pst.setString(5, detail);
            int rowCount = pst.executeUpdate();
            
		if(rowCount>0){
			request.setAttribute("status","success");
			dispatcher =request.getRequestDispatcher("index.jsp");
		}else{
			request.setAttribute("status","failed");
			
		}
		
		dispatcher.forward(request, response);
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}

}
