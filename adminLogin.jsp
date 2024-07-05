<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Smart City</title>
    <!-- favicon -->
<link rel="shortcut icon" href="images/image.jpg" type="image/x-icon">
<link rel="icon" href="images/image.jpg" type="image/x-icon">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
   
 	   *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
       
       
    @font-face
	{
		font-family: myfont;
		src:url(css/Autography.otf);
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
        background-color: rgba(101, 130, 141, 0.589);
        border-radius: 10px;
        padding: 5px;
        box-shadow: 5px 10px 10px #2e2e2db4;
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
	width: 100%;
	height: 100vh;
	background: #c77a07;
	background-position: center;
	
}






body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: #3f0e22;
}

.wrapper
{
    position: relative;
    width: 750px;
    height: 450px;
    background: transparent;
    
     box-shadow: 0 0 25px black;
    overflow: hidden;
 	margin-left: 23%;
    margin-top: 1%;
    display: flex;
}

.wrapper .form-box
{
    position: absolute;
    top: 0;
    width: 50%;
    height: 100%;
   
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.wrapper .form-box.login
{ 
    left: 0;
    padding: 0 60px 0 40px;

}

.wrapper .form-box.login .animation
{
    transform: translateX(0);
    opacity: 1;
    filter: blur(0);
    transition: .7s ease;
    transition-delay: calc(.1s * val(--j));
}


.wrapper.active .form-box.login .animation
{
    transform: translateX(-120%);
    opacity: 0;
    filter: blur(10px);
    transition-delay: calc(.1s * var(--i));

}


.wrapper .form-box.register
{ 
   right: 0;
   padding: 0 40px 0 60px;
    pointer-events: none;
}

.wrapper.active .form-box.register
{
    pointer-events: auto;
     right: 0;
   padding: 0 40px 0 60px;
 
}

.wrapper .form-box.register .animation
{
    transform: translateX(120%);
    opacity: 0;
    filter: blur(10px);
    transition: .7s ease;
    transition-delay: calc(.1s * var(--j));
}

.wrapper.active .form-box.register .animation
{
    transform: translateX(0);
    opacity: 1;
    filter: blur(0);
    transition-delay: calc(.1s * var(--i));
}

.form-box h2{
    font-size: 32px;
    color: #fff;
    text-align: center;
}

.form-box .input-box
{
    position: relative;
    width: 100%;
    height: 50px;
    margin: 25px 0;
}

.input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    border-bottom: 2px solid white;
    font-size: 16px;
    color: #fff;
    font-weight: 500;
    transition: .5s;
}

.input-box input:focus, 
.input-box input:valid
{
    border-bottom-color: #0ef;
}

.input-box label
{
    position: absolute;
    top: 50%;
    left: 0;
    transform: translateY(-50%);
    color: white;
    pointer-events: none;
    transition: .5s;
}

.input-box input:focus~label, /* for the username and password going up while tapping*/
.input-box input:valid~label
{
    top: -5px;
    color: #0ef;
}

.input-box i{
    position: absolute;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
    font-size: 18px;
    color: white;
    transition: .5s;
}

.input-box input:focus~i, 
.input-box input:valid~i{
    color: #0ef;
}


.btn
{
    position: relative;
    width: 100%;
    height: 45px;
    background: transparent;
    border: 2px solid #0ef;
    outline: none;
    border-radius: 40px;
    cursor: pointer;
    font-size: 16px;
    color: #ffff;
    font-weight: 600;


}

.form-box .logreg-link
{
    font-size: 14.5px;
    color: #fff;
    text-align: center;
    margin: 20px 0 10px;
}

.logreg-link p a{
    color: #0ef;
    text-decoration: none;
    font-weight: 600;
}

.logreg-link p a:hover
{
    text-decoration: underline;
}

.wrapper .info-text
{
    position: absolute;
    top: 0;
    width: 50%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.wrapper .info-text.login{
    right: 0;
    text-align: right;
    padding: 0 40px 60px 150px;
  
}

.wrapper .info-text.register{
    left: 0;
    text-align: left;
    padding: 0 150px 60px 40px;
    pointer-events: none;

}

.wrapper.active .info-text.register
{
    pointer-events: auto;
}

.wrapper .info-text.register .animation
{
    transform: translateX(-120%);
    opacity: 0;
    filter: blur(10px);
    transition: .7s ease;
    transition-delay: calc(.1s * var(--j));

}

.wrapper.active .info-text.register .animation
{
    transform: translateX(0);
    opacity: 1;
    filter: blur(0);
    transition-delay: calc(.1s * var(--i));
}

.wrapper .info-text.login .animation
{
    transform: translateX(0);
    opacity: 1;
    filter: blur(0);
    transition: .7s ease;
    transition-delay: calc(.1s * var(--j));
}


.wrapper.active .info-text.login .animation
{
    transform: translateX(120%);
    opacity: 0;
    filter: blur(10px);
    transition-delay: calc(.1s * var(--i));
}

.info-text h2{
    font-size: 36px;
    color: #fff;
    line-height: 1.3;
    text-transform: uppercase;
}

.info-text p{
    font-size: 16px;
    color: #fff;
}

.wrapper .bg-animate
{
    position: absolute;
    top: -4px;
    right: 0;
    width: 850px;
    height: 600px;
    background: linear-gradient(45deg, #c9ff04, rgba(252, 37, 8, 0.315));
    border-bottom: 3px solid #0ef;
    transform: rotate(10deg) skewY(40deg);
    transform-origin: bottom right;
    transition: 1.5s ease;
    transition-delay: 1.6s;

}

.wrapper.active .bg-animate{

       transform: rotate(0) skewY(0);
       transition-delay: .5s;
}

.wrapper .bg-animate2
{
    position: absolute;
    top: 100%;
    left: 250px;
    width: 850px;
    height: 700px;
    background: #081b29;
    border-top: 3px solid #0ef;
    transform: rotate(0) skewY(0);
    transform-origin: bottom left;
    transition: 1.5s ease;
    transition-delay: .5s;
}

.wrapper.active .bg-animate2
{
    transform: rotate(-11deg) skewY(-41deg);
    transition-delay: 1.3s;
}

h5{
color:white;
position: relative;
left: 50px;
}
@media only screen and (max-width: 650px) {
    .wrapper
    {
        position: relative;
        padding: 0px 100px;
       
        margin-top: 25%;
        margin-right: 30%;
        box-shadow: 0 0 25px #000000;
        overflow: hidden;
      
        display: flex;
    }
    .navbar-toggler
    {
        position: relative;
        margin-left: 700px;
        bottom: 100px;
        color: white;
    }
    body {
        background: #c77a07;
    };
    
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


<div class="wrapper">
        <span class="bg-animate"></span>
        <span class="bg-animate2"></span>
       
        <div class="form-box login">
            <h2 class="animation" style="--i:0; --j:21;">Login</h2>
            <form action="Adminlogin" method="post">
                <div class="input-box animation" style="--i:1; --j:22;">
                    <input type="text" id="email" name="email" required>
                    <label for="email">Email</label>
                    <i class='bx bxs-user'></i>
                </div>
                <div class="input-box animation" style="--i:2; --j:23;">
                    <input type="password" id="password" name="password" required>
                    <label for="password">Password</label>
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <button type="submit" class="btn animation" style="--i:3; --j:24;">Login</button>
                <div class="logreg-link animation" style="--i:4; --j:25;">
                    <p>Don't have an account? <a href="#" class="register-link">Sign Up</a>  </p>
                    <p>Have you forget your password? <a href="forgetPassword.jsp" class="">Forget Password</a>  </p>
                </div>
            </form>
        </div>
        <div class="info-text login" >
            <h2 class="animation" style="--i:0; --j:20;">WELCOME</h2>
            <p class="animation" style="--i:1; --j:21;">If you have your account then you just go on.</p>
         </div>


         <div class="form-box register">
            <h2 class="animation" style="--i:17; --j:0;">Sign Up</h2>
            <form  action="addadmin" method="post">
                <div class="input-box animation" style="--i:18; --j:1;">
                    <input type="text" id="name" name="name" required>
                    <label for="name">Name</label>
                    <i class='bx bxs-user'></i>
                </div>
                <div class="input-box animation" style="--i:19; --j:2;">
                    <input type="text" id="email" name="email" required>
                    <label for="email">Email</label>
                    <i class='bx bxs-envelope'></i>
                </div>
                <div class="input-box animation" style="--i:20; --j:3;">
                    <input type="password" id="password" name="password" required>
                    <label for="password">Password</label>
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <button type="submit" class="btn animation" style="--i:21; --j:4;">Sign Up</button>
                <div class="logreg-link animation" style="--i:22; --j:5;">
                    <p>Already have an account? <a href="#" class="login-link">Login</a>  </p>
                	
                </div>
            </form>
            <h5>${requestScope['message']}</h5>
        </div>
        <div class="info-text register">
            <h2 class="animation" style="--i:17; --j:0;">Welcome</h2>
            <p class="animation" style="--i:18; --j:1;">hello! Welcome to our world. Please register yourselve to explore.</p>
         </div>
        </div>

        <script src="css/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>