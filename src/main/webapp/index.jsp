<!-- all the attributes, session checks are stored done in navbar.jsp -->
<%@ page import="java.util.List" %>
<%@page import="com.MovieTicket.Movies.GetMovieData"%>
<%@page import="com.MovieTicket.Movies.MovieData"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>movie</title>
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
	<script src="https://cdn.tailwindcss.com"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
	
	
	</head>
	
	
<body class="dark:bg-gray-900">
	<%@ include file="navbar.jsp" %>
			<div id="controls-carousel" class="fixed  top-0 relative w-full m-0" data-carousel="slide">
				    <!-- Carousel wrapper -->
				    <div class="absolute t-0 relative h-56 overflow-hidden rounded-lg md:h-96">
				    	  <!-- Item  -->
				        <div class="hidden duration-700 ease-in-out" data-carousel-item>
				            <img src="images/banner2.png" class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
				        </div>
				         <!-- Item 1 -->
				        <div class="hidden duration-700 ease-in-out" data-carousel-item>
				            <img src="images/banner1.jpg" class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
				        </div>
				        <!-- Item 2 -->
				        <div class="hidden duration-700 ease-in-out" data-carousel-item="active">
				            <img src="images/bannerchinema.jpg" class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
				        </div>
				        <!-- Item 3 -->
				        <div class="hidden duration-700 ease-in-out" data-carousel-item>
				            <img src="images/banner4.jpg" class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
				        </div>
				        <!-- Item 4 -->
				        <div class="hidden duration-700 ease-in-out" data-carousel-item>
				            <img src="images/banner5.jpg" class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
				        </div>
				    </div>
				    <!-- Slider controls -->
				    <button type="button" class="absolute top-0 left-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-prev>
				        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
				            <svg class="w-4 h-4 text-white dark:text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
				                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
				            </svg>
				            <span class="sr-only">Previous</span>
				        </span>
				    </button>
				    <button type="button" class="absolute top-0 right-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-next>
				        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
				            <svg class="w-4 h-4 text-white dark:text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
				                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
				            </svg>
				            <span class="sr-only">Next</span>
				        </span>
				    </button>
				</div>
	
	<a href="Booking" type="submit" class="m-4 z-20 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Book Ticket</a>
	<a  <%=admin %> href="movieUpload.jsp" type="submit" class="m-4 z-20 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Upload Movie</a>
	<a  <%=admin %> href="createShow.jsp" type="submit" class="m-4 z-20 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Create Show</a>
	<a  <%=admin %> href="userTable.jsp" type="submit" class="m-4 z-20 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Users</a>
	
	
	<h3 class="text-3xl m-4 my-8 font-bold dark:text-white">Now Showing</h3>
    <div class="w-full m-4 grid sm:grid-cols-2 md:grid-cols-3 gap-4 lg:grid-cols-4 xl:grid-cols-6 2xl:grid-cols-7 grid-cols-2">
	 <% List<MovieData> movieList = GetMovieData .getAllMovieData();
		           for (MovieData movie : movieList) { %>
		            <div class="relative md:w-66 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
					    <a href="#">
					        <img class="w-full h-80 rounded-t-lg object-cover " src="./images/<%=movie.getImage()%>" alt="" />
					    </a>
					     <div class="p-3">
				        <a href="#">
				            <h1 class="mb-2  text-xl font-medium tracking-tight text-gray-900 dark:text-white" > <%= movie.getTitle() %> </h1>
				        </a>
				        <span class=" absolute top-6 right-2 bg-red-100 text-red-800 text-lg font-medium mr-2 px-2.5 py-0.5 rounded-full dark:bg-red-800 dark:text-white"><%= movie.getGrade()%></span>
						<a href="Booking" type="button" class="absolute bottom-24 text-white hover:text-white border border-yellow-400 hover:bg-yellow-500 focus:ring-4 focus:outline-none focus:ring-yellow-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2 dark:border-yellow-300 dark:bg-black dark:bg-opacity-50 dark:text-white dark:hover:text-white dark:hover:bg-yellow-400">Buy Tickets</a>
						
				      </div>
				  </div>
		        <% } %>
		</div>
	<h3 class="text-3xl m-4 my-8 font-bold dark:text-white">Coming Soon</h3>
    
	<input type="hidden" id="admin" value=<%=flag%> >
	
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>	      
	<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
	<script>
		var admin = document.getElementById("admin").value;
		localStorage.setItem("done", "notdone");
		var x = localStorage.getItem("done");
		if(admin == "admin" && x=="notdone"){
			Toastify({
				  text: "Welcome admin",
				  duration: 3000,
				  //destination: "https://github.com/apvarun/toastify-js",
				  newWindow:false,
				  close: true,
				  gravity: "bottom", // `top` or `bottom`
				  position: "right", // `left`, `center` or `right`
				  stopOnFocus: true, // Prevents dismissing of toast on hover
				  style: {
				    background: "green",
					text:"gray",
				  },
				  onClick: function(){} // Callback after click
				}).showToast();
			localStorage.setItem("done","done");
		}
		else if(admin == "user"){
			Toastify({
				  text: "Welcome User",
				  duration: 3000,
				  //destination: "https://github.com/apvarun/toastify-js",
				  newWindow:false,
				  close: true,
				  gravity: "bottom", // `top` or `bottom`
				  position: "right", // `left`, `center` or `right`
				  stopOnFocus: true, // Prevents dismissing of toast on hover
				  style: {
				    background: "green",
				  },
				  onClick: function(){} // Callback after click
				}).showToast();
			
		}
	</script> 
</body>
</html>



			
			
				
	
		
		
    
    

