package servlet;
import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.sql.SQLException;

import com.oreilly.servlet.MultipartRequest;

import bean.City;
import bean.state;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@WebServlet(urlPatterns="/uploadcity")
@MultipartConfig(fileSizeThreshold=1024*1024*1, //1mb
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*100)

public class Addcity extends HttpServlet{
	
	

	private static final long serialVersionUID = 1L;

	protected  void doPost(HttpServletRequest rq, HttpServletResponse rs) throws  IOException, ServletException{
		String typeofuser=rq.getParameter("typeofuser");
		String status="";
		if(typeofuser.equals("admin")) 
		{
			 status="accepted";
		}
		else {
			status="pending";
		}
		String city_name=rq.getParameter("city_name");
		Part filepart=rq.getPart("city_image");
		String city_image=filepart.getSubmittedFileName();
	int state_id=Integer.parseInt(rq.getParameter("state_id"));
	
	for(Part part: rq.getParts()) {
		part.write("D:\\EG_JAVA\\AdminPanel\\src\\main\\webapp\\cityImage\\"+city_image);
	}
	 City c=new  City(state_id,city_image,city_name);
	 c.setStatus(status);
	 try {
		 int resp=c.addcity();
		 RequestDispatcher rd=rq.getRequestDispatcher("addcity.jsp");
		
		if(resp==1) {
			rq.setAttribute("message"," uploaded successfully");
		}
		else {
			rq.setAttribute("message"," not uploaded ");
		}
		rd.forward(rq, rs);

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	



		
		
	}