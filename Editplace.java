package servlet;
import java.io.IOException;
import java.io.*;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.oreilly.servlet.*;

import bean.City;
import bean.place;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@MultipartConfig(fileSizeThreshold=1024*1024*1, //1mb
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*100)
@WebServlet(urlPatterns = "/updateplace")
public class Editplace  extends HttpServlet
{
	
	
	//make it controller to control the request from user
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			PrintWriter out= resp.getWriter();
			
			String place_image = "";
			for(Part part: req.getParts()) 
			{
				//place_image = extractFileName(part);
				part.write("D:\\EG_JAVA\\AdminPanel\\src\\main\\webapp\\places\\"+place_image);
			}
			
		
		int city_id=Integer.parseInt(req.getParameter("city_id"));
		int place_id=Integer.parseInt(req.getParameter("place_id"));
		int state_id=Integer.parseInt(req.getParameter("state_id"));
		
		String place_name=req.getParameter("place_name");
		
		String place_description=req.getParameter("place_description");
		
		 place s3=new place(city_id, state_id, place_id, place_image,  place_name, place_description);
		//pc.setStd_id(std_id);
		RequestDispatcher rd= req.getRequestDispatcher("placelist.jsp");
		
		int k;
		try {
		 k=s3.updateplace();
			if(k==1) {
				req.setAttribute("message","update  succssfully");
			}
			else 
			{
				req.setAttribute("message","update error:-( ");
			}
			rd.forward(req, resp);
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		}

		/*// Method to extract filename from part
		private String extractFileName(Part part)
	    {
		    String contentDisp = part.getHeader("content-disposition");
		    String[] tokens = contentDisp.split(";");
		    for (String token : tokens) {
		        if (token.trim().startsWith("place_image")) {
		            return token.substring(token.indexOf('=') + 1).trim().replace("\"", "");
		        }
		    }
		    return ""; // No filename found
		}*/
	}