package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;

import bean.City;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/allcities")
public class GetAllCityBystate extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int stateid = Integer.parseInt(req.getParameter("stateid"));
		
		City city = new City();
		city.setState_id(stateid);
		try {
			ArrayList<City> allcity = city.showallcitybystate();
			
			Gson gson = new GsonBuilder().create();
			JsonArray myCustomArray = gson.toJsonTree(allcity).getAsJsonArray();
			String result = myCustomArray.toString();
			
			PrintWriter out = resp.getWriter();
			out.println(result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
