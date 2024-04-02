package car_rental_system_project.dao;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import car_rental_system_project.dto.User;


public class UserCrud {
      
	public Connection getConnection() throws Exception {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_system_project", "root", "root");
		
		return connection;
	}
	public int registerUser(User user)throws Exception {
		
		Connection connection = getConnection();
		
	PreparedStatement statement = connection.prepareStatement("INSERT INTO USER (NAME,EMAIL,PHONE,ADDRESS,PASSWORD,ROLE) VALUES(?,?,?,?,?,?)");
	  statement.setString(1,user.getName());
	  statement.setString(2, user.getEmail());
	  statement.setString(3,user.getPhone());
	  statement.setString(4, user.getAddress());
	  statement.setString(5, user.getPassword());
	  statement.setString(6,user.getRole());
	  
	  int ct = statement.executeUpdate();
	  
	  return ct;
	}
	public User login(String email) throws Exception {
		
		 Connection connection = getConnection();
		 PreparedStatement statement = connection.prepareStatement("SELECT * FROM USER WHERE EMAIL=?");
		 statement.setString(1, email);
		 
		 ResultSet rSet = statement.executeQuery();
		 
		 User user = new User();
		 
		if (rSet.next()) {
			
			user.setPassword(rSet.getString("password"));
			user.setRole(rSet.getString("role"));
			connection.close();
			return user;
		}
		connection.close();
		 return null;
	} 
	public int updatePassword(String email,String newpassword) throws Exception {
		
		int count =0;
		
		Connection connection = getConnection();
		
		PreparedStatement statement = connection.prepareStatement("SELECT * FROM USER WHERE EMAIL=?");
		statement.setString(1, email);
		
		ResultSet set = statement.executeQuery();
		
		if (set.next()) {
			
			 PreparedStatement statement2 = connection.prepareStatement("UPDATE USER SET PASSWORD=? WHERE EMAIL=?");
			 statement2.setString(1, newpassword);
			 statement2.setString(2, email);
			 
			 count = statement2.executeUpdate();
			 
			 connection.close();
			 return count;
		}
		connection.close();
		return count;
	}
	public int updateProfile(User user,String email) throws Exception {
		
		Connection connection = getConnection();
		
		PreparedStatement statement = connection.prepareStatement("UPDATE USER SET NAME=?,PHONE=?,ADDRESS=?,PASSWORD=?,ROLE=?,EMAIL=? WHERE EMAIL=?");
		statement.setString(1, user.getName());
		statement.setString(2, user.getPhone());
		statement.setString(3, user.getAddress());
		statement.setString(4, user.getPassword());
		statement.setString(5, user.getRole());
		statement.setString(6, user.getEmail());
		statement.setString(7, email);
		
		int count = statement.executeUpdate();
		
		if (count!=0) {
			
			connection.close();
			return count;
		}
		connection.close();
		return 0;
	}
}
