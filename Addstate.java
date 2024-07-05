package servlet;
import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.sql.SQLException;
import com.oreilly.servlet.MultipartRequest;

import bean.state;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(urlPatterns="/uploadstate")
@MultipartConfig(fileSizeThreshold=1024*1024*1, //1mb
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*100)

public class Addstate extends HttpServlet{
	
		private static final long serialVersionUID = 1L;

		protected  void doPost(HttpServletRequest rq, HttpServletResponse rs) throws  IOException, ServletException{
			String name=rq.getParameter("state_name");
			
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
			
			
			Part filepart=rq.getPart("state_image");
			String image=filepart.getSubmittedFileName();
			
		
		
		for(Part part: rq.getParts()) {
			part.write("D:\\EG_JAVA\\AdminPanel\\src\\main\\webapp\\image\\" +image);
		}
		 state s=new  state(image,name);
		 s.setStatus(status);
		 try {
			 int resp=s.addstate();
			 RequestDispatcher rd=rq.getRequestDispatcher("addstate.jsp");
			
			if(resp==1) {
				rq.setAttribute("message"," uploaded successfully");
			}
			else {
				rq.setAttribute("message"," not uploaded ");
			}
			rd.forward(rq, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		

	}