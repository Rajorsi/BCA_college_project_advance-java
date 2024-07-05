package bean;
	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;

import util.DBconnection;

	public class place 
	{
	private int place_id,city_id,state_id;
	private String place_image,place_name,place_description,status;

	
	public place( int city_id, int state_id, int place_id, String place_image, String place_name,String place_description) {
		
		this.place_id = place_id;
		this.city_id = city_id;
		this.state_id = state_id;
		this.place_image = place_image;
		this.place_name = place_name;
		this.place_description = place_description;
	}
	
	public place(int city_id, int state_id, String place_image, String place_name, String place_description) {
		super();
		this.city_id = city_id;
		this.state_id = state_id;
		this.place_image = place_image;
		this.place_name = place_name;
		this.place_description = place_description;
	}

	public place(int state_id, String place_image, String place_name, String place_description) {
		super();
		this.state_id = state_id;
		this.place_image = place_image;
		this.place_name = place_name;
		this.place_description = place_description;
	}

	public place() {
		super();
	}
	

	
	public int getPlace_id() {
		return place_id;
	}

	public void setPlace_id(int place_id) {
		this.place_id = place_id;
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

	public String getPlace_image() {
		return place_image;
	}

	public void setPlace_image(String place_image) {
		this.place_image = place_image;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getPlace_description() {
		return place_description;
	}

	public void setPlace_description(String place_description) {
		this.place_description = place_description;
	}
	
	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}

	public int addplace() throws SQLException{
		Connection con=DBconnection.connect();
	String sql="insert into place(city_id,state_id,place_image,place_name,place_description,status)values(?,?,?,?,?,?)";
		PreparedStatement ps= con.prepareStatement(sql);
		ps.setInt(1,city_id);
		ps.setInt(2,state_id);
		ps.setString(3,place_image);
		ps.setString(4, place_name);
		ps.setString(5, place_description);
		ps.setString(6, status);
		
		int k=ps.executeUpdate();
		
		return k;
	}
	
	public ArrayList<place> showallplaceById() throws SQLException{
		Connection con=DBconnection.connect();
		String sq="select * from place where state_id=? and city_id=?";
		ArrayList<place>obj=new ArrayList<place>();
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setInt(1, state_id);
		ps.setInt(2, city_id);
		ResultSet rs=ps.executeQuery();		
		while(rs.next()) {
		
			place pb= new place();
			pb.setPlace_id(rs.getInt("place_id"));
			pb.setState_id(rs.getInt("state_id"));
			pb.setCity_id(rs.getInt("city_id"));
			pb.setPlace_name(rs.getString("place_name"));
			pb.setPlace_description(rs.getString("place_description"));
			pb.setPlace_image(rs.getString("place_image"));
			pb.setStatus(rs.getString("status"));
			obj.add(pb);
		}
		con.close();
		return obj;
		//correct
		
	}


	public ArrayList<place> showallplace() throws SQLException{
		Connection con=DBconnection.connect();
		String sq="select * from place";
		ArrayList<place>obj=new ArrayList<place>();
		PreparedStatement ps=con.prepareStatement(sq);		
		ResultSet rs=ps.executeQuery();		
		while(rs.next()) {
		
			place pb= new place();
			pb.setPlace_id(rs.getInt("place_id"));
			pb.setState_id(rs.getInt("state_id"));
			pb.setCity_id(rs.getInt("city_id"));
			pb.setPlace_name(rs.getString("place_name"));
			pb.setPlace_description(rs.getString("place_description"));
			pb.setPlace_image(rs.getString("place_image"));
			pb.setStatus(rs.getString("status"));
			obj.add(pb);
		}
		con.close();
		return obj;
		//correct
		
	}
	public int Deleteplace() throws SQLException{
		

		
		Connection con=DBconnection.connect();
		
		String sq="delete from place  where place_id=?";
		PreparedStatement ps=con.prepareStatement(sq);

		ps.setInt(1,place_id);
		
		int res=ps.executeUpdate();
		con.close();
		return res;
	}

	public place byid() throws SQLException{
		
		Connection con=DBconnection.connect();
		String sq=" select * from place where place_id=?";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setInt(1, place_id);
		
		ResultSet rs=ps.executeQuery();
		place ob1=new place();
		if(rs.next())
		{
			//std_id=rs.getInt("std_id");
			ob1.setPlace_id(rs.getInt("place_id"));
				
				ob1.setPlace_name(rs.getString("place_name"));
				
				ob1.setPlace_image(rs.getString("place_image"));
				
				ob1.setPlace_description(rs.getString("place_description"));
	
		}
		else {
			ob1=null;
		}
		con.close();
		return ob1;
	}
	public int updateplace() throws SQLException{
		
		Connection con=DBconnection.connect();
		String sq="update place set city_id=?,state_id=?,place_name=?,place_image=? ,place_description=? where place_id=?";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setInt(1, city_id);
		ps.setInt(2, state_id);
		ps.setString(3, place_name);
		ps.setString(4, place_image);
		ps.setString(5, place_description);
		ps.setInt(6, place_id);
		int res=ps.executeUpdate();
		con.close();
		return res;
	}
	}