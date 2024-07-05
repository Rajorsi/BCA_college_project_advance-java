package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
public static Connection connect() throws SQLException{
	DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
	String url="jdbc:mysql://localhost:3306/project";
	String user="root";
	String pass="";
	Connection con=DriverManager.getConnection(url,user,pass);
	return con;
	
}
}



