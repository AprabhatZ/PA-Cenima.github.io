<%if(session.getAttribute("admin")==null){
	response.sendRedirect("login2.jsp");
} %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>PA Cinema</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
<script src="https://cdn.tailwindcss.com"></script>
<style>
body{
	background-color:#111827;
	}
</style>

</head>
<body >


		<%@ include file="navbar.jsp" %>
		
				<form method="post"  action="MovieUpload"  enctype="multipart/form-data">
				    <div class="w-full p-4 bg-white rounded-lg shadow dark:border dark:bg-gray-800 dark:border-gray-700 grid gap-6 mb-6 m-4 md:grid-cols-2 ">
				        <div>
				        
				            <label for="title" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Movie Title</label>
				            <input name="title" type="text" id="title"  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Pirets Of Caribean" required>
				        </div>
				        <div>
				
				        	<label for="grade" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Select movie grade</label>
							<select id="grade" name="grade" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
						  		<option selected value="P">A</option>
						  		<option value="PG">PG</option>
						  	</select>
						
				        </div>
				
				        <div>
				            <label for="ad" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Youtube Ad URL</label>
				            <input type="url" id="ad" name="ad" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Movie youtube Ad link" required>
				        </div>
					    <div>
					    	<label for="detail" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Movie details</label>
							<textarea name="detail" id="message" rows="4" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Write details about movie..."></textarea>
					    </div>
					    
						<div>
							<label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" for="file_input">Upload Image</label>
							<input name="image" class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400" aria-describedby="file_input_help" id="file_input" type="file">
							<p class="mt-1 text-sm text-gray-500 dark:text-gray-300" id="file_input_help">SVG, PNG, JPG or GIF (MAX. 800x400px).</p>
				
					    </div>
					    <div>
					    	<input type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" value="Upload">
					    
					    </div>
						
					    
				    </div> 
				    
					
				    
				</form>


<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>