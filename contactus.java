package bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DBconnection;

public class contactus {
	

		private int id;
		private String name,email,message;
	
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}




		public void setName(String name) {
			this.name = name;
		}




		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

		public contactus(int id, String name, String email, String message) {
			super();
			this.id = id;
			this.name = name;
			this.email = email;
			this.message = message;
		}

		public contactus() {
			super();
			// TODO Auto-generated constructor stub
		}

		public contactus(String name, String email, String message) {
			super();
			this.name = name;
			this.email = email;
			this.message = message;
		}

		public int adddata() throws SQLException{
			Connection con=DBconnection.connect();
			String sql="insert into contactus(name,email,message) values(?,?,?)";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2,email);
			ps.setString(3, message);
			int k=ps.executeUpdate();
			
			return k;
		}
		public ArrayList<contactus>allcommand() throws SQLException{
			Connection con=DBconnection.connect();
			String sq="select * from review";
			ArrayList<contactus>obj=new ArrayList<contactus>();
			PreparedStatement ps=con.prepareStatement(sq);
			ResultSet rs=ps.executeQuery(sq);
			while(rs.next()) {
			
				contactus pb= new contactus();
				//pb.setId(rs.getInt("id"));
				pb.setName(rs.getString("name"));
				pb.setEmail(rs.getString("email"));
				pb.setMessage(rs.getString("message"));
				obj.add(pb);
			}
			con.close();
			return obj;
			
			
		}
		public int Delete() throws SQLException{
			

			
			Connection con=DBconnection.connect();
			
			String sq="delete from review  where id=?";
			PreparedStatement ps=con.prepareStatement(sq);

			ps.setInt(1,id);
			
			int res=ps.executeUpdate();
			con.close();
			return res;
		}
}