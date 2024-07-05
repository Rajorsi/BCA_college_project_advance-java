package servlet;

import java.awt.Taskbar.State;
import java.io.IOException;
import java.io.PrintWriter;

import bean.state;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/deleteSt")
public class Deletestate extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
	
	PrintWriter out = resp.getWriter();
	
	int state_id = Integer.parseInt(req.getParameter("state_id"));
	
	state st=new state();
	st.setState_id(state_id);
	
	//RequestDispatcher rd = req.getRequestDispatcher("addstate.jsp");
	
	try
	{
		int response = st.Deletestate();
		if(response == 1)
		{
			out.println("State Deleted Successfully");
			//req.setAttribute("message","State Deleted Successfully");
		}
		else
		{
			out.println("Something went wrong:-(");
			//req.setAttribute("message","Something went wrong:-(");
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	}

}
