    var openYoutubeButton = document.getElementById('try');

        // Add a click event listener to the button
        openYoutubeButton.addEventListener('click', function() {
			const status = sessionStorage.getItem("name");
			if(status==null){
				window.location.href = 'login.jsp';
				
			}else{
				alert(status);
				
				
			}
            // Redirect the user to the YouTube website
          
           // alert("hello world");
        });