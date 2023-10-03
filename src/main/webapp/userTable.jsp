<%if(session.getAttribute("admin")==null){
	response.sendRedirect("login2.jsp");
} %>


<%@ page import="java.util.List" %>
<%@page import="com.MovieTicket.register.UserData"%>
<%@page import="com.MovieTicket.register.GetUserData"%>

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
			
			
				<div class="relative overflow-x-auto shadow-md sm:rounded-lg">
				    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
				        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
				            <tr >
				                <th scope="col" class="px-6 py-3">
				                    Username
				                </th>
				                <th scope="col" class="px-6 py-3">
				                    Email
				                </th>
				                <th scope="col" class="px-6 py-3">
				                    Password
				                </th>
				                <th scope="col" class="px-6 py-3">
				                    Contact
				                </th>
				                <th scope="col" class="px-6 py-3">
				                    DOB
				                </th>
				                <th scope="col" class="px-6 py-3">
				                    Action
				                </th>
				            </tr>
				        </thead>
				        <tbody>
				        <% List<UserData> userList = GetUserData.getAlluserData();
		           		for (UserData user : userList){%>
		           
		           		 <tr class="bg-white even:bg-gray-800 border-b dark:bg-gray-900 dark:border-gray-700">
				                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
				                    <%=user.getuname() %>
				                </th>
				                <td class="px-6 py-4">
				                   <%=user.getuemail() %>
				                </td>
				                <td class="px-6 py-4">
				                    <%=user.getupwd() %>
				                </td>
				                <td class="px-6 py-4">
				                   <%=user.getcontact()%>
				                </td>
				                <td class="px-6 py-4">
				                   <%=user.getDOB()%>
				                </td>
				                <td class="px-6 py-4">
				                    <a href="#" class="font-medium text-red-600 dark:text-red-500 hover:underline">Delete</a>
				                </td>
				            </tr>
		            
		        <% } %>
				           
				       </tbody>
				    </table>
				</div>
			
			
			
			
			
	
		 <script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
		
	</body>
</html>