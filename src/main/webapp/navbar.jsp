
<%
String hiddenAttribute = "";
String ShowAttribute = "";
String admin ="";
String welcomeAdmin ="";
String flag=null;

if(session.getAttribute("name")!=null){
	hiddenAttribute ="style='display:none'";
	ShowAttribute ="style='display:block'";
	flag = "user";
}
if(session.getAttribute("name")==null){
	
	ShowAttribute ="style='display:none'";
}
if(session.getAttribute("admin")==null){
	
	admin ="style='display:none'";
	
}

if(session.getAttribute("admin")!=null){
	flag = "admin"; 
}
%>

<nav class=" z-40 sticky bg-white dark:bg-gray-900 w-full z-20 top-0 left-0 border-b border-gray-200 dark:border-gray-600">
			  <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
			  <a href="index.jsp" class="flex items-center">
			      <img src="https://flowbite.com/docs/images/logo.svg" class="h-8 mr-3" alt="Flowbite Logo">
			      <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">PA Cenima</span>
			  </a>
			  
			  <div class="flex md:order-2">
			  		
				<span <%=admin %>class="text-white  font-medium text-sm px-5 py-2.5 text-center">Hi Admin !! </span>>
			  		
			      <a href="login2.jsp" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3  dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" <%=hiddenAttribute%>>Login</a>
			      <a href="register2.jsp" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-blue-600 dark:bg-opacity-25 dark:hover:bg-blue-700 dark:focus:ring-blue-800" <%=hiddenAttribute%>>Sign up</a>
			      <a href="Logout" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-blue-800" <%=ShowAttribute%> onclick="window.localStorage.clear();">Logout</a>
			      <button data-collapse-toggle="navbar-sticky" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-sticky" aria-expanded="false">
			        <span class="sr-only">Open main menu</span>
			        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
			            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
			        </svg>
			    </button>
			  </div>
			  <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
			    <ul class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
			      <li>
			        <a href="#" class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500" aria-current="page">Home</a>
			      </li>
			      <li>
			        <a href="#" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Ticket</a>
			      </li>
			      
			
			      <li>
			        <a href="#" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Contact us</a>
			      </li>
			    </ul>
			  </div>
			  </div>
			</nav>