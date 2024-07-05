package servlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.sql.SQLException;

import com.oreilly.servlet.MultipartRequest;

import bean.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@SuppressWarnings("unused")
@WebServlet(urlPatterns="/adduser")

public class Adduser extends HttpServlet {
				
		private static final long serialVersionUID = 1L;

		protected  void doPost(HttpServletRequest rq, HttpServletResponse rs) throws  IOException, ServletException{
			String user_name=rq.getParameter("user_name");
			
			String user_email=rq.getParameter("user_email");
			String user_password=rq.getParameter("user_password");
		
	
		 User u=new User(user_name,user_password,user_email);
		 try {
			 int resp=u.adduser();
			 RequestDispatcher rd=rq.getRequestDispatcher("login.jsp");
			
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