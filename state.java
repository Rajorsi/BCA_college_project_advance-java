package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DBconnection;

public class state 
{
private int state_id;
private String state_image,state_name,status;
public state(String state_image, String state_name) {
	super();
	this.state_image = state_image;
	this.state_name = state_name;
}
public state() {
	
}

public state(int state_id, String state_image, String state_name) {
	super();
	this.state_id = state_id;
	this.state_image = state_image;
	this.state_name = state_name;
}
public int getState_id() {
	return state_id;
}
public void setState_id(int state_id) {
	this.state_id = state_id;
}
public String getState_image() {
	return state_image;
}
public void setState_image(String state_image) {
	this.state_image = state_image;
}
public String getState_name() {
	return state_name;
}
public void setState_name(String state_name) {
	this.state_name = state_name;
}

public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public int addstate() throws SQLException{
	Connection con=DBconnection.connect();
	String sql="insert into state(state_name,state_image,status) values(?,?,?)";
	PreparedStatement ps= con.prepareStatement(sql);
	ps.setString(1, state_name);
	ps.setString(2, state_image);
	ps.setString(3, status);
	
	int k=ps.executeUpdate();
	
	return k;
}


public ArrayList<state>showallstate() throws SQLException{
	Connection con=DBconnection.connect();
	String sq="select * from state";
	ArrayList<state>obj=new ArrayList<state>();
	PreparedStatement ps=con.prepareStatement(sq);
	ResultSet rs=ps.executeQuery(sq);
	while(rs.next()) {
	
		state pb= new state();
		pb.setState_id(rs.getInt("state_id"));
		pb.setState_name(rs.getString("state_name"));
		pb.setState_image(rs.getString("state_image"));
		pb.setStatus(rs.getString("status"));
		obj.add(pb);
	}
	con.close();
	return obj;
	
	
}
public int Deletestate() throws SQLException{
	

	
	Connection con=DBconnection.connect();
	
	String sq="delete from state  where state_id=?";
	PreparedStatement ps=con.prepareStatement(sq);

	ps.setInt(1,state_id);
	
	int res=ps.executeUpdate();
	con.close();
	return res;
}

public state byid() throws SQLException{
	
	Connection con=DBconnection.connect();
	String sq=" select * from state where state_id=?";
	PreparedStatement ps=con.prepareStatement(sq);
	ps.setInt(1, state_id);
	
	ResultSet rs=ps.executeQuery();
	state ob1=new state();
	if(rs.next())
	{
		//std_id=rs.getInt("std_id");
		
			ob1.setState_id(rs.getInt("state_id"));
			
			ob1.setState_name(rs.getString("state_name"));
			
			ob1.setState_image(rs.getString("state_image"));
		
	}
	else {
		ob1=null;
	}
	con.close();
	return ob1;
}
public int updatestate() throws SQLException
{
	
	Connection con=DBconnection.connect();
	String sq="update state set state_name=?,state_image=? where state_id=?";
	PreparedStatement ps=con.prepareStatement(sq);
	ps.setString(1, state_name);
	ps.setString(2, state_image);

	ps.setInt(3, state_id);
	int res=ps.executeUpdate();
	con.close();
	return res;
}
}