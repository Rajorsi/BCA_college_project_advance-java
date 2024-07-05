package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import bean.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/resetpassword")
public class ResetPasswordServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		HttpSession httpSession = req.getSession();
		String email = (String) httpSession.getAttribute("email");
		
		String password = req.getParameter("password");
		String cpassword = req.getParameter("cpassword");
		System.out.println(email);
		if(password.equals(cpassword))
		{
			Admin ad = new Admin();
		    ad.setEmail(email);
		    ad.setPassword(password);
		    
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
