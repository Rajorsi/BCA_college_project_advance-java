package servlet;
import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.sql.SQLException;

import com.oreilly.servlet.MultipartRequest;

import bean.place;
import bean.state;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@WebServlet(urlPatterns="/uploadP")
@MultipartConfig(fileSizeThreshold=1024*1024*1, //1mb
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*100)
public class Addplace extends HttpServlet {
	
	

	private static final long serialVersionUID = 1L;

	protected  void doPost(HttpServletRequest rq, HttpServletResponse rs) throws  IOException, ServletException{
		
		int state_id=Integer.parseInt(rq.getParameter("state_id"));
		int city_id=Integer.parseInt(rq.getParameter("city_id"));
		String typeofuser=rq.getParameter("typeofuser");
		
		String status="";
		if(typeofuser.equals("admin"))
		{
			status = "accepted";
		}
		else
		{
			status = "pending";
		}
		
		String place_name=rq.getParameter("place_name");
		String place_description=rq.getParameter("place_description");
		
		Part filepart=rq.getPart("place_image");
		String place_image = filepart.getSubmittedFileName();
		
		
		for(Part part: rq.getParts()) 
		{
			part.write("D:\\EG_JAVA\\AdminPanel\\src\\main\\webapp\\image\\"+place_image);
		}
		
		/*String place_image1 = "";
		for(Part part: rq.getParts()) 
		{
			place_image = extractFileName(part);
			part.write("D:\\EG_JAVA\\AdminPanel\\src\\main\\webapp\\placeImage\\"+place_image);
		}*/
		
	
	 place s=new  place(city_id,  state_id,  place_image,  place_name, place_description);
	 s.setStatus(status);
	 
	 try {
		 int resp=s.addplace();
		 RequestDispatcher rd=rq.getRequestDispatcher("addplace.jsp");
		
		if(resp==1) {
			rq.setAttribute("message","place uploaded successfully");
		}
		else 
		{
			rq.setAttribute("message"," place not uploaded ");
		}
		rd.forward(rq, rs);

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	// Method to extract filename from part
			/*private String extractFileName(Part part) {
			    String contentDisp = part.getHeader("content-disposition");
			    String[] tokens = contentDisp.split(";");
			    for (String token : tokens) {
			        if (token.trim().startsWith("place_image")) {
			            return token.substring(token.indexOf('=') + 1).trim().replace("\"", "");
			        }
			    }
			    return ""; // No filename found
			}*/

}