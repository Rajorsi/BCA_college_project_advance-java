package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import bean.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/resetpassword2")
public class ResetPasswordServlet2 extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		HttpSession httpSession = req.getSession();
		String user_email = (String) httpSession.getAttribute("user_email");
		
		String user_password = req.getParameter("user_password");
		String cpassword = req.getParameter("cpassword");
		
		if(user_password.equals(cpassword))
		{
			User ad = new User();
		    ad.setUser_email(user_email);
		    ad.setUser_password(user_password);
		    System.out.println(user_email);
		    
		    int res;
			try {
				res = ad.updatePassword();
				if(res == 1)
			    {
			    	out.print("Password Updated");
			    }
				else
				{
					out.print("Password Not Updated");
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
		    
		}
		else
		{
			out.print("Password Not Matched");
		}
		
	}
}
