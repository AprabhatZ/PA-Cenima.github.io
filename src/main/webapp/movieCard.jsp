<%@ page import="java.util.List" %>
<%@page import="com.MovieTicket.Movies.GetMovieData"%>
<%@page import="com.MovieTicket.Movies.MovieData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />

</head>
<body>
 <div class="card-container">
        <% List<MovieData> movieList =GetMovieData .getAllMovieData();
           for (MovieData movie : movieList) { %>
            <div class="card">
                <h2><%= movie.getTitle() %></h2>
                <p><%= movie.getAd() %></p>
                <p><%= movie.getGrade() %></p>
                <p><%= movie.getImage() %></p>
                <p><%= movie.getDetail() %></p>

                <img alt="image" src="images/<%=movie.getImage()%>" width="200px" height ="200px" >
                <iframe width="560" height="315" src="https://www.youtube.com/embed/COv52Qyctws?si=aOJmrZCG9I-mk3Py" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
        <% } %>
    </div> 
   
	<div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
	    <a href="#">
	        <img class="rounded-t-lg h-auto max-w-full" src="images/vairab.jpg" alt="" />
	    </a>
	    <div class="p-5">
	        <a href="#">
	            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Noteworthy technology acquisitions 2021</h5>
	        </a>
	        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
	        <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
	            Read more
	             <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
	                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
	            </svg>
	        </a>
	    </div>
	</div>
   
    

    
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>