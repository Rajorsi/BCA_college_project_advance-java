<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
    
     @font-face
	{
		font-family: myfont;
		src:url(css/Autography.otf);
	}
        .navbar-brand{
            font-size: 40px;
            
            margin-left: 10px;
           font-family: myfont;
           }
           
               .navbar-brand{
        font-size: 40px;
        padding: 15px;
        color: aliceblue;
        margin-left: 10px;
        margin-top: 20px;
      	height: 70px;
        font-family: myfont;
        background: linear-gradient(to left,
			violet,
			rgb(208, 166, 238),
			rgb(217, 217, 219),
			rgb(8, 247, 227),
			rgb(209, 255, 2),
			rgb(0, 255, 234),
			rgb(238, 255, 0));
	-webkit-background-clip: text;
	color: transparent;
       }
           
          
           .nav-link{
           
            font-size: 20px;
            margin: 20px;
            color: aliceblue;
            background-color: rgba(0, 0, 0, 0.404);
            border-radius: 10px;
            padding: 5px;
            box-shadow: 5px 10px 10px #000000ab;
           }
         .nav-link:hover{
          transform: translateY(5px);
          color: rgb(0, 255, 213);
         }
         .navbar-brand:hover{
           background: linear-gradient(to left,
			violet,
			rgb(208, 166, 238),
			rgb(217, 217, 219),
			rgb(8, 247, 227),
			rgb(209, 255, 2),
			rgb(0, 255, 234),
			rgb(238, 255, 0));
	-webkit-background-clip: text;
	color: transparent;
          
         }

         body{
           background-color: #1b1b58;
            background-repeat: no-repeat;
            background-size: cover;
            
         }
        
        form{
            width: 250px;
            position: relative;
            margin-top: 100px; 
            margin-left: 500px;
            border-radius: 10px;
            padding: 10px; 
            background-color: rgba(217, 228, 228, 0.253); 
            box-shadow: 5px 10px 10px #000000ab;
            
          }
        .form-label{
            color: aliceblue;
        }
        .navbar-toggler
        {
            color: aliceblue;
        }
        .btn{
        border: 2px solid black;
        color:black;
        font-weight:bold;
        }
        #loading {
		  background: url('https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExb3VhZDBxYnA1ZzlhMHhrcWZ5ZXV4NzA3MmtoZTczZW56cTgyanE1eSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/y1ZBcOGOOtlpC/200w.webp') no-repeat center center;
		  position: absolute;
		  top: 0;
		  left: 0;
		  height: 100%;
		  width: 100%;
		  z-index: 9999999;
		}
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
          <a class="navbar-brand">Smart City</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span> 
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active " aria-current="page" href="index.jsp" style="color:white">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="gallery.jsp">Gallery</a>
              </li>
	
              <li class="nav-item">
                <a class="nav-link" href="contactUs.jsp">Contact Us</a>
              </li>
             
            </ul>
          </div>
        </div>
      </nav>
	 <div id="loading"></div>
      <form class="form" onsubmit="event.preventDefault(); sendOTP();" id="sendotp">
        <div class="mb-3">
          <label for="email" class="form-label m-2">Email address</label>
          <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
        </div>
       
        <button type="submit" class="btn ">Submit</button>
      </form>
      
      <form class="form" onsubmit="event.preventDefault(); verifyOTP();" id="verifyotp">
          <div class="mb-3">
            <label for="userotp" class="form-label m-2">OTP</label>
            <input type="number" class="form-control" id="userotp" aria-describedby="emailHelp">
          </div>
       
        <button type="submit" class="btn ">Submit</button>
      </form>
      
      <form class="form" onsubmit="event.preventDefault(); resetPassword();" id="resetpassword">
        <div class="mb-3">
          <label for="password" class="form-label m-2">Enter Password</label>
          <input type="password" class="form-control" id="password" aria-describedby="emailHelp">
        </div>
        
        <div class="mb-3">
            <label for="cpassword" class="form-label m-2">Confirm Password</label>
            <input type="password" class="form-control" id="cpassword" aria-describedby="emailHelp">
          </div>
       
        <button type="submit" class="btn ">Submit</button>
      </form>
      
      <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
      <script>
      	var sendotp = document.getElementById('sendotp');
      	var verifyotp = document.getElementById('verifyotp');
      	var resetpassword = document.getElementById('resetpassword');
      	var loading = document.getElementById('loading');
      	
      	loading.style.display = 'none';
      	verifyotp.style.display = 'none';
      	resetpassword.style.display = 'none';
      	
      	var left = 3;
      	
      	function sendOTP()
      	{
			var email = document.getElementById('email').value;
			loading.style.display = 'block';
			$.ajax({
				url:"sendotp",
				method:"post",
				data:{"email": email},
				success: function(response)
				{
					loading.style.display = 'none';
					if(response == "OTP Sent Successfully")
					{
						alert(response);
						sendotp.style.display = 'none';
						verifyotp.style.display = 'block';
				      	resetpassword.style.display = 'none';
					}
					else
					{
						alert(response);
					}
				}
			})	
		}
      	
      	function verifyOTP()
      	{
      		var userotp = document.getElementById('userotp').value;
			loading.style.display = 'block';
			$.ajax({
				url:"verifyotp",
				method:"post",
				data:{"userotp": userotp},
				success: function(response)
				{
					loading.style.display = 'none';
					if(response == "matched")
					{
						sendotp.style.display = 'none';
						verifyotp.style.display = 'none';
				      	resetpassword.style.display = 'block';
					}
					else
					{
						alert(response);
						document.getElementById('userotp').value = "";
						left = left -1;
						
						if(left == 0)
						{
							sendotp.style.display = 'block';
							verifyotp.style.display = 'none';
					      	resetpassword.style.display = 'none';
						}
						else
						{
							alert(left+" more left, try again");
						}
						
					}
				}
			})	
		}
      	
      	function resetPassword()
      	{
      		var password = document.getElementById('password').value;
      		var cpassword = document.getElementById('cpassword').value;
			loading.style.display = 'block';
			$.ajax({
				url:"resetpassword",
				method:"post",
				data:{"password": password, "cpassword": cpassword},
				success: function(response)
				{
					loading.style.display = 'none';
					if(response == "Password Updated")
					{
						alert(response);
						window.location.href = "adminLogin.jsp";
					}
					else
					{
						alert(response);
						document.getElementById('password').value = "";
						document.getElementById('cpassword').value = "";
						
					}
				}
			})	
		}
      </script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>