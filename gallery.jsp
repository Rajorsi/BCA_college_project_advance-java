<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart City</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Josefin+Sans:600' rel='stylesheet' type='text/css'>

<!-- font awesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<!-- bootstrap -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />

<!-- animate.css -->
<link rel="stylesheet" href="assets/animate/animate.css" />
<link rel="stylesheet" href="assets/animate/set.css" />

<!-- gallery -->
<link rel="stylesheet" href="assets/gallery/blueimp-gallery.min.css">

<!-- favicon -->
<link rel="shortcut icon" href="images/image.jpg" type="image/x-icon">
<link rel="icon" href="images/image.jpg" type="image/x-icon">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="assets/style.css">
    
    <style>
    @font-face
	{
		font-family: myfont;
		src:url(css/Autography.otf);
	}
    .navbar-brand{
        font-size: 40px;
        padding: 40px;
        color: aliceblue;
        margin-left: 10px;
        margin-top: 30px;
      	height: 30px;
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

<div id="home">
<!-- Slider Starts -->
<div class="banner">
          <img src="images/back.jpg" alt="banner" class="img-responsive">
          <div class="caption">
            <div class="caption-wrapper">
              <div class="caption-info">              
              <img src="images/image.jpg" class="img-circle profile">
              <h1 class="animated bounceInUp">Smart City Photo Gallery</h1>
              <p class="animated bounceInLeft">A gallery from where you can know about the clips of the whole india.</p>
             <div class="animated bounceInDown"><a href="#works" class="btn btn-default explore">view My Works</a></div>
              </div>
            </div>
          </div>
</div>
<!-- #Slider Ends -->
</div>









<!-- works -->
<div id="works"  class=" clearfix grid"> 
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/flag.jpg" alt="img01"/>
        <figcaption>
            <h2>India Flag</h2>
            <p>The National flag of India is a horizontal tricolor of deep saffron (kesari) at the top, white in the middle and dark green at the bottom in equal proportion.<br>
            <a href="images/portfolio/flag.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
     
     <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/fort.jpg" alt="img03"/>
        <figcaption>
            <h2>Fort</h2>
            <p>Forts are a familiar category of monuments, the world over. They also constitute some of the most ancient historical structures apart from places of worship.<br>
            <a href="images/portfolio/fort.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/fort2.jpg" alt="img02"/>
        <figcaption>
            <h2>Red Fort</h2>
            <p>The Red Fort Complex was built as the palace fort of Shahjahanabad,the  capital of the fifth Mughal Emperor of India, Shah Jahan. <br>
            <a href="images/portfolio/fort2.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
     
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/road.jpg" alt="img09"/>
        <figcaption>
            <h2>India Gate</h2>
            <p>The India Gate structure is oblong, with a large archway on each of the four faces, but the arches on the long sides are larger and higher.The arches on the shorter sides are blocked at the bottom, with doorways, but open higher up. Technically the four arches make the building a tetrapylon. <br>
            <a href="images/portfolio/road.jpg" title="1" data-gallery style="height: 50px;">View more</a></p>            
        </figcaption>
    </figure>
     
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/t.jpg" alt="img06"/>
        <figcaption>
            <h2>Mountain</h2>
            <p>They usually have steep, sloping sides and sharp or rounded ridges, and a high point, called a peak or summit. Most geologists classify a mountain as a landform that rises or more above its surrounding area.<br>
            <a href="images/portfolio/t.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/tree.jpg" alt="img11"/>
        <figcaption>
            <h2>Forest</h2>
            <p>The word forest broadly describes an area that has a large number of trees. There are three general types of forest that exist: temperate, tropical, and boreal. <br>
            <a href="images/portfolio/tree.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>

    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/taj.jpg" alt="img09"/>
        <figcaption>
            <h2>Taj Mahal</h2>
            <p>The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan<br>
            <a href="images/portfolio/taj.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/sea.jpg" alt="img09"/>
        <figcaption>
            <h2>SEA</h2>
            <p>a sea is defined as a portion of the ocean that is partly surrounded by land. Given that definition, there are about 50 seas around the world.<br>
            <a href="images/portfolio/sea.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>

    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/p.jpg" alt="img05"/>
        <figcaption>
            <h2>Banaras</h2>
            <p>Varanasi or Banaras is one of the oldest cities in the world. It is situated on the bank of river Ganga spreading over 1535 sq.km area in the state of Uttar Pradesh.<br>
            <a href="images/portfolio/p.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>

    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/j.jpg" alt="img05"/>
        <figcaption>
            <h2>Banaras</h2>
            <p>Varanasi or Banaras is one of the oldest cities in the world. It is situated on the bank of river Ganga spreading over 1535 sq.km area in the state of Uttar Pradesh.<br>
            <a href="images/portfolio/j.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>

        
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="images/portfolio/sik.jpg" alt="img05"/>
        <figcaption>
            <h2>Sikkim</h2>
            <p>Sikkim is least populous and second smallest among the Indian states. Sikkim is notable for its biodiversity, including alpine and subtropical climates.<br>
            <a href="images/portfolio/sik.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>

     
</div>
<!-- works -->

<div id="testimonials" class="container spacer ">
	<h2 class="text-center  wowload fadeInUp">Team</h2>
  <div class="clearfix">    
    <div class="col-sm-6 col-sm-offset-3">


    <div id="carousel-testimonials" class="carousel slide testimonails  wowload fadeInRight" data-ride="carousel">
    <div class="carousel-inner">  
      <div class="item active animated bounceInRight row">
      <div class="animated slideInLeft col-xs-2"><img alt="portfolio" src="images/team/rajdip.jpeg" width="100" class="img-circle img-responsive" style="height: 150px;"></div>
            <div  class="col-xs-10">
      <p > I am Rajdip Roy. Me and my team Rajorshinath Chatterjee and Madhumita Santra has worked very well to build this and hope you wil feel very well after seeing this. </p>      
      <span>Rajdip Roy - <b>India,West Bengal</b></span>
      </div>
      </div>
      <div class="item  animated bounceInRight row">
      <div class="animated slideInLeft col-xs-2"><img alt="portfolio" src="images/team/raj.jpeg" width="100" class="img-circle img-responsive"></div>
      <div  class="col-xs-10">
      <p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>
      <span>Rajorshinath Chatterjee - <b>India,West Bengal</b></span>
      </div>
      </div>
      <div class="item  animated bounceInRight row">
      <div class="animated slideInLeft col-xs-2"><img alt="portfolio" src="images/team/modhu.jpeg" width="100" class="img-circle img-responsive"></div>
      <div  class="col-xs-10">
      <p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>
      <span>Rajorshinath Chatterjee - <b>India,West Bengal</b></span>
      </div>
      </div>
  </div>

   <!-- Indicators -->
   	<ol class="carousel-indicators">
    <li data-target="#carousel-testimonials" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-testimonials" data-slide-to="1"></li>
    <li data-target="#carousel-testimonials" data-slide-to="2"></li>
  	</ol>
  	<!-- Indicators -->
  </div>



    </div>
  </div>



</div>


















<!-- Footer Starts -->
<div class="footer text-center spacer">
<p class="wowload flipInX"><a href="#"><i class="fa fa-facebook fa-2x"></i></a> <a href="#"><i class="fa fa-instagram fa-2x"></i></a> <a href="#"><i class="fa fa-twitter fa-2x"></i></a> <a href="#"><i class="fa fa-flickr fa-2x"></i></a> </p>

</div>
<!-- # Footer Ends -->
<a href="#home" class="gototop "><i class="fa fa-angle-up  fa-3x"></i></a>





<!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h3 class="title">Title</h3><i class='bx bxs-right-arrow-circle'></i>
    <a class="prev" ><i class='bx bxs-left-arrow-circle'></i></a>
    <a class="next"> <i class='bx bxs-right-arrow-circle'></i></a>
    <a class="close"><i class='bx bxs-no-entry' ></i></a>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->    
</div>



<!-- jquery -->
<script src="assets/jquery.js"></script>



<!-- wow script -->
<script src="assets/wow/wow.min.js"></script>


<!-- boostrap -->
<script src="assets/bootstrap/js/bootstrap.js" type="text/javascript" ></script>

<!-- jquery mobile -->
<script src="assets/mobile/touchSwipe.min.js"></script>
<script src="assets/respond/respond.js"></script>

<!-- gallery -->
<script src="assets/gallery/jquery.blueimp-gallery.min.js"></script>




<!-- custom script -->
<script src="assets/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>