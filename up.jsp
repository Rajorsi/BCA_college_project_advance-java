<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style>
		.main
		{
			margin-left: 0px;
		}
		.agra
		{
			margin-left: 250px;
			height: 400px;
			width: 800px;
		}
		.fateh
		{
			
			margin-left: 100px;
			height: 500px;
			width: 1000px;
		}
		.m
		{
			padding: 20px;
			margin-left: 10px;

		}
		.va
		{
			margin-left: 200px;
			height: 450px;
			width: 860px;
		}
		.pr
		{
			height: 500px;
			width: 1000px;
			margin-left: 170px;
		}
		.var
		{
			height: 500px;
			width: 1000px;
			margin-left: 150px;
		}
		.lk
		{
			height: 500px;
			width: 1000px;
			margin-left: 150px;

		}
		.al{
			height: 470px;
			width: 1000px;
			margin-left: 150px;
		}
		.sar{
			height: 470px;
			width: 1000px;
			margin-left: 150px;
		}
		.ku{
			height: 470px;
			width: 1000px;
			margin-left: 150px;
		}
		.jh{
			height: 470px;
			width: 1000px;
			margin-left: 150px;
		}
		.ay{
			height: 470px;
			width: 1000px;
			margin-left: 150px;
		}
		.du{
			height: 470px;
			width: 1000px;
			margin-left: 150px;
		}
		.f{
			height: 470px;
			width: 1000px;
			margin-left: 150px;
		}

		.box1
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 200px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box2
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 390px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}

		.box3
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 200px;
			width: 400px;
		
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box4
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 210px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}

		.box5
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 260px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box6
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 400px;
			width: 400px;
		
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}

		
		.box7
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 260px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box8
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 400px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box9
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 180px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box10
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 340px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box11
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 250px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box12
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 340px;
			height: 650px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box13
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 300px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box14
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 440px;
			height: 650px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box15
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 300px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box16
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 440px;
			height: 750px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box17
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 300px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box18
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 440px;
			height: 750px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box19
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 300px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box20
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 340px;
			height: 800px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box21
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 300px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box22
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 340px;
			height: 630px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box23
		{
			background-color: transparent;
			position: relative;
			left: 60px;
			top: 300px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box24
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 630px;
			height: 630px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box25
		{
			background-color: transparent;
			position: relative;
			left: 700px;
			bottom: 700px;
			height: 690px;
			width: 400px;
		
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}
		.box26
		{
			background-color: transparent;
			position: relative;
			left: 80px;
		
			height: 690px;
			width: 400px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 20px;
			box-shadow: 5px 5px 5px rgb(240, 0, 0) ;
			
		}




		.box1:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box2:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}

		.box3:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box4:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box5:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box6:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}

		.box7:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box8:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box9:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box10:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box11:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box12:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box13:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box14:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box15:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box16:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box17:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box18:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box19:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box20:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box21:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box22:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box23:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box24:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box25:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		.box26:hover 
		{
			background-color:  rgb(248, 246, 146);
			transition: 0.9s;
			color: black;
		}
		section
		{
			background-image: url('upimages/back.jpg');
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-size: 100%;
			color: antiquewhite;
			text-align: justify;

		}
		h1
		{
			font-family: Arial, Helvetica, sans-serif;
			font-style: oblique;
		}
		p
		{
			font-family: Arial, Helvetica, sans-serif;
			font-weight: bold;
		}
		
		.ani {
            font-size: 45px;
            font-weight: bold;
            color: whitesmoke;
            padding-bottom: 0px;
            animation: infinite;
			
        }

        .glow {
		  font-size: 80px;
		  color: #0fff;
		  text-align: center;
		  animation: glow 1s ease-in-out infinite alternate;
		}

		@-webkit-keyframes glow {
		  from {
		    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
		  }
		  
		  to {
		    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
		  }
		}

	</style>
</head>
<body>
	<section>
<div class="main">
        <marquee class="marq"  
                 direction="left" loop="6">
            <div class="ani">
                WELCOME TO UTTAR PRADESH
            </div>
           
        </marquee>
    </div>
<div class="m">
	
<section>
	<div>
		<h1>1. Agra</h1>
	</div>
	<div>
		<img src="upimages/a.jpg" class="agra" class="var"><br><br><br>
	</div>
	
	<div>
		
		<p>
			One of the most important places to visit in Uttar Pradesh and famous across the globe for being the home of the Taj Mahal, Agra is located on the banks of River Yamuna. Home to two more UNESCO World Heritage Sites – Agra Fort and Fatehpur Sikri, Agra is indeed a sneak peek into the architectural history and legacy of the Mughal empire. The city forms part of the popular Golden Triangle Circuit for tourists along with Delhi and Jaipur and also a part of the Uttar Pradesh Heritage Arc including Varanasi and Lucknow. Agra is a heaven for history fanatics, architecture buffs and foodies, all alike. It’s famous for its Petha and also well-known for its marble artefacts. Agra is therefore among the must-visit destinations in Uttar Pradesh for anyone living in or visiting India. <br>
			
			The white marble stone was brought from Rajasthan. Blue gems from Tibet, emeralds from Sri Lanka, jasper from Punjab, and crystals were imported from China.<br><br>
			The complex is set around a large 300 m2 (3,200 sq ft) charbagh or Mughal garden. The garden is divided by two main walkways (khiyaban) into four quadrants with further raised pathways that divide each of the four-quarters into 16 sunken parterres or flowerbeds. The garden is surrounded by a walkway connecting all the quadrants. Halfway between the tomb and gateway in the centre of the garden is a raised marble water tank with five fountains and a reflecting pool positioned on a north–south axis to reflect the image of the mausoleum. The elevated marble water tank is called al Hawd al-Kawthar in reference to the "Tank of Abundance" promised to Muhammad.[36] Elsewhere, the garden is laid out with avenues of trees and fountains.[37] In the north-western quadrant, is a place that marks the site where Mumtaz Mahal was first buried, before her body was moved to its final resting place inside the main chamber of the mausoleum.<br>

			The charbagh garden, a design inspired by Persian gardens, was introduced to India by Babur, the first Mughal emperor and symbolises the Paradise garden (Jannah) with four rivers flowing from a central spring or mountain, separating the garden into north, west, south and east.[39] While most gardens of the era are rectangular with a tomb or pavilion in the centre, the Taj gardens is unusual in that the main element, the tomb, is located at the end of the garden. With the discovery of Mahtab Bagh ("Moonlight Garden") on the other side of the Yamuna river, the Archaeological Survey of India has hypothesised that the Yamuna river itself was incorporated into the garden's design and was meant to be seen as one of the rivers of Paradise.[40] Similarities in layout and architectural features with the Shalimar Gardens suggest that both gardens may have been designed by the same architect, Ali Mardan.[41] Early accounts of the garden describe its profusion of vegetation, including abundant roses, daffodils, and fruit trees.[42] As the Mughal Empire declined, the gardens were not maintained, and when the British Raj assumed management of the gardens, they changed the landscaping to resemble the formal lawns of London in the 19th century. <br>

			
			<div class="box1">
				<img src="upimages/taj1.jpg" style="width: 100%">
				<ul>
				<li>Best Time to Visit: October to March <br><br></li>
				<li>Ideal Vacation Duration: 6 to 7 days <br><br></li>
				<li>Average Expense: ₹ 8,000 for 3 Nights/ 4 Days (Include Car, Hotel, Sightseeing, Meal) <br><br></li>
				<li>Places to Visit: Taj Mahal, Agra Fort, Fatehpur Sikri, Mehtab Bagh, etc. <br><br></li>
				<li>Things to Do: Explore the historical heritage and delicious cuisines. <br><br></li>
				<li>How to Reach: Via air, rail. <br><br></li>
				</ul>
			</div>

			<div class="box2">
				<img src="upimages/taj2.jpg" style="width: 100%">
				<ul>
				<li>The Taj Mahal took 22 years to build.<br></li>
				<li>More than 22,000 labourers worked in the construction of the Taj Mahal.<br></li>
				<li>The construction of the Taj Mahal cost 3.2 crores of rupees at that time.<br></li>
				<li>Various Precious stones were brought from various countries for the building of the Taj Mahal.<br></li>
				</ul>
			</div>
		</p>
	</div>

</section>

<div>
<section>
	<div>
		<h1>2. Fatehpur Sikri</h1>
	</div>
	<div>
		<img src="upimages/faeth.jpg" class="fateh"><br><br><br>
	</div>
	
	<div>
		<p>
			Fatehpur Sikri, , a city predominantly in red sand-stone, situated at a distance of 37 kms from Agra, was built by the Mughal Emperor Jalal-ud-din Mohammad Akbar, in honour of the great Sufi saint Sheikh Salim Chisti ; its magnificence and uniqueness offers a fine example of the emperor's architectural finesse. Akbar's tolerant religious views and interest in literature, architecture and fine arts gave the buildings at Fatehpur Sikri a charismatic blend of Islamic and Hindu elements in their style and design. <br> 

			At Fatehpur Sikri during sunset and sunrise, the turrets and domes create shadows and silhouette against the copper red sky; which truly is an inspirational scene for a painter's canvas or the visitor's eyes. <br> <br>

			Fatehpur Sikri is enclosed by a 11 kms long fortification wall interspersed with numerous gateways. The remains of the great city; the Imperial Palace Complex, the intricately built marble tomb of the great Sufi saint, Sheikh Salim Chisti and the grand mosque are second only to The Taj Mahal, a benchmark of architectural beauty.A rich imagination is all it takes to transport any visitor to the era of gold tapestry, drapes, rich plush carpets and the royalty of the Mughal courts. <br> 
			Fatehpur Sikri sits on a rocky ridge, 3 kilometres (1.9 mi) in length and 1 km (0.62 mi) wide, and the palace city is surrounded by a 6 km (3.7 mi) wall on three sides with the fourth bordered by a lake. The city is generally organised around this 40 m high ridge, and falls roughly into the shape of a rhombus. The general layout of the ground structures, especially the "continuous and compact pattern of gardens and services and facilities" that characterised the city leads urban archaeologists to conclude that Fatehpur Sikri was built primarily to afford leisure and luxury to its famous residents.<br>

			The dynastic architecture of Fatehpur Sikri was modelled on Timurid forms and styles.[28] The city was built massively and preferably with red sandstone.[29] Gujarati influences are also seen in its architectural vocabulary and decor of the palaces of Fatehpur Sikri.[30] The city's architecture reflects both the Hindu and Muslim form of domestic architecture popular in India at the time.[31] The remarkable preservation of these original spaces allows modern archaeologists to reconstruct scenes of Mughal court life, and to better understand the hierarchy of the city's royal and noble residents.<br>

			It is accessed through gates along the 5 miles (8.0 km) long fort wall, namely, Delhi Gate, the Lal Gate, the Agra Gate and Birbal's Gate, Chandanpal Gate, The Gwalior Gate, the Tehra Gate, the Chor Gate, and the Ajmeri Gate. The palace contains summer palace and winter palace for Queen Mariam-uz-Zamani commonly known as Jodha Bai.<br>

			<div class="box3">
				<img src="upimages/f1.jpg" style="width: 100%">
				<h2>Fatehpur Sikri Timings</h2>
				<ul>
				<li>The Fatehpur Sikri visiting hours are between sunrise and sunset.</li>
				<br> <br> 
				<h2>Fatehpur Sikri Location</h2>
				<li>Fatehpur Sikri Road, Agra, Uttar Pradesh 283110</li>
			<br> <br> 


				<h2>Fatehpur Sikri Opening Days</h2>
				<li>Fatehpur Sikri remains open on all days of the week.</li>
			<br> <br> 
				</ul>
			</div>
			<div class="box4">	
				<img src="upimages/f2.jpg" style="width: 100%">
				<h2>How to Reach Fatehpur Sikri</h2>
				<ul>
				<li>Being about 40 kilometres from Agra, the ideal way to visit Emperor Akbar’s former capital is by car. You can either drive down or hire a taxi service in Agra, and club it with your visit to the Taj Mahal and Agra Fort. However, these are the alternate ways you can travel to Fatehpur Sikri</li>

			<br> <br> 
 			</div>

			</ul>
		</p>
	</div>
</section>
</div>

<div>
	<section>
		<div>
			<h1>3. Varanasi</h1>
		</div>
		<div>
			<img src="upimages/var.jpg" class="va"><br><br><br>
		</div>

		

		<div>
			<p>
				Varanasi, or Benaras, (also known as Kashi) is one of the oldest living cities in the world. Varanasi`s Prominence in Hindu mythology is virtually unrevealed. Mark Twain, the English author and literature, who was enthralled by the legend and sanctity of Benaras, once wrote : “Benaras is older than history, older than tradition, older even than legend and looks twice as old as all of them put together. ”
<br> <br> 
				The land of Varanasi (Kashi) has been the ultimate pilgrimage spot for Hindus for ages. Hindus believe that one who is graced to die on the land of Varanasi would attain salvation and freedom from the cycle of birth and re-birth. Abode of Lord Shiva and Parvati, the origins of Varanasi are yet unknown. Ganges in Varanasi is believed to have the power to wash away the sins of mortals.
<br> <br> 
				Ganges is said to have its origins in the tresses of Lord Shiva and in Varanasi, it expands to the mighty river that we know of. The city is a center of learning and civilization for over 3000 years. With Sarnath, the place where Buddha preached his first sermon after enlightenment, just 10 km away, Varanasi has been a symbol of Hindu renaissance. Knowledge, philosophy, culture, devotion to Gods, Indian arts and crafts have all flourished here for centuries. Also a pilgrimage place for Jains, Varanasi is believed to be the birthplace of Parsvanath, the twenty-third Tirthankar.
<br> <br> 
				Vaishnavism and Shaivism have co-existed in Varanasi harmoniously. With a number of temples, Mrs. Annie Besant chose Varanasi as the home for her ‘Theosophical Society’ and Pandit Madan Mohan Malviya, to institute ‘Benares Hindu University, the biggest University in Asia. Ayurveda is said to be originated at Varanasi and is believed to be the basis of modern medical sciences such as Plastic surgery, Cataract and Calculus operations. Maharshi Patanjali, the preceptor of Ayurveda and Yoga, was also affiliated with Varanasi, the holy city. Varanasi is also famous for its trade and commerce, especially for the finest silks and gold and silver brocades, since the early days.
<br> <br> 
				Varanasi has also been a great center of learning for ages. Varanasi is associated with promotion of spiritualism, mysticism, Sanskrit, yoga and Hindi language and honored authors such as the ever-famous novelist Prem Chand and Tulsi Das, the famous saint-poet who wrote Ram Charit Manas. Aptly called as the cultural capital of India, Varanasi has provided the right platform for all cultural activities to flourish. Many exponents of dance and music have come from Varanasi. Ravi Shankar, the internationally renowned Sitar maestro and Ustad Bismillah Khan, (the famous Shehnai player) are all sons of the blessed city or have lived here for major part of their lives.
<br> 
				<div class="box5">	
					<img src="upimages/var1.jpg" style="width: 100%">	
					<ul>		
					<li>Best Time to Visit: Throughout the year <br> <br></li> 
					<li>Ideal Vacation Duration: 2 to 3 days <br> <br></li> 
					<li>Average Expense: ₹ 6,100 for 2 Nights/ 3 Days (Include Car, Hotel, Sightseeing, Meal)    <br> <br></li> 
					<li>Places to Visit: Kashi Vishwanath Temple, Manikarnika Ghat, Dhamekh Stupa, Ashoka 			Pillar, etc. <br> <br></li> 
					<li>Things to Do: Watch Ganga arati, take a boat ride, and visit temples. <br> <br></li> 
					<li>How to Reach: Via air, rail and road. <br> <br></li> 
				</ul>
				</div>

				<div class="box6">
					<img src="upimages/var2.jpg" style="width: 100%">
					<ul>
					<li>Tour Of The Oldest Temple<br> <br></li>
					<li>Relive Your History<br> <br></li>
					<li>Explore The Ghats<br> <br></li>
					<li>Witness The Buddhist Intervention<br> <br></li>
					<li>Take The Holy Bath In Ganges<br> <br></li>
					<li>Witness The Magnificent Sunset<br> <br></li>
					<li>Explore The Magnificent Weaver’s Village<br> <br></li>
					<li>Boat Ride On Ganges<br> <br></li>
					<li>Watch Evening Aarti<br> <br></li>
					<li>Take A Tour To Sarnath<br> <br></li>
					<li>Taste Street Food<br> <br></li>
					<li>Shopping<br> <br></li>
					</ul>
				</div>


			</p>
		</div>
	</section>
</div>

<div>
	<section>
		<div>
			<h1>
				4. Mathura
			</h1>
		</div>

		<div>
			<img src="upimages/pre.jpg" class="pr"><br><br><br>
		</div>

		<div>
			<p>
				Being the birthplace of Lord Krishna makes Mathura one of Hinduism’s seven sacred cities and therefore attracts a horde of pilgrims from all over the world, making it one of the most visited pilgrims and tourist places in Uttar Pradesh. Similar to the Ganga Aarti in Varanasi, the Yamuna Aarti is one of the highlights of Mathura. The town is flooded with tourists and pilgrims during the two main festivals – Janmashtami and Holi. Shri Krishna Janmabhumi is the most famous <br> <br> 
				tourist attraction in Mathura, as this place is believed to be the exact place where Lord Krishna was born, and the prison where he was born is now on display for tourists to see. Other two most important temples in town are the Dwarkadheesh Temple and the Gita Mandir. Mathura also has a delicious history of street food. Some must-try local snacks are kachodis, aloo-puri, chaat, jalebis and gulab-jamuns.<br> <br> 

				Mathura is one of the seven sacred cities of the Hindus. It is the traditional birthplace of the god Krishna (Krishna Janmabhoomi) and the primary site of pilgrimage for the annual celebration of Janmashtami. The city’s Shāh-i-ʿĪdgāh (Shahi Eidgah) Mosque was built on the site in the 17th century, replacing a Hindu temple that had been erected there several decades earlier. The construction of a new temple, adjacent to the mosque, was completed on the site in 1965. Calls for the mosque to be removed altogether became a source of communal tension in the 2020s.<br> <br> 

				The present-day city, situated at a major junction of roads and rail lines, is an agricultural trade centre with some industry. Several colleges and the Government Museum, Mathura (established 1874; formerly the Curzon Museum of Archaeology), are located in the city. There are a large number of temples in and around the city as well as ghats, or bathing stairs, along the river. Pop. (2001) 302,770; (2011) 349,909.<br> <br> 
				<div class="box7">
				<img src="upimages/math1.png" style="width: 100%">
				<ul>
				   <li>	Best Time to Visit: October to March<br> <br></li> 
					<li>Ideal Vacation Duration: 1 to 2 days <br> <br></li> 
					<li>Average Expense: ₹ 5,100 for 1 Nights/ 2 Days (Include Car, Hotel, Sightseeing, Meal)<br> <br></li> 
					<li>Places to Visit: Shri Krishna Janmasthan Temple, Dwarkadheesh Temple, Radha Kund etc.</li>
				</ul>
				<br> <br>
				<ul> 
					<li>Things to Do: Explore the historical heritage and visit temples.<br> <br></li> 
					<li>How to Reach: Via air, rail and road.<br> <br></li>
				</ul> 
				</div>

				<div class="box8">
				<img src="upimages/math2.jpg" style="width: 100%">
				Placesd to visit
				<ul>
				<li>Krishna Janmabhoomi Temple. 466. <br> <br></li> 
				<li>Govardhan Hill. 179. <br> <br></li> 
				<li>Krishna Janmasthan Temple Complex. 185. <br> <br></li> 
				<li>Dwarkadhish Temple. 189. <br> <br></li> 
				<li>Barsana Shri Radha Rani Temple. Religious Sites. <br> <br></li> 
				<li>Sri Krishna Janmabhoomi Temple Complex. 137. <br> <br></li> 
				<li>Elephant Conservation & Care Center. Nature & Wildlife Areas. <br> <br></li> 
				<li>Radha Raman Temple.<br> <br></li>
				</ul> 
				</div>
			</p>
		</div>
	</section>
</div>

<div>
	<section>
		<div>
			<h1>5. Vrindavan</h1>
		</div>
		<div>
			<img src="upimages/vr.jpg" class="var"><br><br><br>
		</div>
		<div>
			<p>
				Located only 10 km. away from each other, Mathura and Vrindavan are often considered twin cities. One of the oldest cities on the banks of Yamuna, Vrindavan is considered to be one of the most important places of pilgrimage for the devotees of Lord Krishna. Considered to be his childhood abode, the city of Vrindavan, which is located along the waters of river Yamuna hosts hundreds of Lord Krishna and Radha temples scattered throughout. The most famous of them are Banke Bihari temple and the world-famous ISKCON temple. The name of the city has been derived from Vrinda (meaning basil) and Van (meaning grove) which perhaps refer to the two small groves at Nidhivan and Seva Kunj. Since Vrindavan is considered to be a sacred place, a large number of people come here to renounce their worldly life. <br>
				Vrindavan, the land of Radha Krishna has about 5500 temples dedicated to them to showcase their divine pastimes. Some of the important pilgrimage sites are

				 <br><br>Shri Radha Madan Mohan Temple, located near the Kalidah Ghat was built by Kapur Ram Das of Multan. One of the oldest temples in Vrindavan, it is closely associated with Chaitanya Mahaprabhu. The original deity of Madan Gopal was shifted from the shrine to Karauli in Rajasthan for safekeeping during Aurangzeb's rule. Today, a replica of the original (deity) is worshipped at the temple  <br>
				Sri Radha Raman Mandir, constructed at the request of Gopala Bhatta Goswami and houses a saligram deity of Krishna as Radha Ramana, alongside Radha. <br>
				Banke Bihari Temple, built in 1862[31] after the image of Banke-Bihari was discovered in Nidhivan by Swami Haridas. <br>
				Radha Vallabh Temple is one of the ancient temple of Vrindavan. It was constructed in 1585 AD and was the first temple made up of red sandstones.<br>
				Radha Damodar Temple is a Gaudiya Vaishnavism temple, which is dedicated to Radha Krishna and was constructed in 1542 CE.<br>
				Sri Krishna-Balarama Temple was built by the International Society for Krishna Consciousness (ISKCON) in Raman-Reti. The principal deities of this temple are Krishna and Balaram, with Radha–Shyamasundar and Gaura-Nitai alongside. Adjoining the temple is the samadhi of A. C. Bhaktivedanta Swami Prabhupada, the founder of ISKCON, was built in pure white marble.<br>
				Prem Mandir is a spiritual complex situated on a 54-acre site on the outskirts of Vrindavan dedicated to divine love. The temple structure was established by spiritual guru Kripalu Maharaj. The main structure built in marble and figures of Krishna cover the main temple.<br>
				Vrindavan Chandrodaya Mandir is housed in a modern geodesic structure with a traditional gopuram based on Khajuraho style of architecture. It is being built by one of the ISKCON factions based in Bangalore.[37] At cost of ₹300 crore (US$38 million) it will be the tallest temple in world on completion.<br>
				Shri Rambag Mandir, Vrindavan Shri Rambag Mandir is a Ramanandi Sampradaya temple, which is the first and oldest Shri Ram Mandir. Made up of white sandstones and dedicated to Shri Ram Darbara, the temple was constructed in 1930.<br>
				<br> <br>
				<div class="box9">
					<img src="upimages/vri1.jpg" style="width: 100%">
					<ul>
					<li>Best Time to Visit: October to March<br></li> 
					<li>Ideal Vacation Duration: 2 to 3 days<br></li> 
					<li>Average Expense: ₹ 8,100 for 2 Nights/ 3 Days (Include Car, Hotel, Sightseeing, Meal)		<br></li> 
					<li>Places to Visit: Prem Mandir, Shri Radha Madan Mohan Ji Temple, Sri Sri Krishna Balaram Temple etc.		<br></li> 
					<li>Things to Do: Explore the historical heritage and visit temples.		<br></li> 
					<li>How to Reach: Via air, rail and road.<br></li>
					</ul> 
				</div>
				<div class="box10">
					<img src="upimages/vri2.jpg" style="width: 100%">
						<h2>Top 10 Places</h2><br>
						<ul>
						<li>Banke Bihari Mandir<br></li>
						<li>Nidhivan<br></li>
						<li>Prem Mandir<br></li>
						<li>ISKCON Vrindavan<br></li>
						<li>Radha Raman Temple<br></li>
						<li>Sri Rangnath Ji Mandir<br></li>
						<li>Govind Devji Temple<br>
						<li>Gopeshwar Mahadev Temple<br></li>
						<li>Katyayani Peeth<br></li>
						<li>Keshi Ghat<br></li>
						</ul>
					</div>
			</p>
		</div>
	</section>
</div>

<div>
	<section>
		<div>
			<h1>6. Lucknow</h1><br><br><br>
		</div>
		<div>
			<img src="upimages/lk.jpg" class="lk"> <br><br><br>
		</div>
		<div>
			<p>
				The capital and the largest city of Uttar Pradesh, Lucknow welcomes you with a heart-warming note of ‘Muskuraiyein, kyunki aap Lucknow mein hai’ (Smile, for you, are in Lucknow). Situated on the banks of river Gomti, this city of Nawabs and Kebabs is renowned for its architecture, history, literature and culture. The people of Lucknow are known for their courtly manners and endearing ‘Pehle aap’ (you first) culture, which always leaves behind a smile on the faces of the visitors. Rumi Darwaza, the Mughal Gateway built in the centre of the capital divides the city into its old and new part. While Old Lucknow is well-known for its bustling vibrant streets, authentic mouth-watering kebab and biryani outlets, Lucknowi Chikan (a form of embroidery) market and wholesale jewellery stores, New Lucknow hosts people of varied cultures, is urban and one of the most Lucknow (/ˈlʌknaʊ/, Hindustani: [ˈləkʰnəuː] ⓘ Lakhnaū) is the capital and the largest city of the Indian state of Uttar Pradesh and it is the administrative headquarters of the eponymous district and division. Having a population of 2.8 million as per 2011 census, it is the eleventh most populous city and the twelfth-most populous urban agglomeration of India. Lucknow has always been a multicultural city that flourished as a North Indian cultural and artistic hub, and the seat of power of Nawabs in the 18th and 19th centuries.[8] It continues to be an important centre of governance, administration, education, commerce, aerospace, finance, pharmaceuticals, information technology, design, culture, tourism, music, and poetry.<br> <br>

				Lucknow, along with Agra and Varanasi, is in the Uttar Pradesh Heritage Arc, a chain of survey triangulations created by the Government of Uttar Pradesh to boost tourism in the state. Lucknow ranks 7th in the state in GDP per capita. The top two cities of the state are Noida and Meerut. <br> <br>
				Lucknow in recent times have lagged in growth and only ranks 7th in per capita income in the state of Uttar Pradesh, despite being the capital. Cities like Noida, Ghaziabad and Meerut have dominated in terms of industrial growth and attracting IT jobs and opportunities. Noida ranks highest, followed by Meerut in per capita income in the state.<br>

				Multiple software and IT companies are present in the city. Tata Consultancy Services, HCL Technologies are present in the city. IT companies are located in Gomtinagar.[59] While it still lags behind cities like Noida, Greater Noida and Meerut in IT hubs.[60] The city is also home to a number of important national and state level headquarters for companies including Sony Corporation and Reliance Retail.[61] The handicrafts sector accounts for 60 per cent of total exports from the state.<br>
				
				Companies such as Hindustan Aeronautics Limited, KARAM, Tata Marcopolo, Exide Industries, Tata Motors set up their plants in Lucknow. Lucknow is an emerging automobile hub. Tata Motors have a plant primarily for light commercial vehicles. It was set up in 1992 and has a production capacity of 640 vehicles per day.[63][64] Additionally there is a plant of Tata Marcopolo in the city.<br>
				
				<div class="box11">
					<img src="upimages/luck1.jpg" style="width: 100%;">
					<ul>
					<li>Best Time to Visit: October to March<br> <br></li>
					<li>Ideal Vacation Duration: 6 to 7 days<br> <br></li>
				<li>�Average Expense: ₹ 6,790 for 2 Nights/ 3 Days (Include Car, Hotel, Sightseeing, Meal)<br> <br></li>
				<li>�Places to Visit: Taj Mahal, Agra Fort, Fatehpur Sikri, Mehtab Bagh, etc.<br> <br></li>
				<li>�Things to Do: Explore the historical heritage and delicious cuisines.<br> <br></li>
				<li>�How to Reach: Via air, rail and road.<br> <br></li>
				</ul>
				</div>
				<div class="box12">
					<img src="upimages/luck2.jpg" style="width: 100%;">
					<h2>Most famous places</h2><br>
					<ul>
					<li>Bara Imambara. 1,534. Architectural Buildings.<br></li>
					<li>Hazratganj. 828. Historic Walking Areas. <br></li>
					<li>The Residency. 554. Speciality Museums. <br></li>
					<li>Janeshwar Mishra Park. 229. Parks. <br></li>
					<li>La Martiniere College. 201. Educational sites. <br></li>
					<li>Chowk. 360. Points of Interest & Landmarks. <br></li>
					<li>Chandrika Devi Temple. Religious Sites. <br></li>
					<li>Rumi Darwaza. 458.<br></li>
					</ul>
				</div>
			</p>
		</div>
	</section>
</div>

<div>
	<section>
		<div>
			<h1>7. Allahabad</h1>
		</div>
		<div>
			<img src="upimages/al.png" class="al"> <br><br><br>
		</div>
		<div>
			<p>
				Officially known as Prayagraj, Allahabad is famous for Triveni Sangam or the meeting points of three rivers - Ganga, Yamuna and Saraswati and therefore one of the important tourist spots to visit in Uttar Pradesh. Built on the site of the ancient town of Prayag, Allahabad has, since time immemorial, held the largest Hindu gathering on the banks of the Sangam - the Maha Kumbh Mela, which is held here every twelve years and is attended by millions of pilgrims from across the globe. Prayag or Prayagraj had been the ancient name of the city, however, after the Mughal invasion, Emperor Akbar, impressed by the location named the city ‘Ilahabas which meant ‘Abode of God’. Emperor Shah Jahan, his grandson, renamed the city to Allahabad. Other popular places to visit in Allahabad include the UNESCO World Heritage Site of the Allahabad Fort; Anand Bhavan – the ancestral home of the Nehrus; All Saints Cathedral;  Chandra Shekhar Azad Park; and Allahabad Museum among others.<br> <br>
				Prayagraj (ISO: Prayāgarāja; ormerly known as Allahabad or Ilahabad, )is a metropolis in the Indian state of Uttar Pradesh. It is the administrative headquarters of the Prayagraj district, the most populous district in the state and 13th most populous district in India and the Prayagraj division. The city is the judicial capital of Uttar Pradesh with the Allahabad High Court being the highest judicial body in the state. As of 2011, Prayagraj is the seventh most populous city in the state, thirteenth in Northern India and thirty-sixth in India, with an estimated population of 1.53 million in the city.[10][11] In 2011, it was ranked the world's 40th fastest-growing city.[12][13] The city, in 2016, was also ranked the third most liveable urban agglomeration in the state (after Noida and Lucknow) and sixteenth in the country.[14] Hindi is the most widely spoken language in the city. <br><br>
				Archaeology and inscriptions

				The Ashoka pillar at Prayagraj contains many inscriptions since the 3rd century BCE. Sometime about 1575 CE, Birbal of Akbar's era added an inscription that mentions the "Magh mela at Prayag Tirth Raj".[3][38]
				Inscription evidence from the famed Ashoka edicts containing Allahabad Pillar – also referred to as the Prayaga Bull pillar – adds to the confusion about the antiquity of this city.[39][40] Excavations have revealed Northern Black Polished Ware dating to 600–700 BCE.[34] According to Dilip Kumar Chakrabarti, "... there is nothing to suggest that modern Prayag (i e. modern Allahabad) was an ancient city. Yet it is inconceivable that one of the holiest places of Hinduism, Prayag or the confluence of the Ganga and Yamuna should be without a major ancient city." Chakrabarti suggests that the city of Jhusi, opposite the confluence, must have been the "ancient settlement of Prayag".[41] Archaeological surveys since the 1950s has revealed the presence of human settlements near the sangam since c. 800 BCE.[39][40]
				
				Along with Ashoka's Brahmi script inscription from the 3rd century BCE, the pillar has a Samudragupta inscription, as well as a Magha Mela inscription of Birbal of Akbar's era. It states,<br> <br>
				
				In the Samvat year 1632, Saka 1493, in Magha, the 5th of the waning moon, on Monday, Gangadas's son Maharaja Birbal made the auspicious pilgrimage to Tirth Raj Prayag. Saphal scripsit.<br> <br>
				– Translated by Alexander Cunningham (1879)[42]
				
				These dates correspond to about 1575 CE, and confirm the importance and the name Prayag.<br> <br> According to Cunningham, this pillar was brought to Allahabad from Kaushambi by a Muslim Sultan, and that in some later century before Akbar, the old city of Prayag had been deserted.[44] Other scholars, such as Krishnaswamy and Ghosh disagree.<br> <br> In a paper published in 1935, they state that the pillar was always at its current location based on the inscription dates on the pillar, lack of textual evidence for the move in records left by Muslim historians and the difficulty in moving the massive pillar.[45] Further, like Cunningham, they noted that many smaller inscriptions were added on the pillar over time. Quite many of these inscriptions include a date between 1319 CE and 1575 CE, and most of these refer to the month Magha. According to Krishnaswamy and Ghosh, these dates are likely related to the Magh Mela pilgrimage at Prayag, as recommended in the ancient Hindu texts. <br> <br>	


				<div class="box13">
					<img src="upimages/all1.jpg" style="width: 100%;">
					<h2>Timings</h2>
					<ul>
				�	<li>Best Time to Visit: October to February<br> <br></li>
				�	<li>Ideal Vacation Duration: 1 to 2 days<br> <br></li>
				�	<li>Average Expense: ₹ 9,100 for 2 Nights/ 3 Days (Include Car, Hotel, Sightseeing, Meal)<br> <br></li>
				�	<li>Places to Visit: Allahabad Pillar, Allahabad Museum, Allahabad Fort, etc.<br> <br></li>
				�	<li>Things to Do: Explore the historical heritage and visit temples and museums.<br> <br></li>
				�	<li>How to Reach: Via air, rail and road.<br> <br></li>
					</ul>
				</div>
				<div class="box14">
					<img src="upimages/all2.jpg" style="width: 100%;">
					<h2>Timings</h2>
					<ul>
				�	<li>Best Time to Visit: October to February<br> <br></li>
				�	<li>Ideal Vacation Duration: 1 to 2 days<br> <br></li>
				�	<li>Average Expense: ₹ 9,100 for 2 Nights/ 3 Days (Include Car, Hotel, Sightseeing, Meal)<br> <br></li>
				�	<li>Places to Visit: Allahabad Pillar, Allahabad Museum, Allahabad Fort, etc.<br> <br></li>
				�	<li>Things to Do: Explore the historical heritage and visit temples and museums.<br> <br></li>				�	<li>How to Reach: Via air, rail and road.<br> <br>
				</ul>
				</div>

			</p>
		</div>
	</section>
</div>

<div>
	<section>
		<div>
			<h1>8. Sarnath</h1>
		</div>
		<div>
			<img src="upimages/sar.jpg" class="sar"> <br><br><br>
		</div>
		<div>
			<p>
				Yet another holy tourist place in Uttar Pradesh, Sarnath is a quiet and spiritual city of historical marvel with numerous Buddhist stupas, museums, excavated ancient sites and beautiful temples… all adorned with a mystical and serene setting. One of the four holiest places to the Buddhists, Sarnath is just 10 km. from Varanasi and is often flocked with Buddhist, Jain and Hindu devotees, alike. It’s the place where Lord Buddha preached his first sermon. The attractions that contribute to the spiritual significance of Sarnath are Ashoka’s Pillar and Dharma Stupa built by Emperor Ashoka among many others. All of this makes Sarnath one of the must-visit places to see and experience in Uttar Pradesh.
				According to Buddhist tradition, Sarnath is where, circa 528 BCE, at 35 years of age, Gautama Buddha taught his first sermon after attaining enlightenment at Bodh Gaya. It is also traditionally considered as the place where the Buddhist sangha first came into existence as a result of the enlightenment of his first five disciples (Kaundinya, Assaji, Bhaddiya, Vappa and Mahanama).

				According to the Mahaparinibbana Sutta (Sutta 16 of the Digha Nikaya), the Buddha mentioned Sarnath as one of the four places of pilgrimage his devout followers should visit and look upon with feelings of reverence. The other three sites are Lumbini (the traditional birthplace of the Buddha), Bodh Gaya (where Buddhists say the Buddha achieved enlightenment), and Kushinagar (where Buddhists say the Buddha attained parinirvana).<br> <br>

				The name Sarnath derives from the Sanskrit word Sāranganātha (or Sārangnāth in the Pali language),[1] which translates to "Lord of the Deer" in the English language.[6] The name refers to an ancient Buddhist legend, in which the Bodhisattva was a deer and offered his life to a king instead of the doe the king was planning to kill. <br> <br>

				The king was so moved that he created the park as a deer sanctuary. The term for "deer park" is Mriga-dāva in Sanskrit, or Miga-dāya in the Pali language. <br> <br>

				Isipatana is another name used to refer to Sarnath in Pali, the language of the Pali Canon. This name corresponds to the name Rishipattana in the Sanskrit language. The terms isi (Pali) and rishi (Sanskrit) refer to an accomplished and enlightened person. Isipatana and Rishipattana therefore translate to "the place where holy men descended",[9] or "the hill of the fallen sages". <br> <br>
				<div class="box15">
					<img src="upimages/sar1.jpg" style="width: 100%;">
					<h2>Timings</h2>
					<ul>
					<li>Best Time to Visit: October to February<br> <br></li>
				<li>�	Ideal Vacation Duration: 1 to 2 days<br> <br></li>
				<li>�	Average Expense: ₹ 5,700 approx. for 1 Nights/ 2 Days (Include Car, Hotel, Sightseeing, Meal)<br> <br></li>
				<li>�	Places to Visit: Ashoka Pillar, Thai Temple, Dhamek Stupa, etc.<br> <br></li>
				�<li>	Things to Do: Explore the historical heritage and visit temples and museums.<br> <br></li>
				<li>�	How to Reach: Via air, rail and road.<br> <br></li>
				</ul>
				</div>

				<div class="box16">
					<img src="upimages/sar2.jpg" style="width: 100%;">
					<h2>Top Places To Visit</h2>
					<ul>
					<li>Dhamek Stupa. Top Attraction. 0 km.<br><br></li>
					<li>Sarnath Archaeological Site. Top Attraction.<br><br></li>
					<li>The Mahabodhi Society Temple. Top Attraction. <br><br></li>
					<li>Chaukhandi Stupa. <br><br></li>
					<li>Ashoka Pillar, Sarnath. <br> <b></b></li>
					<li>Thai Temple.<br><br></li>
					<li>Tibetan Temple, Sarnath.<br><br></li>
					<li>Archaeological Museum, Sarnath.<br><br></li>
					</ul>
					</div>
			</p>
		</div>
	</section>
</div>


<div>
	<section>
		<div>
			<h1>9. Ayodhya</h1>
		</div>
		<div>
			<img src="upimages/ayo.jpg" class="ay"><br><b><br>
		</div>
		<div>
			<p>
				Yet another very famous place in Uttar Pradesh, Ayodhya has been in limelight since many years now and very recently for the grand Bhoomi Poojan of the Ram Mandir that is to constructed here. The birthplace of Lord Rama, Ayodhya is located on the banks of river Sarayu in Uttar Pradesh and is one of the seven sacred cities for Hindus. Ayodhya is also the birthplace of four of Jainism’s 24 Tithankaras thus making it one of the most important tourist destinations in Uttar Pradesh for Jains too. The religious town is adorned with many serene ghats by the banks of the holy Sarayu river. Despite the controversy, Ayodhya has so much colour and spirituality to see and experience for its tourists and continues to be a significant pilgrim centre.<br> <br> <br>
				Ayodhya was historically known as Saketa. The early Buddhist and Jain canonical texts mention that the religious leaders Gautama Buddha and Mahavira visited and lived in the city. The Jain texts also describe it as the birthplace of five tirthankaras namely, Rishabhanatha, Ajitanatha, Abhinandananatha, Sumatinatha and Anantanatha, and associate it with the legendary Bharata Chakravarti. From the Gupta period onwards, several sources mention Ayodhya and Saketa as the name of the same city.<br> <br> <br>

				he legendary city of Ayodhya, popularly identified as the present-day Ayodhya, is identified in the epic Ramayana and its many versions as the birthplace of the Hindu deity Rama of Kosala and is hence regarded as the first of the seven most important pilgrimage sites for Hindus. The Ayodhya dispute was centered on the Babri mosque, built 1528–29 under the Mughal emperor Babur and said to have replaced a temple that stood at the birth spot of Rama In 1992 a Hindu mob demolished the mosque, provoking riots throughout the country. In 2019 the Supreme Court of India ruled that the land belonged to the government per tax records, and ordered it to be handed over to a trust to build a Hindu temple. It also ordered the government to give an alternative 2.0 hectares (5 acres) of land to the Uttar Pradesh Sunni Central Waqf Board to build another mosque, the land for which was acquired by the Government in Dhannipur in Ayodhya district and handed over to the Board. The construction of Ram Mandir commenced in August 2020 and the temple was consecrated with the deity of Balak Ram on 22 January 2024.<br> <br> <br>
				<div class="box17">
					<img src="upimages/ayo1.jpg" style="width: 100%;">
					<h2>Timings</h2>
					Best Time to Visit: October to March<br> <br> 
					Ideal Vacation Duration: 1 to 2 days<br> <br> 
					Average Expense: ₹ 4,000 for 1 Nights/ 2 Days (Include Car, Hotel, Sightseeing, Meal) <br> <br>
					Places to Visit: Ram Janmabhoomi, Gulab Bari, Nageshwarnath Temple, Hanuman Garhi, 			
					Ayodhya, Kanak Bhawan etc.<br> <br>
					Things to Do: Explore temples and delicious street foods.<br> <br> 
					How to Reach: Via air, rail and road.<br> <br> 
			</div>
			<div class="box18">
				<img src="upimages/ayo2.jpg" style="width: 100%;">
				<h2>Top Places To Visit</h2>
				Shri Ram Janma Bhoomi. 146. Points of Interest & Landmarks.<br> <br> 
				Hanuman Garhi Mandir. <br> <br> 
				Kanak Bhavan Temple. Religious Sites. <br> <br> 
				Nageshwarnath Temple. Religious Sites. <br> <br> 
				Sri Maniram das Chavani. Points of Interest & Landmarks. <br> <br> 
				Sita Ki Rasoi. Historic Sites. <br> <br> 
				Raja Mandir. Religious Sites. <br> <br> 
				Swarg Dwar. Religious Sites.<br> <br> 
			</div>


			</p>
		</div>
	</section>
</div>


<div>
	<section>
		<div>
			<h1>10. Jhansi</h1>
		</div>
		<div>
			<img src="upimages/jh.jpg" class="jh"> <br><br><br>
		</div>
		<div>
			<p>
				Popular as a place where Jhansi Ki Rani – Rani Laxmibai lived and reigned, Jhansi is located on the banks of the Betwa and Pahunch rivers, at the very south in the Bundelkhand region. Jhansi gets its name from the Jhansi Fort built by Raja Bir Singh Deo and was named so since the rulers could only see a shadow atop a distant hill when gazing at the fort. Jhansi was originally known as Balwantnagar, which was a walled city built around a fort. The interesting and glorious history of the city along with the variety of monuments and other essential landmarks make Jhansi one of the significant tourist destinations in Uttar Pradesh.<br> <br> <br>
				Jhansi is well connected to all other major towns in Uttar Pradesh by road and railway networks. The National Highways Development Project has supported development of the city. Jhansi is also being developed as the defense corridor by the NDA government which will boost the economy of the city and the region at the same time. The Srinagar to Kanyakumari north–south corridor passes closely to Jhansi, as does the east–west corridor; consequently there has been a sudden rush of infrastructure and real estate development in the city. Jhansi was adjudged the third cleanest city of Uttar Pradesh and the fastest moving city in the North Zone in Swachh Survekshan 2018 rankings. The development of a greenfield airport has been planned in the city.On 28 August 2011, Jhansi was selected among 98 cities for smart city initiative by the Government of India.<br> <br> <br>
				<div class="box19">
					<h2>Timings</h2>
					<img src="upimages/jha1.jpg" style="width: 100%;">
					Best Time to Visit: October to March<br> <br> 
					Ideal Vacation Duration: 1 to 2 days<br> <br> 
					Average Expense: ₹ 1,500 approx. for a round trip (Include Car, Sightseeing, Meal)<br> <br> 
					Places to Visit: Rani Mahal, Jhansi Fort, Orchha Fort Complex, etc.<br> <br>
					Things to Do: Explore temples and historical sites.<br> <br> 
					How to Reach: Via air, rail and road.<br> <br> 
				</div>
				<div class="box20">
					<h2>Top places to visit</h2>
					<img src="upimages/jha2.jpg" style="width: 100%;">
					hansi Fort. 241. Historic Sites. <br> <br> 
					St Jude's Shrine. Religious Sites. By macedonboy. <br> <br> 
					Shri Ganesh Temple. Religious Sites. <br> <br> 
					Government Museum Jhansi. Speciality Museums. <br> <br> 
					Parichha Dam. Dams. <br> <br> 
					Jhansi Herbal Garden. Nature & Wildlife Areas.<br> <br>  
					Maharaja Gangadhar Rao ki Chatri. Historic Sites. <br> <br> 
					Rani Lakshmi Bai Par. Parks.	<br> <br> 
				</div>

			</p>
		</div>
	</section>
</div>



<div>
	<section>
		<div>
			<h1>11. Kushinagar</h1>
		</div>
		<div>
			<img src="upimages/ku.jpg" class="ku"> <br><br><br>
		</div>
		<div>
			<p>
				One of the four holy sites of Buddhism and one of the most famous tourist places in Uttar Pradesh, Kushinagar is located in the north-eastern region of the state, near Gorakhpur. Kushinagar is named after ‘Kush’ grass, due to its plentifulness in the region. The religious town is believed to be the place where Lord Gautam Buddha attained Mahaparinirvana. Kushinagar is therefore rightly an international tourist destination, especially among the followers of Buddhism. Kushinagar’s one main road is lined with temples run by Buddhist nations, where you can stay, contemplate or simply chat with the monks. Through its principal ruins, Kushinagar offers a view of fascinating ancient architectural expertise through the structures of strategically built monasteries and life-like sculptures of deities. Every year, on the occasion of Buddha Purnima, a grand fair is organised here which is thronged by the locals and pilgrims from far and wide.<br> <br> <br>

				When the Buddha reached his eightieth year, he felt that his time in this world was approaching an end. At that time, according to the Mahāparinibbāṇa Sutta (Sutta 16 of the Dīgha Nikāya), he and some of his disciples undertook a months-long journey that would take them from Rājagṛha, through Pāṭaliputta, Vesāli, Bhoganagara, and Pāvā, to their final destination at Kushinagar.[6] It was at Pāvā that Cunda, a resident of Pāvā, invited the group to a meal that featured a food called sukaramaddava. This would prove to be the Buddha's last meal, as he was afflicted by a painful illness resembling dysentery soon after consuming the meal.[7] After the meal, the Buddha crossed the Kakkuttha River (now called the Khanua River) and completed his journey to Kushinagar.<br> <br> <br>
				<div class="box21">
					<h2>Timings</h2>
					<img src="upimages/kus1.jpg" style="width: 100%;">
					Best Time to Visit: November to February<br> <br> 
					Ideal Vacation Duration: 2 to 3 days<br> <br> 
					Average Expense: ₹ 13,500 for 3 Nights/ 4 Days (Include Car, Hotel, Sightseeing, Meal)<br> <br> 
					Places to Visit: Meditation Park, Nirvana Temple, Wat Thai Temple, Ramabhar Stupa, etc.<br> <br> 
					Things to Do: Explore temples.<br> <br> 
					How to Reach: Via air, rail and road.<br> <br> 
				</div>
				<div class="box22">
					<h2>Places To Visit</h2>
					<img src="upimages/kus2.jpg" style="width: 100%;">
					Chinese Temple.<br> <br> 
					Mahaparinirvana Temple.<br> <br> 
					Matha Kuar Shrine.<br> <br> 
					Ramabhar Stupa.<br> <br> 
					Nirvana Stupa.<br> <br> 
					Japanese Temple.<br> <br> 
					Buddhist Temple.<br> <br> 
					Wat Thai Temple<br> <br> 
				</div>



			</p>
		</div>
	</section>
</div>


<div>
	<section>
		<div>
			<h1>12. Dudhwa National Park</h1>
		</div>
		<div>
			<img src="upimages/du.jpg" class="du"><br><br><br>
		</div>
		<div>
			<p>
				Uttar Pradesh is such a diverse state that it offers something to everyone. Be it for history buffs, spiritual seekers, culture vultures and even for nature and wildlife enthusiasts. One of such important places to visit in Uttar Pradesh is Dudhwa National Park. Nestled in the Lakhimpur-Kheri District of the state on Indo-Nepal border, Dudhwa National Park is all about wildlife, nature and diversity. Home to a plethora of rare and endangered species including Hispid hare, Swamp deer, Bengal  Florican, Leopard and Barasingha, along with 400 varied species of exotic and migratory birds, this national park is mainly known for being one of the finest tiger reserves in India. The many options of exploring the wilderness and diversity of the place include safaris arranged by the park, hiring jeeps or minibuses from outside and even an elephant ride.
				So, these were the 12 tourist places in Uttar Pradesh that you must visit. And mind you, this isn’t an exhaustive list. <br> <br> <br>
				The Kishanpur Sanctuary lies in the Lakhimpur- Kheri and Shahajahanpur districts in Uttar Pradesh.Spreading across an expanse of 811 sq km beholding the nature lovers with marshes, grasslands and dense forests, the area is actually meant for tremendous counts of Swamp Deer and Tigers species. The area of the Park is composed of a vast alluvial plain along the tributaries of Mohana and Suheli, interspersed with numerous rivulets, lakes and pools.
<br> <br> <br>
				The rich and extremely fertile Indo-Gangetic plains support a flamboyant growth of forests diversity of fauna. The park has some of the best forests of 'Sal' tree in the world, amongst other flora; and is a virtual unexplored paradise for nature lovers, wildlife enthusiasts and bird watchers.<br> <br> <br>

				Dudhwa attracts the visitors with its two core area as Dudhwa National Park and Kishanpur Wildlife Sanctuary which are separated by each other with an area of 15 kms agricultural land. Unlike other celebrity parks of India like Corbett, Kaziranga, Bandhavgarh etc, the uncommercialized ambience of this park makes it an ideal habitat for the wild creatures to find nature's serenity & comfortability in a more natural way.<br> <br> <br>
				<div class="box23">
				<h2>Best Time To Visit</h2><br> 
				<img src="upimages/dud1.jpg" style="width: 100%;">
				The best time to Jeep safari in Dudhwa National Park is between November and June. The park remains open to the public from 15th November to 15th June, though May and June are a little too hot for comfort. While visiting the Park during winter you must remember to take woolen clothes as it can get pretty chilly, particularly between December to February. 15th November to 15th June is the best time to visit Dudhwa National Park. The park is open for a fixed number of months in a year i.e. from 15th November-15th June and the safari timings for the National Park are from 6:00 AM to 09:30 AM and 3:00 PM to 6:00 PM. Dudhwa follows the typical north Indian weather pattern with an extreme kind of climate. The summers from March to June are quite hot with the temperature rising up to 40 degrees Celcius. During winters (mid-October-mid March), the weather is cool and pleasant hovering between 20-30 degrees Celcius. Do carry woolens for the winter season. While the monsoon months are off-limits as the park is shut during this time of the year.   <br> <br> <br>
				</div>

				<div class="box24">
					<h2>Notice</h2>
					<img src="upimages/dud2.jpg" style="width: 100%;">
					Dudhwa National Park is a stronghold of the barasingha. Around half of the world's barasinghas are present in Dudhwa National Park. Smaller than the sambar deer, the barasinghas have 12 antlers that collectively measure up to 100 cm (39 in). One can spot herd of these rare animals passing through open grasslands.
				</div>




			</p>
		</div>
	</section>
</div>


<div>
	<section>
		<div>
			<h1>13. Firozabad</h1>
		</div>
		<div>
			<img src="upimages/f.jpg" class="f">
		</div>
		<div>
			<p>
				Firozabad is located 40 kilometres from Agra and is one of the favourite places for tourists. Additionally, the Yamuna River forms the Deccan plateau's southern border, attracting tourists from all over the country.<br> <br>
				Above all, Firozabad has a rich historical background as it was a part of the mighty Mughal Empire as well as other powerful historical leaders. Here, you can visit ancient tombs, towering temples, mosques and lively open markets, which comprise the city’s vibrant community.<br> <br>
				Firozabad is a city and district headquarters of Uttar Pradesh. This city is famous for the construction of bangles. It is located 40 kilometers from Agra and 250 km from the capital city on the east side. Uttar Pradesh’s capital Lucknow is about 250 km east from here. Two towns come under Tundla and Shikohabad under Firozabad district. Tundla is located in the west and east of Shikohabad city. Firozabad is mainly traded in bangles. Here you can see the colorful bangles around you. But now the gas business is over here. Here other glassware (like glass chandeliers) are also made. The population here is very dense. Most of the people here are connected to the Business. In the houses, women also earn employment by putting shoe and shoe on the bangles. Firozabad was known in ancient times as Chandrawarnagar.View More..<br> <br>
				<div class="box26">
				<h3>AT A GLANCE</h3><br>
				<img src="upimages/fir2.jpg" style="width: 100%;">
				Area: 2362 Sq. Km.<br>
				Population: 24,98,156<br>
				Language: Hindi<br>
				Male: 13,32,046<br>
				Female: 11,66,110<br>
				Lok Sabha: 1<br>
				Vidhan Sabha: 5<br>
				Tehsil: 5<br>
				Block: 9<br>
				Local Body: 7<br>
				Gram Panchayat: 564<br>
				Village: 806<br>
			</div>
				<div class="box25">
					<h2>Timings</h2>
					<img src="upimages/fir1.jpg" style="width: 100%;">
					Best Time to Visit: October to March<br> <br>
					Ideal Vacation Duration: 1 to 2 days<br> <br>
					Average Expense: ₹ 11,200 approx. for 5 Nights/ 6 Days (Include Car, Hotel, Sightseeing, Meal)<br> <br>
					Places to Visit: Marsalganj Jain Temple, Kotla Fort, Kalan Mosque, etc.<br> <br>
					Things to Do: Explore temples and other historical monuments.<br> <br>
					How to Reach: Via air, rail and road.<br> <br>
			</div>
			</p>
		</div>
	</section>
</div>
<h2 class="glow">THANK YOU</h2>
</section>



</div>
</body>
</html>