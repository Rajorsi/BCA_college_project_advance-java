package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Random;
import bean.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/sendotp")
public class SendOTPServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		String email = req.getParameter("email");
		System.out.println("Email: "+email);
		Admin ad = new Admin();
	    ad.setEmail(email);
	    
	    Admin details;
		try 
		{
			details = ad.checkAdminEmail();
			
			if(details!=null)
		    {
				
				Random rnd = new Random();
			    int number = rnd.nextInt(999999);
			    
			    String otp = String.format("%06d", number);
			    
			    System.out.println("OTP: "+otp);
			    
			    HttpSession session = req.getSession();
			    session.setAttribute("email", email);
			    session.setAttribute("otp", otp);
			    
			    
			    ad.setEmail(email);
			    ad.setOtp(otp);
			    
			    boolean res = ad.sendOTPForPassword();
			    
			    System.out.println("Mail Response: "+res);
			    
			    if(res)
			    {
			    	out.print("OTP Sent Successfully");
			    }
			    else
			    {
			    	out.print("OTP Not send, Try Again");
			    }
		    }
			else
			{
				System.out.println("details null");
				out.print("Email not valid, Try Again");
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
