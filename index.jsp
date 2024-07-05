<%@page import="java.util.ArrayList"%>
<%@page import="bean.state"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Smart City</title>
<!-- favicon -->
<link rel="shortcut icon" href="images/image.jpg" type="image/x-icon">
<link rel="icon" href="images/image.jpg" type="image/x-icon">

<style>

@font-face
{
	font-family: myfont;
	src:url(css/Autography.otf);
}
@font-face {
	font-family: myfont2 ;
	src:url(css/Royalacid.ttf);
}
*
{
	margin: 0;
	padding: 0;
	font-family: sans-serif;
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
        font-weight: 800;
        color: aliceblue;
        background-color: rgb(24, 23, 23);
        border-radius: 10px;
        padding: 5px;
        box-shadow: 5px 10px 10px #0c0c0cf8;
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
     .navbar{
        background: transparent;
     }


.banner
{
	width: 200vw;
	height: 900vh;
	background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75));
	background-position: center;
	background-size: cover;
	
}

body{
	 display: flex;
    justify-content: center;
    align-items: center;
    overflow-y: hidden; /* Hide vertical scrollbar */
  	overflow-x: hidden; /* Hide horizontal scrollbar */
}



.logo
{
	width: 500px;
	cursor: pointer; 
	position: relative;
	color: aliceblue;
	font-family: myfont;
	font-size: 1px;
	text-align: center;
	font-size: 20px;
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




.content
{
	width: 100%;
	position: relative;
	top: 200px;
	
	transform: translateY(-50%);
	text-align: left;
	color: white;
	margin-left: 20px;
}
.content h1
{
	font-family: cursive;
	font-size: 30px;
	margin-top: 20px auto;
}

.content p
{
	font-family: revert;
	margin-top: 20px auto;
	line-height: 25px;
	font-size: 15px;
	text-align: justify-all;
}

button
{
	width: 200px;
	padding: 15px 0;
	text-align: center;
	margin: 20px 10px;
	border-radius: 25px;
	font-weight: bold;
	border: 3px solid yellow;
	background: transparent;
	color: white;
	cursor: pointer;
	position: relative;
	overflow: hidden;
	font-size: 20px;
}
button:hover
{
	background: cadetblue;
	text-emphasis-color: darkred;
	transition: 0.8s;
	left: 0;
	bottom: 0;
}

.form{
	width: 300px;
	height: 300px;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.8)50%, rgba(0, 0, 0, 0.8)50%);
	position: relative;
	bottom: 350px;
	left: 800px;
	margin-top: 15%;
	border-radius: 10px;
	padding: 30px;
	font-weight: bold;
	box-shadow: 5px 5px 5px red;
}
.form h2
{
	width: 220px;
	font-family: Comic Sans MS;
	text-align: center;
	color: yellow;
	font-size: 28px;
	margin-left: 20px;
	background-color: transparent;
	border-radius: 10px;
	margin: 2px;
	padding: 10px;
}

.form input
{
	width: 240px;
	height: 35px;
	background: transparent;
	border-bottom: 1px solid yellow;
	border-top: none;
	border-right: none ;
	border-left: none;
	color: white;
	font-size: 15px;
	margin-top: 20px;
	letter-spacing: 1px;
	font-family: Comic Sans MS;
}

.vid
{
	width: 100%;
	position: relative;
	right: 0;
	bottom: 900px;
	z-index: -1;
	left: 0px;
	background-color: black;
}
.btn
{
	width: 200px;
	padding: 5px 0;
	text-align: center;
	margin: 20px 10px;
	border-radius: 25px;
	font-weight: bold;
	border: 3px solid yellow;
	background: transparent;
	color: white;
	cursor: pointer;
	position: relative;
	overflow: hidden;
	font-size: 20px;
}
.form:hover
{
	border-radius: 9px;
	border: 3px solid yellow;
	transition: 5.2s;
}

.stateselect
{
border:none;
background: transparent;
border-bottom: 2px solid yellow; 
color: white; 
font-weight: 500;
}

.stateselect option
{
color: white; 
background-color: black;
}
.link
{
color:white;
text-decoration:none;
}
.link:hover{
color:white;
}

@media only screen and (max-width: 650px) {
    .vid
	{
		position: relative;
		top: 150px;
		width: 600px;
	}

	.form
	{

		margin-right: 100px;
		margin-top: 200px;
	}
    .content
    {
    position: relatve;
    left: 100px;
    margin-top: 100px;
    }
    .logo
    {
    position: relative;
    left: 50px;
    }
  }
</style>
 
</head>
<body>
		<div class="banner">
	 	  <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
          <a class="navbar-brand">Smart City</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon" style="font-size: 50px"><i class='bx bx-menu'></i></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active " aria-current="page" href="index.jsp"><i class='bx bx-home'></i>Home</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="gallery.jsp"><i class='bx bx-photo-album'></i>Gallery</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="contactUs.jsp"><i class='bx bxs-contact'></i>Contact Us</a>
              </li>
             
            </ul>
          </div>
        </div>
      </nav>
	 	 

		<div class="content">
			<h1>EXPLORE IN WORLD OF INDIA</h1>
			<p>THE UNIVERSE WHERE EVERYTHING BELONGS <br>AND EXPLORE THE ALL SEARCHES.<br> YOU CAN GET YOUR PLACES BY SEARCHES.</p>
			<div>
				<button type="button"><span></span><a href="adminLogin.jsp" class="link"><i class='bx bx-body'></i>ADMIN LOGIN</a></button>
				<button type="button"><span></span><a href="login.jsp" class="link"><i class='bx bxs-user'></i>USER LOGIN</a></button>
			</div>
		</div>

		<div class="form">
			<h2>Explore World</h2>
			<form action="placeDetails.jsp" method= "post">
			<select class="stateselect" name="stateid" id="stateid" onchange="getCityByState()">
			<option selected>Select State</option>
			<%
				state st = new state();
				ArrayList<state> allstates = st.showallstate();
				
				for(state s : allstates)
				{
					out.print("<option value='"+s.getState_id()+"'>"+s.getState_name()+"</option>");
				}
			%>
				
			</select > <br> <br>
			<select class="stateselect" id="cityid" name="cityid" onchange="getCityByState()">
				<option selected>Select City</option>
			</select>
			<button class="btn">Explore</button>
			</form>
		</div>
		<div class="vid">
		<video autoplay loop muted plays-inline>
		<source src="css/vid.mp4" type="video/mp4">
		</div>
</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
	function getCityByState()
	{
		var stateid = document.getElementById('stateid').value;
		
		$.ajax({
			url:"allcities",
			method:"get",
			data:{"stateid": stateid},
			success: function (response)
			{
				var allcities = JSON.parse(response);
				var temp = "";
				temp += "<option selected>Select City</option>";
				
				for(i=0;i<allcities.length;i++)
				{
					temp += "<option value="+allcities[i].city_id+">"+allcities[i].city_name+"</option>";
				}
				document.getElementById("cityid").innerHTML = temp;
			}
		})
	}
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>