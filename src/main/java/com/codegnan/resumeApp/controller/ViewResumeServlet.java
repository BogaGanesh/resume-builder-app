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

import com.codegnan.resumeApp.Dao.ResumeViewDAO;
import com.codegnan.resumeApp.model.Resume;

@WebServlet("/viewresume")
public class ViewResumeServlet extends  HttpServlet{

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		HttpSession session=req.getSession(false);
		
		if(session.getAttribute("email")==null)
		{
			res.sendRedirect("login.jsp");
			return;
		}
		
		String email=(String) session.getAttribute("email");
		
		 
		ResumeViewDAO rsv=new ResumeViewDAO();
		List<Resume> list=rsv.viewResume(email);
		
		
		req.setAttribute("details", list);
		RequestDispatcher rd=req.getRequestDispatcher("view.jsp");
		rd.forward(req, res);
		
	}
}
