package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import bean.City;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/deleteC")
public class Deletecity extends HttpServlet
{
	
				
		private static final long serialVersionUID = 1L;
	
		protected void doGet(HttpServletRequest rq, HttpServletResponse resp) throws ServletException, IOException {
			
			
		int city_id = Integer.parseInt(rq.getParameter("city_id") );
		
		
		City s1=new City();
		
		int k;
		
		s1.setCity_id(city_id);
		
	
		//RequestDispatcher rd= rq.getRequestDispatcher("addcity.jsp");
		PrintWriter out= resp.getWriter();
		 
		try 
		{
		 k=s1.Deletecity();
		if(k==1) 
		{
			out.println("City deleted Successfully.");
			//rq.setAttribute("message"," city deleted succssfully");
		}
		else 
		{
			out.println("City not deleted Successfully.");
			//rq.setAttribute("message"," city not deleted");
		}
		//rd.forward(rq, resp);
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
}


}