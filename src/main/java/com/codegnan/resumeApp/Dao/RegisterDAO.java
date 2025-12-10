package com.codegnan.resumeApp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.codegnan.resumeApp.DButil.dbutil;
import com.codegnan.resumeApp.model.register;

public class RegisterDAO {

	
	public boolean addUser(register reg)
	{
		String sql="insert into users(username, password, email) values(?,?,?)";
		
		try(Connection con=dbutil.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);)
		{
			pst.setString(1, reg.getName());
			pst.setString(2, reg.getPassword());
			pst.setString(3, reg.getEmail());
			int rs=pst.executeUpdate();
			
			if(rs==1)
			{
				return true;
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return false;
	}
	
	
}
