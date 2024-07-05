package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import bean.place;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/deleteplace")
public class Deleteplace  extends HttpServlet{
	
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest rq, HttpServletResponse resp) throws ServletException, IOException {
			
		 
			
		int place_id = Integer.parseInt(rq.getParameter("place_id") );
		
		
		place p1=new place();
		p1.setPlace_id(place_id);
		
		PrintWriter out= resp.getWriter();
		//RequestDispatcher rd= rq.getRequestDispatcher("placelist.jsp");
	try 
	{
		int response=p1.Deleteplace();
		if(response==1)
		{
			out.println("place deleted successfully");
			//rq.setAttribute("message"," place deleted succssfully");
		}
		else 
		{
			out.println("place not deleted successfully");
			//rq.setAttribute("message"," place not deleted");
		}
		//rd.forward(rq, resp);
	} catch (SQLException e) {
		
		e.printStackTrace();
	}

		}


	}