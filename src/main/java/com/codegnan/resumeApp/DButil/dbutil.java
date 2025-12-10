package com.codegnan.resumeApp.DButil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbutil {

	private static String URL="jdbc:mysql://localhost/resume_app";
	private static String USER="root";
	private static String PASSWORD="Ganesh08p@";
	
	public static Connection getConnection()
	{
		Connection con=null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
	
}
