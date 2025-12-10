package com.codegnan.resumeApp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codegnan.resumeApp.Dao.ResumeUpdateDAO;
import com.codegnan.resumeApp.Dao.ResumeViewDAO;
import com.codegnan.resumeApp.model.Resume;


@WebServlet("/update")
public class UpdateResumeServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		HttpSession session=req.getSession(false);
		
		String email=(String) session.getAttribute("email");
		
		if(email==null)
		{
			res.sendRedirect("login.jsp");
			return;
		}
		
		
		ResumeViewDAO rsv=new ResumeViewDAO();
		List<Resume> list=rsv.viewResume(email);
		
		
		req.setAttribute("details", list);
		RequestDispatcher rd=req.getRequestDispatcher("update.jsp");
		rd.forward(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		
		
		HttpSession session=req.getSession(false);
		
		String oldemail=(String) session.getAttribute("email");
		
		if(!email.equals(oldemail))
		{
			res.sendRedirect("register.jsp");
			return;
		}
		
		
		String[] skills=req.getParameterValues("skills");
		String skill=String.join(",", skills);
		
		String college=req.getParameter("college");
		String degree=req.getParameter("degree");
		String year=req.getParameter("year");
		String education=college+", "+degree+", "+year;
		
		String company=req.getParameter("company");
		String duration=req.getParameter("duration");
		String experience=company+", "+duration;
		
		String project=req.getParameter("project");
		
		String projectDesc = req.getParameter("projectDesc");
        String certificates = req.getParameter("certificates");
        String achievements = req.getParameter("achievements");
		
		 Resume resume = new Resume(
	                name, email, phone, skill, education, experience, project,
	                projectDesc, certificates, achievements
	        );		
		ResumeUpdateDAO update=new ResumeUpdateDAO();
		
		boolean value=update.updateResume(resume);
		
		if(value)
		{
			
			session.setAttribute("Object", resume);
			res.sendRedirect("viewresume");
		}
		else
		{
			req.setAttribute("msge", "Create Resume to view");
			req.getRequestDispatcher("update.jsp").forward(req, res);
			
		}
	}


}
