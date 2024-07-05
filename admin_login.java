package servlet;

import java.io.IOException;
import java.sql.SQLException;

import bean.Admin;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/Adminlogin")
public class admin_login extends HttpServlet
{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest rq, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=rq.getParameter("email");
		String password=rq.getParameter("password");
	
		Admin u=new Admin();
		u.setEmail(email);
		u.setPassword(password);
		
		 try {
			 Admin response = u.adminlogin();
			 
			if(response == null ) 
			{
				RequestDispatcher rd=rq.getRequestDispatcher("adminLogin.jsp");
				rq.setAttribute("message","Invalid Email or Password, Try Again...!!!");
				rd.forward(rq, resp);
			}
			else 
			{
				HttpSession session = rq.getSession();
				session.setAttribute("email", email);
				session.setAttribute("name", response.getName());
				
				RequestDispatcher rd=rq.getRequestDispatcher("adminpanel.jsp");
				rd.forward(rq, resp);
			}
		} 
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
	}
}
