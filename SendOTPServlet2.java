package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Random;
import bean.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/sendotp2")
public class SendOTPServlet2 extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out = resp.getWriter();
		
		String user_email = req.getParameter("user_email");
		System.out.println("User_email: "+user_email);
		User ad = new User();
	    ad.setUser_email(user_email);
	    
	    User details;
		try 
		{
			details = ad.checkUserEmail();
			
			if(details!=null)
		    {
				
				Random rnd = new Random();
			    int number = rnd.nextInt(999999);
			    
			    String otp = String.format("%06d", number);
			    
			    System.out.println("OTP: "+otp);
			    
			    HttpSession session = req.getSession();
			    session.setAttribute("User_email", user_email);
			    session.setAttribute("otp", otp);
			    
			    
			    ad.setUser_email(user_email);
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
