<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart City</title>
 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
    rel="stylesheet"
/>
<!-- favicon -->
<link rel="shortcut icon" href="images/image.jpg" type="image/x-icon">
<link rel="icon" href="images/image.jpg" type="image/x-icon">
<style>
	 @font-face
	{
		font-family: myfont;
		src:url(css/Autography.otf);
	}
      *{
   position: relative;
   margin: 0;
   padding: 0;

  
      }
     
      body{
         background-image: url("css/img1.jpg"); 
        background-color: black;
        overflow-x: hidden;
       background-repeat: no-repeat;
            background-size: cover;
      }
      form{
      
        position: relative;
        margin-top: -100px; 
        border-radius: 10px;
        padding: 10px; 
        background-color: rgba(217, 228, 228, 0.253); 
        box-shadow: 5px 10px 10px #000000ab;
        
      }
      form>h1{
        text-align: center;
        color: black;
      }
       .head-container{
   
        position: relative;
        display: flex;
        flex-direction: column;
        margin: auto;
        align-items: center;
        justify-content: center;
        padding: 10px;
       }
     
       .main-content{
        display: flex;
      
        height: 100vh;
        width: 100vw;
        margin: auto;
        justify-content: center;
        align-items: center;
       }
       button{
        margin-top: 10px;
        margin-left: 5px;
        width: 400px;
        cursor: pointer;
  
      
        
       }
       .form-control{
        border: 2px solid rgb(24, 22, 22);
        border-radius: 10px;
        background-color: rgba(240, 248, 255, 0.527);
       
       }
       .navbar-brand{
        font-size: 40px;
        color: aliceblue;
        margin-left: 10px;
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
   
  
      
    .ri-menu-line{
      font-size: 50px;

    }
    .footer-content{
      display: flex;
      flex-direction: row;
      margin-top: -100px;
      
      position: relative;
      width: 100%;
      height: 200px;

    }
   .footer-sec{
    margin-bottom: none;
    width: 100%;
    display: flex;
    margin: 5px;
    background-color: rgba(0, 0, 0, 0.562);
    box-shadow: 5px 10px 10px #000000ab;
    
    justify-content: center;
   }

     .home
     {
      position: relative;
      top: 100px;
      right: 70px;
      font-weight: 500;
      font-size: 18px;
      align-items: center;
      justify-content: center;
      color: aliceblue;
     }
     .ph
     {
      position: relative;
      top: 100px;
      right: 80px;
      font-weight: 500;
      font-size: 18px;
      align-items: center;
      justify-content: center;
      color: aliceblue;
     }
     .email
     {
      position: relative;
      top: 100px;
      right: 60px;
      font-weight: 500;
      font-size: 18px;
      align-items: center;
      justify-content: center;
      color: aliceblue;
     }
     
    
</style>
</head>
<body>
    <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
          <a class="navbar-brand">Smart City</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon" style="font-size: 50px"><i class='bx bx-menu'></i></span> 
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active " aria-current="page" href="index.jsp">Home</a>
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
     
    <section class="section"> 
      <div class="main-content">
        <form action="uploadcommand" method="post"> 
          <div class="head-container">
            <h1 class="main-head">Contact Us</h1>
            <h6 class="sub-head" style="color: rgb(0, 0, 0);">For any quarries you can contact us</h6>
          </div>
          <div class="mb-3">

            <input type="name" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Enter your Name">
            <div id="nameHelp" class="form-text"></div>
          </div>
          <div class="mb-3">

            <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter your email">
            <div id="emailHelp" class="form-text"></div>
          </div>
          <div class="form-group">
            
            <textarea class="form-control" id="message" name="message" rows="3" placeholder="messege"></textarea>
          </div>
        
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </section>
    <footer>
      <div class="footer-content">
     <div class="footer-sec"><img src="css/home.png"style="height:80px; width:80px; margin-top:10px">
    <div class="home">
      Address
      <h4>
        Konnagar,Hooghly
      </h4>
    </div>

    </div>
     <div class="footer-sec"><img src="css/call.png"style="height:110px; width:80px; margin-left: 70px">
      <div class="ph">
        Contact NO
        <h4>
          9330215312
        </h4>
      </div></div>
     <div class="footer-sec"><img src="css/email.png"style="height:80px; width:80px; margin-top:10px; margin-left: 50px">
      <div class="email">
        Email
        <h6 style="margin-right: 20px;">
         raj07092002@gmail.com
        </h6>
      </div></div>
      </div>
    </footer>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>