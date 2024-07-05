package bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DBconnection;
public class City {
	private int city_id,state_id;
	private String city_image,city_name,status;
	
	
	public City(int city_id, int state_id, String city_image, String city_name) {
		super();
		this.city_id = city_id;
		this.state_id = state_id;
		this.city_image = city_image;
		this.city_name = city_name;
	}


	public City() {
		
	}


	public City(int state_id, String city_image, String city_name) {
		super();
		this.state_id = state_id;
		this.city_image = city_image;
		this.city_name = city_name;
	}


	
	


	public int getCity_id() {
		return city_id;
	}


	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}


	public int getState_id() {
		return state_id;
	}


	public void setState_id(int state_id) {
		this.state_id = state_id;
	}


	public String getCity_image() {
		return city_image;
	}


	public void setCity_image(String city_image) {
		this.city_image = city_image;
	}


	public String getCity_name() {
		return city_name;
	}


	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	
	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int addcity() throws SQLException{
		Connection con=DBconnection.connect();
	String sql="insert into city(city_name,city_image,state_id,status) values(?,?,?,?)";
		PreparedStatement ps= con.prepareStatement(sql);
		ps.setString(1,city_name);
		ps.setString(2, city_image);
		ps.setInt(3, state_id);
		ps.setString(4, status);
		int k=ps.executeUpdate();
		
		return k;
	}
	
	public ArrayList<City> showallcitybystate() throws SQLException{
		Connection con=DBconnection.connect();
		String sq="select * from city where state_id=?";
		ArrayList<City>obj=new ArrayList<City>();
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setInt(1, state_id);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
		
			City c= new City ();
			c.setCity_id(rs.getInt("city_id"));
			c.setState_id(rs.getInt("state_id"));
			c.setCity_name(rs.getString("city_name"));
			c.setCity_image(rs.getString("city_image"));
			c.setStatus(rs.getString("status"));
			
			obj.add(c);
		}
		con.close();
		return obj;
		
		
	}


	public ArrayList<City>showallcity() throws SQLException{
		Connection con=DBconnection.connect();
		String sq="select * from city";
		ArrayList<City>obj=new ArrayList<City>();
		PreparedStatement ps=con.prepareStatement(sq);
		ResultSet rs=ps.executeQuery(sq);
		while(rs.next()) {
		
			City c= new City ();
			c.setCity_id(rs.getInt("city_id"));
			c.setState_id(rs.getInt("state_id"));
			c.setCity_name(rs.getString("city_name"));
			c.setCity_image(rs.getString("city_image"));
			c.setStatus(rs.getString("status"));
			obj.add(c);
		}
		con.close();
		return obj;
		
		
	}
	


	public int Deletecity() throws SQLException{
		

		
		Connection con=DBconnection.connect();
		
		String sq="delete from city  where city_id=?";
		PreparedStatement ps=con.prepareStatement(sq);

		ps.setInt(1,city_id);
		
		int res=ps.executeUpdate();
		con.close();
		return res;
	}

	public City byid() throws SQLException{
		
		Connection con=DBconnection.connect();
		String sq=" select * from city where city_id=?";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setInt(1, city_id);
		
		ResultSet rs=ps.executeQuery();
		City ob1=new City();
		if(rs.next())
		{
			//std_id=rs.getInt("std_id");
				
				
				
			ob1.setState_id(rs.getInt("state_id"));
			ob1.setCity_id(rs.getInt("city_id"));
				ob1.setCity_name(rs.getString("city_name"));
				
				ob1.setCity_image(rs.getString("city_image"));	
				
				
		}
		else 
		{
			ob1=null;
		}
		con.close();
		return ob1;
	}
	public int updatecity() throws SQLException{
		
		Connection con=DBconnection.connect();
		String sq="update city set city_name=?,city_image=?, state_id=? where city_id=?";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setString(1, city_name);
		ps.setString(2, city_image);
		ps.setInt(3, city_id);
		ps.setInt(4, state_id);
		int res=ps.executeUpdate();
		con.close();
		return res;
	}
	}