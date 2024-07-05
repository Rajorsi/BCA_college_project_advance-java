package servlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.sql.SQLException;

import com.oreilly.servlet.MultipartRequest;

import bean.Admin;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@SuppressWarnings("unused")
@WebServlet(urlPatterns="/addadmin")

public class add_Admin extends HttpServlet {
				
		private static final long serialVersionUID = 1L;

		protected  void doPost(HttpServletRequest rq, HttpServletResponse rs) throws  IOException, ServletException{
		String name=rq.getParameter("name");
		
		String email=rq.getParameter("email");
		String password=rq.getParameter("password");
	
	
		 Admin u=new Admin(name,password,email);
		 try {
			 int resp=u.addAdmin();
			 RequestDispatcher rd=rq.getRequestDispatcher("adminLogin.jsp");
			
			if(resp==1) {
				rq.setAttribute("message"," added successfully");
			}
			else {
				rq.setAttribute("message"," error try again ");
			}
			rd.forward(rq, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
}