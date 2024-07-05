package servlet;
import bean.contactus;
import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns="/uploadcommand")
public class contact  extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String message=req.getParameter("message");
		contactus ob=new  contactus(name,email,message);
	try 
	{
		int r=ob.adddata();
		 RequestDispatcher rd=req.getRequestDispatcher("contactUs.jsp");
			
			if(r==1) {
				req.setAttribute("message","  successfully");
			}
			else {
				req.setAttribute("message"," not successfully ");
			}
			rd.forward(req, resp);

	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	}

}