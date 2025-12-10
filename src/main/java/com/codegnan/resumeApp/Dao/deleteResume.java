package com.codegnan.resumeApp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.codegnan.resumeApp.DButil.dbutil;

public class deleteResume {

	public boolean deleteResume(String email) {
	    String sql = "DELETE FROM resumes WHERE email = ?";
	    
	    try (Connection con = dbutil.getConnection();
	         PreparedStatement pst = con.prepareStatement(sql)) {
	        
	        pst.setString(1, email);
	        int rows = pst.executeUpdate();
	        
	        if (rows > 0) {
	            System.out.println("Resume deleted successfully for: " + email);
	            return true;
	        }
	    } 
	    catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return false;
	}

	
	
}
