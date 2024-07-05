<%@page import="bean.City"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.place"%>
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
		.m
		{
			padding: 20px;
			margin-left: 10px;
            overflow-y: hidden;
  			overflow-x: hidden;
  			background-color: black;
		}

		.box13
		{
			background-color: transparent;
			position: relative;
			left: 50px;
			top: 200px;
			width: 350px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 18px;
			box-shadow:5px 5px 5px rgb(241, 7, 241);
		}

		.box14
		{
			background-color: transparent;
			position: relative;
			left: 600px;
			bottom: 245px;
			height: 450px;
			width: 350px;
			
			text-align: left;
			color: white;
			font-weight: bold;
			font-size: 18px;
			box-shadow: 5px 5px 5px rgb(241, 7, 241);
			
		}

		.box13:hover 
		{
			background-color:  black;
			transition: 0.9s;
		}
		.box14:hover 
		{
			background-color:  black;
			transition: 0.9s;
		}
		
		.line
		{
			font-size: 24px;
			
			color: whitesmoke;
			font-family: cursive;
			margin-left: 25px;
		}
		section
		{
			
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-size: 100%;
		
			
		}
		h1
		{
			font-family: Arial, Helvetica, sans-serif;
			
			color: bisque;
		}
		p
		{
			font-family: Arial, Helvetica, sans-serif;
			font-weight: bold;
			color: azure;
			margin-left: 50px;
			margin-right: 50px;
			text-align: justify;
		}


        .ani {
            font-size: 45px;
            font-weight: bold;
            color: black;
            text-shadow: 5px 5px 10px goldenrod;
            padding-bottom: 0px;
            animation: infinite;
			
        }
		
		.dar
		{
		margin-left: 100px;
		width: 70%;
		}



	</style>
</head>
<body>

<%
	int stateid = Integer.parseInt(request.getParameter("stateid"));
	int cityid = Integer.parseInt(request.getParameter("cityid"));
	
	City ct = new City();
	ct.setCity_id(cityid);
	
	City cdetails =ct.byid();
	
	//out.println(stateid+" : "+cityid);
	place pl = new place();
	pl.setState_id(stateid);
	pl.setCity_id(cityid);
	
	ArrayList<place> allplaces = pl.showallplaceById();
	
	
	
%>

<section>
<div class="main">

        <marquee class="marq"  
                 direction="left" loop="6">
            <div class="ani">
                WELCOME TO <%=cdetails.getCity_name() %>
            </div>
           
        </marquee>
    </div>
<div class="m">
	

		<%
			if(allplaces.size() > 0)
			{
				int i = 1;
				for(place p : allplaces)
				{
					%>
					<section>
						<div>
							<h1>
								<%=i %>. <%=p.getPlace_name() %>
							</h1>
						</div>
						<div>
							<img src="<%=p.getPlace_image() %>" class="dar">
						</div>
						<div>
							<p>
								<%=p.getPlace_description() %>
							</p>
						</div>
					</section>
					<%
					i++;
				}
			}
			else
			{
				%>
					<h1>My Team are working on this city. You can also add Places. </h1>
				<%
			}
		%>

		

	

	
</div>
</body>
</html>