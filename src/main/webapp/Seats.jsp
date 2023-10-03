
<%@ page import="com.MovieTicket.Movies.SeatStatusDAO" %>
<!DOCTYPE html>
<html>
<head>
    <title>Seat Selection</title>
    <style type="text/css">
    body{
    	align-item:center;
    }
    form{
    	display:flex;
    	width:100%;
    	justify-content:center;
    	
    	
    }
    	button{
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
    <h1>Seat Selection</h1>
    <form  >
        <table>
            <%
                SeatStatusDAO seatStatusDAO = new SeatStatusDAO();
                int numRows = 10;
                int numCols = 10;

                for (char row = 'A'; row <= 'J'; row++) {%>
                    <tr>
                   <% for (int col = 1; col <= numCols; col++) {
                        String seatname = row + String.valueOf(col);
                        String seatStatus = seatStatusDAO.getSeatStatus(seatname);
                        String buttonColor = seatStatus.equals("booked") ? "red" : "green";
                        String buttonStatus = seatStatus.equals("booked") ? "disabled" : "";
                        %>
                        <td><button id='btn' name='seat' value='<%=seatname %>' style='background-color:green; background-color:<%=seatStatus %>' <%=buttonStatus%>  ><%=seatname%></button></td>
                    <%}%>
                    
                    </tr>
                <%}%>
        </table>
    </form>
    
     <input type="hidden" id="selectedSeats" name="selectedSeats" />
    	<button type="submit"onclick="submitSelection()">Submit Selection</button>
    
    <script>
    var selectedSeats = [];

    function toggleSeatSelection(seatName) {
        var index = selectedSeats.indexOf(seatName);
        if (index === -1) {
            selectedSeats.push(seatName);
        } else {
            selectedSeats.splice(index, 1);
        }

        // Update the button color based on selection
        var button = document.querySelector('button[value="' + seatName + '"]');
        button.style.backgroundColor = index === -1 ? 'red' : 'green';
    }

    function submitSelection() {
        // Set the selected seat values in a hidden input field before submitting the form
        document.getElementById('selectedSeats').value = selectedSeats.join(',');
        // Submit the form to process the selections
        document.forms[0].submit();
    }
</script>
</body>
</html>

