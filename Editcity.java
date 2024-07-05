package servlet;
import java.io.IOException;
import java.io.*;
import java.io.PrintWriter;
import java.sql.SQLException;

import bean.City;
import bean.state;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@MultipartConfig(fileSizeThreshold=1024*1024*1, //1mb
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*100)
@WebServlet(urlPatterns = "/updatecity")
//make it controller to control the request from user
public class Editcity extends HttpServlet{
	
	
		
		
		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			PrintWriter out= resp.getWriter();
			
		int city_id=Integer.parseInt(req.getParameter("city_id"));
		int state_id=Integer.parseInt(req.getParameter("state_id"));
		Part filePart = req.getPart("city_image");
		String city_image=filePart.getSubmittedFileName();
		String city_name=req.getParameter("city_name");
		
		for(Part part: req.getParts()) 
		{
			part.write("D:\\EG_JAVA\\AdminPanel\\src\\main\\webapp\\cityImage\\"+city_image);
		}

		
		 City s3=new City(city_id, state_id, city_image,  city_name);
		//pc.setStd_id(std_id);
		RequestDispatcher rd= req.getRequestDispatcher("citylist.jsp");
		
		int k;
		

		
	try {
		 k=s3.updatecity();
		if(k==1) {
			req.setAttribute("message","update  succssfully");
		}
		else {
			req.setAttribute("message","update error ");
		}
		rd.forward(req, resp);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

		}


	}