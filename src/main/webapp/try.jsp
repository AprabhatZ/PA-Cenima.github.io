<%@ page import="com.MovieTicket.Movies.SeatStatusDAO" %>

<!DOCTYPE html>
<html>
<head>
    <title>Seat Selection</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,500;1,100;1,200&display=swap');
        /* Define your seat grid styles here */
        body{
        	font-family:Poppins;
        	margin:0;
        }
        input{
        	height:36px;
        	margin:12px;
        	font-size:18px;
        	padding:6px;
        }
        form{
        	width:100%;
        	display:flex;
        	flex-direction:column;
        	justify-content:center;
        
        }
        .form-group{
        display:flex;
        width:460px;
        flex-wrap: wrap;
        align-content:center;margin:auto
        
        }
        .seat {
        
            width: 36px;
            height: 36px;
            margin: 5px;
            line-height:40px;
            text-align: center;
            color:white;
        }
        .screen{
        	position:relative;
        	background-color: black;
        	align-self:center;
        	border-radius: 80px 80px 0 0;
        	text-align: center;
        	color:white;
        	padding:6px;
        	font-size: 20px;
        	margin-bottom:48px;
        	width:444px;
        	
        }
        .primary{
        	background-color:blue;
        	color:white;
        	border:none;
        	padding:18px;
        	line-height:auto;
     		text-align: center;
        }
        .available { background-color: green; cursor: pointer; }
        .booked { background-color:red; }
        .selected { background-color:yellow;
        color:black; }
    </style>
    
    
<link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
<style type="text/css">

</style>
<script src="https://cdn.tailwindcss.com"></script>
    
</head>
<body class="dark:bg-gray-900">
	<%@ include file="navbar.jsp" %>
	<% SeatStatusDAO seatStatusDAO = new SeatStatusDAO();
                %>
    <h1 class="heading1 dark:text-white">Select Seats</h1>
    <form action="BookSeatsServlet" method="post" onsubmit="return validateForm()">
     <div class="screen">Screen</div>
        <div class="form-group">
       
            <%-- Generate the seat grid dynamically using JSP --%>
            <% for (char row = 'A'; row <='J'; row++) {
                   for (int col = 1; col <= 10; col++) {  %>
                	   <%String seatName =row+String.valueOf(col);
                	   String seatStatus = seatStatusDAO.getSeatStatus(seatName);
                       // String buttonColor = seatStatus.equals("booked") ? "red" : "green";
                        String seatClass = seatStatus.equals("booked")?"booked" :"available";
                        String toggle =seatStatus.equals("available")?" onclick='toggleSeat(this)'" :"";
                   %>
                   
                    <div class="seat <%=seatClass%>" id="<%=row+String.valueOf(col)%>" <%=toggle%>>
                        <%= seatName %>
                    </div>
            <%   }
               } %>
        </div>
        <br>
        <p class="dark:text-white">Total Price:Rs.<span id="totalPrice">0</span></p>
        <%-- Include a hidden input field to store selected seats --%>
        <lable class="dark:text-white" for="selectedSeats">Selected Seat:</lable>
        <input  class="dark:text-white dark:bg-gray-700"id="selectedSeats" name="selectedSeats" value="" readonly />
        <button type="submit"  type="button" class="text-white bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2">Book Ticket</button>
        <input type="text" name="name">
    </form>
    
    <p id="errorText" style="color: red;"></p>
    
    <script>
        var selectedSeats = [];
        var seatPrice = 400 ; // Price per seat

        function toggleSeat(seat) {
            var seatId = seat.id;
            if (selectedSeats.includes(seatId)) {
                // Seat is already selected, deselect it
                selectedSeats = selectedSeats.filter(id => id !== seatId);
                seat.classList.remove("selected");
            } else {
                // Seat is not selected, select it
                selectedSeats.push(seatId);
                seat.classList.add("selected");
            }
            
            // Calculate and display total price
            var totalPrice = selectedSeats.length * seatPrice;
            document.getElementById("totalPrice").textContent = totalPrice;
            
            // Update the hidden input field with selected seats
            document.getElementById("selectedSeats").value = selectedSeats.join(",");
        }
        
        function validateForm() {
            // Check if any seats are selected
            if (selectedSeats.length === 0) {
                // Display an error message
                document.getElementById("errorText").textContent = "Please select at least one seat.";
                // Prevent form submission
                return false;
            }
            // Clear any previous error message
            document.getElementById("errorText").textContent = "";
            // Continue with form submission
            return true;
        }
    </script>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>
