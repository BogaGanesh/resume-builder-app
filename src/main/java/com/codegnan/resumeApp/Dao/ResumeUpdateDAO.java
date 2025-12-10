package com.codegnan.resumeApp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.codegnan.resumeApp.DButil.dbutil;
import com.codegnan.resumeApp.model.Resume;

public class ResumeUpdateDAO {

	
	public boolean updateResume(Resume res)
	{
		String sql="update resumes set fullname=?, email=?, phone=?, skills=?, education=?, "
				+ "experience=?, projects=?, projectdescription=?, certificates=?, achievements=? where email=?";
		
		try(Connection con=dbutil.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);)
		{
			pst.setString(1, res.getName());
			pst.setString(2, res.getEmail());
			pst.setString(3, res.getPhone());
			pst.setString(4, res.getSkill());
			pst.setString(5, res.getEducation());
			pst.setString(6, res.getExperience());
			pst.setString(7, res.getProject());
			pst.setString(8, res.getProjdesc());
			pst.setString(9, res.getCertificates());
			pst.setString(10, res.getAchievements());
			
			pst.setString(11, res.getEmail());
			
			
			int num=pst.executeUpdate();
			
			if(num==1)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return false;
		
	}
	
	
	
}
