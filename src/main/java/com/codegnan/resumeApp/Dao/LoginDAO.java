package com.codegnan.resumeApp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.codegnan.resumeApp.DButil.dbutil;
import com.codegnan.resumeApp.model.register;

public class LoginDAO {

	public boolean checkUser(register reg)
	{
		String sql="select email, password from users where email=? and password=?";
		
		try(Connection con=dbutil.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);)
		{
			pst.setString(1, reg.getEmail());
			pst.setString(2, reg.getPassword());
			ResultSet rs=pst.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}
	
}
