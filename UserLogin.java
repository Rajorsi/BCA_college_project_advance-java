package servlet;

import java.io.IOException;
import java.sql.SQLException;

import bean.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/userlogin")
public class UserLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest rq, HttpServletResponse resp) throws ServletException, IOException {
		
		String user_name=rq.getParameter("user_name");
		String user_email=rq.getParameter("user_email");
		String user_password=rq.getParameter("user_password");
	

		User u=new User();
		u.setUser_name(user_name);
		u.setUser_email(user_email);
		u.setUser_password(user_password);
		
		 try {
			 User response = u.login();
			 
			
			if(response == null ) {
				RequestDispatcher rd=rq.getRequestDispatcher("login.jsp");
				rq.setAttribute("message","Invalid Email or Password, Try Again...!!!");
				rd.forward(rq, resp);
			}
			else {
				HttpSession session = rq.getSession();
				session.setAttribute("user_email", user_email);
				session.setAttribute("user_name", response.getUser_name());
				
				RequestDispatcher rd=rq.getRequestDispatcher("userpanel.jsp");
				rd.forward(rq, resp);
			}
			
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
