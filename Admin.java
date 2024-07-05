package bean;
import java.sql.Connection;
import java.sql.DriverManager;
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

public class Admin {

	private int admin_id;
	private String name,password,email,otp;
	
	
	public String getOtp() {
		return otp;
	}


	public void setOtp(String otp) {
		this.otp = otp;
	}


	public int getAdmin_id() {
		return admin_id;
	}


	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Admin() {
		
		
	}

	public Admin(String password, String email) {
		super();
		this.password = password;
		this.email = email;
	}
	
	public static Connection connect() throws SQLException{
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		String url="jdbc:mysql://localhost:3306/project";
		String user="root";
		String pass="";
		Connection con=DriverManager.getConnection(url,user,pass);
		return con;
		
	}


	public Admin(int admin_id, String password, String name,String email) {
		super();
		this.admin_id = admin_id;
		this.password = password;
		this.name = name;
		this.email=email;
	}


	public Admin(String name,String password,String email) {
		super();
		
		this.name = name;
		this.password = password;
		this.email=email;
	}


	public int addAdmin() throws SQLException{
		Connection con=connect();
	String sql="insert into admin(name,password,email) values(?,?,?)";
		PreparedStatement ps= con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2,password);
		
		ps.setString(3, email);
		int k=ps.executeUpdate();
		
		return k;
	}


	public ArrayList<Admin>allAdmin() throws SQLException{
		Connection con=connect();
		String sq="select * from admin";
		ArrayList<Admin>obj=new ArrayList<Admin>();
		PreparedStatement ps=con.prepareStatement(sq);
		ResultSet rs=ps.executeQuery(sq);
		while(rs.next()) {
		
			Admin pb= new Admin();
			pb.setAdmin_id(rs.getInt("admin_id"));
			pb.setName(rs.getString("name"));
			pb.setPassword(rs.getString("password"));
			pb.setEmail(rs.getString("email"));
			obj.add(pb);
		}
		con.close();
		return obj;
		
		
	}
	public int Deleteadmin() throws SQLException{
		

		
		Connection con=connect();
		
		String sq="delete from admin  where admin_id=?";
		PreparedStatement ps=con.prepareStatement(sq);

		ps.setInt(1,admin_id);
		
		int res=ps.executeUpdate();
		con.close();
		return res;
	}

	public Admin byid() throws SQLException{
		
		Connection con=connect();
		String sq=" select * from admin where admin_id=?";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setInt(1,admin_id);
		
		ResultSet rs=ps.executeQuery();
		Admin ob1=new Admin();
		if(rs.next())
		{
			//std_id=rs.getInt("std_id");
				
				
				
			ob1.setAdmin_id(rs.getInt("admin_id"));
				
				ob1.setName(rs.getString("name"));
				
				ob1.setPassword(rs.getString("password"));
				
				ob1.setEmail(rs.getString("email"));
				
				
				
		}
		else {
			ob1=null;
		}
		con.close();
		return ob1;
	}
	public int updateAdmin() throws SQLException{
		
		Connection con=connect();
		String sq="update admin set name=?,password=? ,email=? where admin_id=?";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setString(1,name);
		ps.setString(2, password);
		ps.setString(3, email);
		ps.setInt(4, admin_id);
		
		int res=ps.executeUpdate();
		con.close();
		return res;
	}
	
	public int updatePassword() throws SQLException{
		
		Connection con=DBconnection.connect();
		String sq="update admin set password=? where email=?";
		PreparedStatement ps=con.prepareStatement(sq);
	
		ps.setString(1, password);
		ps.setString(2, email);
		
		int res=ps.executeUpdate();
		con.close();
		return res;
	}
	
	public Admin checkAdminEmail() throws SQLException{
		
		Connection con = DBconnection.connect();
		String sq=" select * from admin where email=?";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setString(1,email);
		
		ResultSet rs=ps.executeQuery();
		Admin ob1=new Admin();
		if(rs.next())
		{
			//std_id=rs.getInt("std_id");
			
			ob1.setAdmin_id(rs.getInt("admin_id"));
				
			ob1.setName(rs.getString("name"));
			
			ob1.setPassword(rs.getString("password"));
			
			ob1.setEmail(rs.getString("email"));	
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
			String toMail = email;
			
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
	
	public Admin adminlogin() throws SQLException{
		
		Connection con=connect();
		String sq=" select * from admin where  email=? and password=? ";
		PreparedStatement ps=con.prepareStatement(sq);
		ps.setString(1,email);
		ps.setString(2,password);
		
		ResultSet rs=ps.executeQuery();
		Admin obj=new Admin();
		if(rs.next())
		{
				email=rs.getString("email");
				password=rs.getString("password");
				name = rs.getString("name");
				
				obj.setPassword(password);
				obj.setEmail(email);
				obj.setName(name);
				
		}
		else {
			obj=null;
		}
		con.close();
		return obj;
	}

	public static void main(String[] args) throws SQLException {
//		Admin ad = new Admin();
//		ad.setEmail("raj07092002@gmail.com");
//		Admin details = ad.checkAdminEmail();
//		
//		if(details!=null)
//		{
//			System.out.println("Mail Ok");
//			ad.setOtp("123456");
//			
//			boolean res = ad.sendOTPForPassword();
//			System.out.println(res);
//		}
//		else
//		{
//			System.out.println("Mail invalid");
//		}
	}

	}