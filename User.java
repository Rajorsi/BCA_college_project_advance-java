package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import util.DBconnection;

public class User {
	

		private int user_id;
		private String user_name,user_password,user_email,otp;
		
		public String getOtp() {
			return otp;
		}


		public void setOtp(String otp) {
			this.otp = otp;
		}


		public int getUser_id() {
			return user_id;
		}


		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}


		public String getUser_name() {
			return user_name;
		}


		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}


		public String getUser_password() {
			return user_password;
		}


		public void setUser_password(String user_password) {
			this.user_password = user_password;
		}


		public String getUser_email() {
			return user_email;
		}


		public void setUser_email(String user_email) {
			this.user_email = user_email;
		}


		public User(int user_id, String user_name, String user_password, String user_email) {
			super();
			this.user_id = user_id;
			this.user_name = user_name;
			this.user_password = user_password;
			this.user_email = user_email;
		}


		public User(String user_name, String user_password, String user_email) {
			super();
			this.user_name = user_name;
			this.user_password = user_password;
			this.user_email = user_email;
		}


		public User() {
			
		}


		public int adduser() throws SQLException{
			Connection con=DBconnection.connect();
		String sql="insert into user(user_name,user_password,user_email) values(?,?,?)";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, user_name);
			ps.setString(2,user_password);
			
			ps.setString(3,user_email);
			int k=ps.executeUpdate();
			
			return k;
		}


		public ArrayList<User>alluser() throws SQLException{
			Connection con=DBconnection.connect();
			String sq="select * from user";
			ArrayList<User>obj=new ArrayList<User>();
			PreparedStatement ps=con.prepareStatement(sq);
			ResultSet rs=ps.executeQuery(sq);
			while(rs.next()) {
			
				User pb= new User();
				pb.setUser_id(rs.getInt("user_id"));
				pb.setUser_name(rs.getString("user_name"));
				pb.setUser_password(rs.getString("user_password"));
				pb.setUser_email(rs.getString("user_email"));
				obj.add(pb);
			}
			con.close();
			return obj;
			
			
		}
		public int Deleteuser() throws SQLException{
			

			
			Connection con=DBconnection.connect();
			
			String sq="delete from user  where user_id=?";
			PreparedStatement ps=con.prepareStatement(sq);

			ps.setInt(1,user_id);
			
			int res=ps.executeUpdate();
			con.close();
			return res;
		}

		public User byid() throws SQLException{
			
			Connection con=DBconnection.connect();
			String sq=" select * from user where user_id=?";
			PreparedStatement ps=con.prepareStatement(sq);
			ps.setInt(1,user_id);
			
			ResultSet rs=ps.executeQuery();
			User ob1=new User();
			if(rs.next())
			{
				//std_id=rs.getInt("std_id");
					
					
					
				ob1.setUser_id(rs.getInt("user_id"));
					
					ob1.setUser_name(rs.getString("user_name"));
					
					ob1.setUser_password(rs.getString("user_password"));
					
					ob1.setUser_email(rs.getString("user_email"));
					
					
					
			}
			else {
				ob1=null;
			}
			con.close();
			return ob1;
		}
		public User namebyid() throws SQLException{
			
			Connection con=DBconnection.connect();
			String sq=" select user_name from user where user_email=? and user_password=?";
			PreparedStatement ps=con.prepareStatement(sq);
			ps.setString(1,user_email);
			ps.setString(2,user_password);
			
			ResultSet rs=ps.executeQuery();
			User ob1=new User();
			if(rs.next())
			{
				//std_id=rs.getInt("std_id");
				ob1.setUser_name(rs.getString("user_name"));
				ob1.setUser_password(rs.getString("user_password"));
				ob1.setUser_email(rs.getString("user_email"));
										
					
					
					
					
			}
			else {
				ob1=null;
			}
			con.close();
			return ob1;
		}

		
		public int updateuser() throws SQLException{
			
			Connection con=DBconnection.connect();
			String sq="update user set user_name=?,user_password=? ,user_email=? where user_id=?";
			PreparedStatement ps=con.prepareStatement(sq);
			ps.setString(1,user_name);
			ps.setString(2, user_password);
			ps.setString(3, user_email);
			ps.setInt(4, user_id);
			
			int res=ps.executeUpdate();
			con.close();
			return res;
		}
		
	public User login() throws SQLException{
			
			Connection con=DBconnection.connect();
			String sq=" select * from user where  user_password=? and user_email=?";
			PreparedStatement ps=con.prepareStatement(sq);
			
			ps.setString(1,user_password);
			ps.setString(2,user_email);
			ResultSet rs=ps.executeQuery();
			User obj=new User();
			if(rs.next())
			{
					
					user_password=rs.getString("user_password");
					user_email=rs.getString("user_email");
					user_name = rs.getString("user_name");
					
					obj.setUser_password(user_password);
					obj.setUser_email(user_email);
					obj.setUser_name(user_name);
					
			}
			else {
				obj=null;
			}
			con.close();
			return obj;
		}
	
	public int updatePassword() throws SQLException
	{	
		Connection con = DBconnection.connect();
		String sql = "update user set user_password=? where user_email=?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, user_password);
		ps.setString(2, user_email);
		
		int res = ps.executeUpdate();
		con.close();
		return res;
	}
	
	public User checkUserEmail() throws SQLException{
			
			Connection con = DBconnection.connect();
			String sq=" select * from user where user_email=?";
			PreparedStatement ps=con.prepareStatement(sq);
			ps.setString(1,user_email);
			System.out.println("email:" +user_email);
			ResultSet rs=ps.executeQuery();
			User ob1=new User();
			if(rs.next())
			{
				//std_id=rs.getInt("std_id");
				
				ob1.setUser_id(rs.getInt("user_id"));
					
				ob1.setUser_name(rs.getString("user_name"));
				
				ob1.setUser_password(rs.getString("user_password"));
				
				ob1.setUser_email(rs.getString("user_email"));	
			}
			else {
				ob1=null;
			}
			con.close();
			return ob1;
		}
	
	public boolean sendOTPForPassword()
	{
		boolean flag=false;
		
		try
		{
			//Your Email & Pass here
			String fromMail = "raj07092002@gmail.com";
			String pass = "vrikqakovzmsjfob";
			String toMail = user_email;
			
			//Setting up
			Properties pr = new Properties();
			pr.setProperty("mail.smtp.host", "smtp.gmail.com");
			pr.setProperty("mail.smtp.port", "587");
			pr.setProperty("mail.smtp.auth", "true");
			pr.setProperty("mail.smtp.starttls.enable", "true");
			pr.setProperty("mail.smtp.socketFactory.port", "587");
			pr.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			
			//Mail Session
			Session session = Session.getInstance(pr, new Authenticator() {
				
				@Override  //Giving access to our mail that it can send mail
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromMail,pass);
				}
				
			});
			
			//BUILDING MAIL
			Message message = new MimeMessage(session);
			
			//SETTING RECIEVER & SENDER
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
			message.setFrom(new InternetAddress(fromMail));
			
			//SETTING MESSAGE
			message.setSubject("OTP for Password Recovery.");
			message.setText("Here is Your 6-Digit Verification Code, Please dont share the Code. YOUR CODE: "+otp);
			
			Transport.send(message);
			flag=true;
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return(flag);
	}
}
		