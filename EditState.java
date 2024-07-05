package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import bean.state;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@WebServlet(urlPatterns= "/editstate")
@MultipartConfig(fileSizeThreshold=1024*1024*1, //1mb
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*100)
public class EditState extends HttpServlet
{
private static final long serialVersionUID = 1L;

@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException , IOException
	{
	PrintWriter out = resp.getWriter();
	
	
	String state_name = req.getParameter("state_name");
	//String state_image = req.getParameter("state_image");
	
	Part filepart=req.getPart("state_image");
	String state_image=filepart.getSubmittedFileName();


	for(Part part: req.getParts()) 
	{
		part.write("D:\\EG_JAVA\\AdminPanel\\src\\main\\webapp\\image\\" +state_image);
	}
	int state_id = Integer.parseInt(req.getParameter("state_id"));
	
	state st= new state(state_image,state_name);
	st.setState_id(state_id);
	
	RequestDispatcher rd = req.getRequestDispatcher("Statelist.jsp");
	
	
	try
	{
		int response = st.updatestate();
		if(response == 1)
		{
			//out.println("State Updated Successfully");
			req.setAttribute("message","State Updated Successfully");
		}
		else
		{
			//out.println("State Is Not Updated ");
			req.setAttribute("message","State Is Not Updated ");
		}
		rd.forward(req, resp);
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	}
}
