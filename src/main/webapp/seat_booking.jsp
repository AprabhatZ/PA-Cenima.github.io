<%@ page import="com.MovieTicket.Movies.SeatStatusDAO" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
    <title>Seat Booking</title>
    <style>
        /* Define CSS styles for available, selected, and booked seats */
        .seat{ background-color:green; }
        .selected { background-color:pink; }
        .booked { background-color:red;}
    </style>
       <style type="text/css">
    body{
    	align-item:center;
    }
    table{
    	display:flex;
    	width:100%;
    	justify-content:center;
    	
    	
    }
    	td{
    		color:white;
    		width:36px;
    		height:36px;
    		border:none;
    		padding:5px;
    		margin:8px;
    	}
    </style>
</head>
<body>
				<% SeatStatusDAO seatStatusDAO = new SeatStatusDAO();
                %>

    <h1>Seat Booking</h1>
    <form action="BookSeatsServlet" method="POST">
        <table>        
            <%

                for (char row = 'A'; row <='J'; row++) {
                    out.print("<tr>");
                    for (int col = 1; col <= 10; col++) {

                        String seatName = row + String.valueOf(col);
                        String seatStatus = seatStatusDAO.getSeatStatus(seatName);
                       // String buttonColor = seatStatus.equals("booked") ? "red" : "green";
                        String seatClass = seatStatus.equals("booked")?"booked" :"available";
                        String disabledAttribute =seatStatus.equals("booked")?"disabled" :"";
                        out.print("<td class='seat "+ seatClass + "' style='color:white' data-name='" + seatName + " ' data-status='0' data-price='10.00'>" + seatName + "</td>");
                        //String seatClass = (seatStatus == "booked") ? "available" : (seatStatus == "booked") ? "selected" : "booked";
                        //String disabledAttribute = (seatStatus == "booked") ? "disabled" : "";
                        //out.print("<td class='seat " + seatClass + " " + disabledAttribute + "' data-name='" + seatName + "' data-status='" + seatStatus + "' data-price='10.00'>" + seatName + "</td>");

                        
                    }
                    out.print("</tr>");
                }
            %>
       
        </table>
        <input type="" name="selectedSeats" id="selectedSeats">
        <input type="submit" value="Book Selected Seats">
    </form>
    

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
 
    	 $(document).ready(function () {
             // Handle seat selection
             $(".seat").click(function () {
                 var seat = $(this);
                 var status = seat.data("status");
                 console.log(status);

                 if (status === 0) {
                     seat.addClass("selected");
                     seat.data("status", 1);
                     updateSelectedSeats();
                 } else if (status === 1) {
                     seat.removeClass("selected");
                     seat.data("status", 0);
                     updateSelectedSeats();
                 }
             });

             function updateSelectedSeats() {
                 var selectedSeats = [];
                 $(".selected").each(function () {
                     selectedSeats.push($(this).data("name"));
                 });
                 $("#selectedSeats").val(selectedSeats.join(","));
             }
         });
    	
    	    
       
    </script>
    <script type="text/javascript">
 // Get all elements with class name "seats"
    const seats = document.querySelectorAll('.booked');
 	

    // Iterate through the seats and disable those with a red background color
    seats.forEach(seat => {
    	console.log(seat);
    	seat.disabled = true;
    	
    	 
        // Check if the background color is red (you can use other conditions if needed)
        if (seat.className == "booked") {
        	console.log(stat);
        }
    });
    </script>
</body>
</html>
