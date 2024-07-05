package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/verifyotp2")
public class VerifyOTPServlet2 extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userotp = req.getParameter("userotp");
		
		HttpSession httpSession = req.getSession();
		String otp = (String)  httpSession.getAttribute("otp");
		
		PrintWriter out = resp.getWriter();
		
		if(otp.equals(userotp))
		{
			out.print("matched");
		}
		else
		{
			out.print("not matched");
		}
	}
}
