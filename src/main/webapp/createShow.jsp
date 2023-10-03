<%if(session.getAttribute("admin")==null){
	response.sendRedirect("login2.jsp");
} %>


<%@ page import="java.util.List" %>
<%@page import="com.MovieTicket.Movies.GetMovieData"%>
<%@page import="com.MovieTicket.Movies.MovieData"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
	 <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap"
      rel="stylesheet" />
	<script src="https://cdn.tailwindcss.com"></script>

</head>
<body class="dark:bg-gray-900">

	<%@ include file="navbar.jsp" %>
<!-- The rest of your main JSP page content -->

				<form method="post"  action="MovieUpload"  enctype="multipart/form-data">
				    <div class="w-full p-4 bg-white rounded-lg shadow dark:border dark:bg-gray-800 dark:border-gray-700 grid gap-6 mb-6 m-4 md:grid-cols-2 ">
				      
				        <div>
				
				        	<label for="grade" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Choose a movie</label>
							<select id="grade" name="grade" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
							<% List<MovieData> movieList = GetMovieData .getAllMovieData();
		           		for (MovieData movie : movieList) { %>
		           				<option class="p-4 m-2" selected value=<%= movie.getTitle()%> ><%= movie.getTitle() %></option>
		           			
		            		        <% } %>
						  	</select>
						
				        </div>
				         
					    <div class="relative" data-te-timepicker-init >
					    <label for="time" class="block mb-2  text-sm font-medium text-gray-900 dark:text-white">Choose time</label>
							  <input
							    type="text"
							    class="bg-gray-50  border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
							    id="form1" />
							 
							</div>
									
					    
					    <div>
					    	<input type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" value="Upload">
					    
					    </div>
					   				 
				    </div> 
				    
					
				    
				</form>

 <script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>		
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>

</body>
</html>