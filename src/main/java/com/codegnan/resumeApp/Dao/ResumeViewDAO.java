package com.codegnan.resumeApp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.codegnan.resumeApp.DButil.dbutil;
import com.codegnan.resumeApp.model.Resume;

public class ResumeViewDAO {
	
	public List viewResume(String email)
	{
		ArrayList list=new ArrayList<>();
		
		String sql="select * from resumes where email=?";
		
		try(Connection con=dbutil.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);)
		{
			pst.setString(1, email);
			
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				Resume resume=new Resume();
				
				resume.setName(rs.getString("fullname"));
				resume.setEmail(rs.getString("email"));
				resume.setPhone(rs.getString("phone"));
				resume.setSkill(rs.getString("skills"));
				resume.setEducation(rs.getString("education"));
				resume.setExperience(rs.getString("experience"));
				resume.setProject(rs.getString("projects"));
				resume.setProjdesc(rs.getString("projectdescription"));
				resume.setCertificates(rs.getString("certificates"));
				resume.setAchievements(rs.getString("achievements"));
				
				list.add(resume);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean checkResume(String email)
	{
		
		String sql="select email from resumes where email=?";
		
		try(Connection con=dbutil.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);)
		{
			pst.setString(1, email);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
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
